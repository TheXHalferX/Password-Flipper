//
//  Passworder.swift
//  passworder
//
//  Created by Олег Сазонов on 06.01.2023.
//

import Foundation

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
    
    let savePath = URL.homeDirectory.path(percentEncoded: false) + "/Downloads/Passwords/"
    
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
        
        let fileData: String = "Filetype: Flipper TOTP plugin config file\nVersion: 2"
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
