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
        
        
//        countNameCharacters(name: "Misha")
//        sufixFind(name: "Геннадиевич")
//        separateName(name: "AleksandrKhazin")
//        mirrorString(inputText: "Ось")
        comaAdd(inputNumber: "1234567")
        
        
        
    }
    
    

    func countNameCharacters (name: String){
    let myName = name
    print("В имени \(name) - \(myName.count) букв")
}
    
    func sufixFind (name: String){
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
    
    func separateName (name: String){
        let holeName = name
        let firstHalf = holeName[holeName.startIndex..<holeName.index(holeName.startIndex, offsetBy: 9)]
        print(firstHalf)
        let secondHalf = holeName[holeName.index(holeName.startIndex, offsetBy: 9)..<holeName.endIndex]
        print(secondHalf)
        let fullName = firstHalf + " " + secondHalf
        print(fullName)
        
    }
    
    func mirrorString (inputText: String){
        var textToTransf = inputText
        var reversed = ""
        for i in textToTransf.characters {
            reversed = String(i) + reversed
        }
        print(reversed)
        
    }
    
    func comaAdd (inputNumber: String){
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
    
    
  
    
    
}
