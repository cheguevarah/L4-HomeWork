//
//  ViewController.swift
//  L4 HomeWork
//
//  Created by Sasha on 2/4/19.
//  Copyright © 2019 Sasha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//
//        countNameCharacters("Misha")
//        sufixFind("Геннадиевич")
//        separateName("AleksandrKhazin")
//        mirrorString("Ось")
//        comaAdd("1234567")
        checkPass("aas*)@SS12dasda")
//        massiveSort([0, 9, 6, 2, 2, 0, 1, 5, 4, 3, 7, 5, 4, 5, 2, 1, 10, 4, 5, 0])
        
        
        
        
        
        
    }
    
    

    func countNameCharacters (_ name: String){
    let myName = name
    print("В имени \(name) - \(myName.count) букв")
}
    
    func sufixFind (_ name: String = ""){
        let otchestvo = name
        let sufix1 = "ич"
        let sufix2 = "на"
        if otchestvo.hasSuffix(sufix1){
            print("В отчестве \(name) присутствует суфикс \"\(sufix1)\"")
        } else {
            if otchestvo.hasSuffix(sufix2){
                print("В отчестве \(name) присутствует суфикс \"\(sufix2)\"")
            } else {
                print("В отчестве \(name) нет таких суфиксов")
            }
        }
        
    }
    
    func separateName (_ name: String = ""){
        let holeName = name
        let firstHalf = holeName[holeName.startIndex..<holeName.index(holeName.startIndex, offsetBy: 9)]
        print(firstHalf)
        let secondHalf = holeName[holeName.index(holeName.startIndex, offsetBy: 9)..<holeName.endIndex]
        print(secondHalf)
        let fullName = firstHalf + " " + secondHalf
        print(fullName)
        
    }
    
    func mirrorString (_ inputText: String = ""){
        var textToTransf = inputText
        var reversed = ""
        for i in textToTransf.characters {
            reversed = String(i) + reversed
        }
        print(reversed)
        
    }
    
    func comaAdd (_ inputNumber: String = ""){
        var number = inputNumber
        if number.count < 3 {
            print(number)
        } else {
        if number.count == 4 {
            number.insert(",", at: number.index(number.startIndex, offsetBy: 1))
            print(number)
        } else {
            if number.count == 5 {
                number.insert(",", at: number.index(number.startIndex, offsetBy: 2))
                print(number)
            } else {
                if number.count == 6 {
                    number.insert(",", at: number.index(number.startIndex, offsetBy: 3))
                    print(number)
                } else {
                    if number.count == 7 {
                        number.insert(",", at: number.index(number.startIndex, offsetBy: 1))
                        number.insert(",", at: number.index(number.startIndex, offsetBy: 4))
                        print(number)
                }
            }
        }
    }
}
}
    
    func checkPass (_ password: String = ""){
        let pass = password
        var starsOfSecure = 0
        var levelOfSecure: String = ""
        let specialCharacter: CharacterSet = CharacterSet.init(charactersIn: "!@#$%^&*)(_")
        let specSymb: Bool = pass.rangeOfCharacter(from: specialCharacter) != nil
        for i in pass {
            if i >= "A" && i <= "Z"{
                starsOfSecure += 1
                levelOfSecure.append("b)")
                break
            }
        }
        for i in pass {
            if i >= "a" && i <= "z"{
                starsOfSecure += 1
                levelOfSecure.append("c)")
                break
            }
        }
        for i in pass {
            if i >= "0" && i <= "9"{
                starsOfSecure += 1
                levelOfSecure.append("a)")
                break
            }
        }
        
        if specSymb {
            starsOfSecure += 1
            levelOfSecure.append("d)")
        }
        
        if starsOfSecure == 4 {
            starsOfSecure += 1
        }
        
        
        print("Уровень безопасноти пароля равен: \(starsOfSecure), содержит варианты: \(levelOfSecure)")
    }
    
    
//    ([0, 9, 6, 2, 2, 0, 1, 5, 4, 3, 7, 5, 4, 5, 2, 1, 10, 4, 5, 0])
    
    func massiveSort (_ inputToSort: [Int]){
        var massive = inputToSort
        var deleted = 0
        for i in massive{
            if massive[i] > massive[i+1]{
               deleted = massive.remove(at: i)
               massive.append(deleted)
                print(massive)
            }
        }
}










}
