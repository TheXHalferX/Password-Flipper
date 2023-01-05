//
//  Enums and Addons.swift
//  passworder
//
//  Created by Олег Сазонов on 06.01.2023.
//

import Foundation

public enum generate {
    case totpConf
    case passwordsWithTOTP
    case passwordsWithoutTOTP
    case allPasswordsFile
    case everything
}

public struct ItemStruct: Comparable {
    public static func < (lhs: Self, rhs: Self) -> Bool {
        lhs.ReadableName < rhs.ReadableName
    }
    public static func > (lhs: Self, rhs: Self) -> Bool {
        lhs.ReadableName > rhs.ReadableName
    }
    public static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.ReadableName == rhs.ReadableName
    }

    public var Domain: String
    public var Title: String
    public var Login: String
    public var Password: String
    public var ReadableName: String
    public var TOTP: String?
}

public typealias PassDict = [String : ItemStruct]

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
