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
                print("Invalid input. Retry?\ny/n")
                switch readLine()! {
                case "y":
                    continue
                default:
                    print("See you!")
                    exit(0)
                }
            } else {
                break
            }
        }while(mainString != "")
        self.string = mainString!
    }
    
    public init(_ pathToFile: String) {
        let string = String(data: FileManager.default.contents(atPath: pathToFile)!, encoding: .utf8)!
        self.string = string
    }
    var string: String
    private typealias PassDict = [String : ItemStruct]
    
    struct ItemStruct {
        var Domain: String
        var Title: String
        var Login: String
        var Password: String
        var ReadableName: String
        var TOTP: String?
    }
    
    private func createReadableName(_ S: String) -> String {
        let exclusions = ["www", "com", "ru", "org", "net", "auth", "social", "login", "gg", "store", "connect", "accounts", "account", "esia"]
        var retval = S
        exclusions.forEach { exclusion in
            retval = retval.replacingOccurrences(of: exclusion, with: "")
        }
        if retval.last == "." {
            retval = String(retval.dropLast())
        }
        if retval.first == "." {
            retval = String(retval.dropFirst())
        }
        return String(retval.first!).capitalized + String(retval.dropFirst())
    }
    
    private func generatePasswordStruct() -> PassDict {
        let PrepArray = string.split(separator: "\n")
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
        return PasswordArray
    }
    
    private func generateTOTPConfig(_ s: PassDict) {
        var totpCONFIGString: String {
            get {
                var retval: String = ""
                s.forEach { el in
                    if el.value.TOTP != nil {
                        retval.append("""
    TokenName: \(el.value.ReadableName)
    TokenSecret: \(el.value.TOTP!)
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
        
        FileManager.default.createFile(atPath: URL.homeDirectory.path(percentEncoded: false) + "/Downloads/totp.conf", contents: String(fileData + "\n" + totpCONFIGString).data(using: .utf8))

    }
    
    private func generatePasswordsWithTOTP(_ s: PassDict) {
        try? FileManager.default.createDirectory(atPath: "/Users/chieff/Downloads/Passwords With TOTP", withIntermediateDirectories: false)
        s.forEach { el in
            if el.value.TOTP != nil {
                let contents: Data = String("""
    Title: \(el.value.Title)
    Login: \(el.value.Login)
    Password: \(el.value.Password)
    TOTP: \(el.value.TOTP!)
    """).data(using: .utf8)!
                FileManager.default.createFile(atPath: URL.homeDirectory.path(percentEncoded: false) + "/Downloads/Passwords With TOTP/\(el.value.ReadableName).txt", contents: contents)
            }
        }
    }
    
    private func generatePasswordsWithoutTOTP(_ s: PassDict) {
        try? FileManager.default.createDirectory(atPath: URL.homeDirectory.path(percentEncoded: false) + "/Downloads/Passwords Without TOTP", withIntermediateDirectories: false)
        s.forEach { el in
            if el.value.TOTP == nil {
                let contents: Data = String("""
    Title: \(el.value.Title)
    Login: \(el.value.Login)
    Password: \(el.value.Password)
    """).data(using: .utf8)!
                FileManager.default.createFile(atPath: URL.homeDirectory.path(percentEncoded: false) + "/Downloads/Passwords Without TOTP/\(el.value.ReadableName).txt", contents: contents)
            }
        }
    }
    
    private func generateAllPasswordsFile(_ s: PassDict) {
        var allPasswordsData: Data {
            get {
                var retval = ""
                s.forEach { el in
                    retval += """
Domain: \(el.value.Domain)
Title: \(el.value.Title)
Login: \(el.value.Login)
Password: \(el.value.Password)
\(el.value.TOTP != nil ? "TOTP Secret: \(el.value.TOTP!)" : "")


"""
                }
                return retval.data(using: .utf8)!
            }
        }
        FileManager.default.createFile(atPath: URL.homeDirectory.path(percentEncoded: false) + "/Downloads/Passwords.txt", contents: allPasswordsData)
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
        let textToCheck = string
        var charCounter: [Character : Int] = ["!" : 0 , ";" : 0, "~" : 0, ":" : 0, "\"" : 0]
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
