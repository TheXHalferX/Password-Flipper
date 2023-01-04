//
//  main.swift
//  splitter
//
//  Created by Олег Сазонов on 03.01.2023.
//

import Foundation

public enum generate {
    case totpConf
    case passwordsWithTOTP
    case passwordsWithoutTOTP
    case allPasswordsFile
    case everything
}

public class Passworder {
    public init() {
        print("Enter full path to file:\n>\(URL.homeDirectory.path(percentEncoded: false))")
        let inHomeFolderString = readLine()!
        var mainString: String? = ""
        repeat {
            mainString = String(data: FileManager.default.contents(atPath: URL.homeDirectory.path(percentEncoded: false) + "/\(inHomeFolderString)") ?? Data(), encoding: .utf8)
            if mainString == "" {
                print("Invalid input.")
                exit(0)
            } else {
                break
            }
        }while(mainString != "")
        self.FileContents = mainString!
        self.FilePath = inHomeFolderString
    }
    
    public init(_ pathToFile: String) {
        let string = String(data: FileManager.default.contents(atPath: pathToFile)!, encoding: .utf8)!
        self.FilePath = String(pathToFile.split(separator: ".").last!)
        self.FileContents = string
    }
    var FilePath: String
    var FileContents: String
    private typealias PassDict = [String : ItemStruct]
    
    let savePath = URL.homeDirectory.path(percentEncoded: false) + "/Downloads/Passwords/"

    struct ItemStruct: Comparable {
        static func < (lhs: Passworder.ItemStruct, rhs: Passworder.ItemStruct) -> Bool {
            lhs.ReadableName < rhs.ReadableName
        }
        static func > (lhs: Passworder.ItemStruct, rhs: Passworder.ItemStruct) -> Bool {
            lhs.ReadableName > rhs.ReadableName
        }
        static func == (lhs: Passworder.ItemStruct, rhs: Passworder.ItemStruct) -> Bool {
            lhs.ReadableName == rhs.ReadableName
        }

        var Domain: String
        var Title: String
        var Login: String
        var Password: String
        var ReadableName: String
        var TOTP: String?
    }
    
    let exclusions = ["www", "users", "nz", "idp", "hub", "passport", "oauth", "app", "signin", "lk", "com", "ru-ru", "ru", "org", "net", "auth", "social", "login", "gg", "store", "connect", "accounts", "account", "esia", "m", "business"]
    
    private func createReadableName(_ S: String) -> String {
        var retval = S
        exclusions.forEach { exclusion in
            let prep = retval.split(separator: ".")
            prep.forEach { el in
                if el == exclusion {
                    retval = retval.replacingOccurrences(of: el, with: "")
                } else if el == "live" {
                    retval = retval.replacingOccurrences(of: el, with: "Microsoft")
                }
            }
        }
        if retval.last == "." {
            retval = String(retval.dropLast())
        }
        if retval.first == "." {
            retval = String(retval.dropFirst())
        }
        return String(retval.first!).capitalized + String(retval.dropFirst())
    }
    
    private func PrepCSV(_ csv: String) -> String {
        let CSVByLines = csv.split(separator: "\n").dropFirst()
        let separator = checkForDelimiter()
        var retval = String()
        
        var counter = 0
        
        CSVByLines.forEach { line in
            line.split(separator: separator).forEach { element in
                if line.count == 6 {
                    if counter != 1 {
                        retval += element.description + separator.description
                    }
                    if counter != 4 {
                        retval += element.description + separator.description
                    }
                } else {
                    if counter != 1 {
                        retval += element.description + separator.description
                    }
                }
                counter += 1
            }
            retval = retval.dropLast().description + "\n"
            counter = 0
        }

        return retval
    }
    
    private func generatePasswordStruct() -> PassDict {
        func removeDuplicates(_ editingArray: PassDict) -> PassDict {
            var TOTP = PassDict()
            var nonTOTP = PassDict()

            editingArray.forEach { element in
                if !TOTP.values.contains(where: { el in
                    el.TOTP != nil && el.TOTP == element.value.TOTP
                }) {
                    TOTP[element.key] = element.value
                }
            }
            
            editingArray.forEach { element in
                if element.value.TOTP == nil {
                    nonTOTP[element.key] = element.value
                }
            }
            
            var retval = PassDict()
            
            TOTP.forEach { element in
                retval[element.key] = element.value
            }
            
            nonTOTP.forEach { element in
                retval[element.key] = element.value
            }
            
            return retval
        }
        
        var prepString = String()

        if FilePath.split(separator: ".").last?.description == "csv" {
            prepString = PrepCSV(FileContents)
        } else {
            prepString = FileContents
        }
        let PrepArray = prepString.split(separator: "\n")
        var PasswordArray = PassDict()
                
        PrepArray.forEach { element in
            let items = element.split(separator: checkForDelimiter())
            let title: String? = items.first?.description
            let domain: String? = title?.split(separator: " ").first?.description
            let login: String? = items.dropFirst().first?.description
            let password: String? = items.dropFirst(2).first?.description
            var totp: String? = nil
            if items.count > 3 {
                let totpPrep = String(items[3])
                if totpPrep.split(separator: ":")[0] == "otpauth" {
                    totp = totpPrep.split(separator: "secret=").last!.description
                    totp = totp?.split(separator: "&")[0].description
                }
            }
            if login != nil && password != nil {
                PasswordArray[title!] = .init(Domain: domain!, Title: title!, Login: login!, Password: password!, ReadableName: createReadableName(domain!), TOTP: totp)
            }
        }
        
        let finalArray = removeDuplicates(PasswordArray)
        let sortedArray = PassDict(uniqueKeysWithValues: finalArray.sorted(by: { lhs, rhs in
            return lhs.value.ReadableName < rhs.value.ReadableName
        }))
        return sortedArray
    }
    
    private func generateTOTPConfig(_ s: PassDict) {
        var totpCONFIGString: String {
            get {
                var retval: String = ""
                s.values.sorted(by: <).forEach { el in
                    if el.TOTP != nil {
                        retval.append("""
    
    TokenName: \(el.ReadableName.uppercased())
    TokenSecret: \(el.TOTP!)
    TokenAlgo: sha1
    TokenDigits: 6
    
    
    """)
                    }
                }
                return retval
            }
        }
        
        let fileData: String = """
    Filetype: Flipper TOTP plugin config file
    Version: 2
    BaseIV: 03 FC 99 92 42 45 AD 85 5F 00 47 65 19 C7 42 CD
    Crypto: 20 EA 2A 59 24 54 C7 AF 8D 4C 65 2E A1 AC 8C 59
    Timezone: 3.000000
    PinIsSet: true
    NotificationMethod: 3
    """
        try? FileManager.default.createDirectory(at: URL(filePath: savePath), withIntermediateDirectories: true)
        FileManager.default.createFile(atPath: savePath + "totp.conf", contents: String(fileData + "\n" + totpCONFIGString).data(using: .utf8))

    }
    
    private func generatePasswordsWithTOTP(_ s: PassDict) {
        try? FileManager.default.createDirectory(atPath: savePath + "Passwords With TOTP", withIntermediateDirectories: true)
        s.values.sorted(by: <).forEach { el in
            if el.TOTP != nil {
                let contents: Data = String("""
    Title: \(el.Title)
    Login: \(el.Login)
    Password: \(el.Password)
    TOTP: \(el.TOTP!)
    """).data(using: .utf8)!
                FileManager.default.createFile(atPath: savePath + "Passwords With TOTP/\(el.ReadableName).txt", contents: contents)
            }
        }
    }
    
    private func generatePasswordsWithoutTOTP(_ s: PassDict) {
        try? FileManager.default.createDirectory(atPath: savePath + "Passwords Without TOTP", withIntermediateDirectories: true)
        s.values.sorted(by: <).forEach { el in
            if el.TOTP == nil {
                let contents: Data = String("""
    Title: \(el.Title)
    Login: \(el.Login)
    Password: \(el.Password)
    """).data(using: .utf8)!
                FileManager.default.createFile(atPath: savePath + "Passwords Without TOTP/\(el.ReadableName).txt", contents: contents)
            }
        }
    }
    
    private func generateAllPasswordsFile(_ s: PassDict) {
        var allPasswordsData: Data {
            get {
                var retval = ""
                s.values.sorted(by: <).forEach { el in
                    retval += """
Human name: \(el.ReadableName)
Domain: \(el.Domain)
Title: \(el.Title)
Login: \(el.Login)
Password: \(el.Password)
\(el.TOTP != nil ? "TOTP Secret: \(el.TOTP!)" : "")


"""
                }
                return retval.data(using: .utf8)!
            }
        }
        FileManager.default.createFile(atPath: savePath + "Passwords.txt", contents: allPasswordsData)
    }
    
    func generateFiles(_ type: generate) {
        let ItemsArray = generatePasswordStruct()
        
        switch type {
        case .totpConf:
            generateTOTPConfig(ItemsArray)
        case .passwordsWithTOTP:
            generatePasswordsWithTOTP(ItemsArray)
        case .passwordsWithoutTOTP:
            generatePasswordsWithoutTOTP(ItemsArray)
        case .allPasswordsFile:
            generateAllPasswordsFile(ItemsArray)
        case .everything:
            generateTOTPConfig(ItemsArray)
            generatePasswordsWithTOTP(ItemsArray)
            generatePasswordsWithoutTOTP(ItemsArray)
            generateAllPasswordsFile(ItemsArray)
        }
    }
    
    private func checkForDelimiter() -> Character {
        let textToCheck = FileContents
        var charCounter: [Character : Int] = ["!" : 0 , ";" : 0, "~" : 0, ":" : 0, "\"" : 0, "," : 0]
        textToCheck.forEach { c in
            charCounter.forEach { v in
                if c == v.key {
                    charCounter[c]! += 1
                }
            }
        }
        var retval: Character = "."
        var oldCounter = 0
        charCounter.forEach { c in
            if c.value > oldCounter {
                retval = c.key
                oldCounter = c.value
            }
        }
        return retval
    }
}


func mainRunner(_ pathToFile: String?, _ recursion: Bool) {
    let helpLine = """
    What do you want me to generate?
        > totp.conf: t
        > Only passwords WITH TOTP: w
        > Only passwords WITHOUT TOTP: wo
        > All-passwords file: f
        > Everything above: e
    > Quit: q
    """
    if !recursion {
        print("Hi!")
    } else {
        print("Hello again!")
    }
    print(helpLine)
    var cont = false
    var type: generate? = nil
    repeat {
        let r = readLine()!
        switch r {
        case "t":
            type = .totpConf
            cont.toggle()
            break
        case "w":
            type = .passwordsWithTOTP
            cont.toggle()
            break
        case "wo":
            type = .passwordsWithoutTOTP
            cont.toggle()
            break
        case "f":
            type = .allPasswordsFile
            cont.toggle()
            break
        case "e":
            type = .everything
            cont.toggle()
            break
        case "q":
            print("See you!")
            exit(0)
        default:
            print("\n")
            print("Invalid input!")
            print("\n")
            print(helpLine)
            continue
        }
    } while(!cont)
    if pathToFile != nil {
        Passworder(pathToFile!).generateFiles(type!)
    } else {
        Passworder().generateFiles(type!)
    }
    print("All done! Wanna process another file?\ny/N")
    switch readLine()!.lowercased() {
    case "y":
        mainRunner(pathToFile, true)
    default:
        print("See you!")
        exit(0)
    }
}

func main(_ s: String?) {
    mainRunner(s, false)
}

main(CommandLine.arguments.dropFirst().first)
