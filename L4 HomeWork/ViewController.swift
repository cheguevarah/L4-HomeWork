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
//
//        sufixFind("Геннадиевич")
//
//        separateName("AleksandrKhazin")
//
//        mirrorString("Ось")
//
//        comaAdd("1234567")
//
//        checkPass("1aA_")
//
        massiveSort([0, 9, 6, 2, 2, 0, 1, 5, 4, 3, 7, 5, 4, 5, 2, 1, 10, 4, 5, 0])
//
//        writeTranslite("ЯЗЬ")
//
//        searchForChars(["lada", "sedan", "baklazhan"], "ba")
        
//        antiMat("fuck you bitch")
        

        
        
        
        
        
        
        
        
    }
    
    
//    Создать строку с своим именем, вывести количество символов содержащихся в ней.
    func countNameCharacters (_ name: String){
    let myName = name
    print("В имени \(name) - \(myName.count) букв")
}
    
    
//    Создать строку с своим отчеством проверить его на окончание “ич/на”
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
    
    
//    Cоздать строку, где слитно написано Ваши ИмяФамилия “IvanVasilevich"
//    Вам нужно разбить на две отдельных строки из предыдущей создать третью, где они обе будут разделены пробелом
    func separateName (_ name: String = ""){
        let holeName = name
        let firstHalf = holeName[holeName.startIndex..<holeName.index(holeName.startIndex, offsetBy: 9)]
        print(firstHalf)
        let secondHalf = holeName[holeName.index(holeName.startIndex, offsetBy: 9)..<holeName.endIndex]
        print(secondHalf)
        let fullName = firstHalf + " " + secondHalf
        print(fullName)
        
    }
    
    
//    Вывести строку зеркально Ось → ьсО не используя reverse (посимвольно)
    func mirrorString (_ inputText: String = ""){
        var textToTransf = inputText
        var reversed = ""
        for i in textToTransf.characters {
            reversed = String(i) + reversed
        }
        print(reversed)
        
    }
    
    
//    Добавить запятые в строку как их расставляет калькулятор
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
    
    
//    Проверить пароль на надежность от 1 до 5
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
    
    
//  НЕ СДЕЛАЛ Сортировка массива ([0, 9, 6, 2, 2, 0, 1, 5, 4, 3, 7, 5, 4, 5, 2, 1, 10, 4, 5, 0])
    func massiveSort (_ inputToSort: [Int]){
        var massive = inputToSort
        let unique = Array(Set(massive))
        let sortedSet = Array(Set(unique))
        let result = sortedSet.sorted()
        print(result)
        }
    
    
//    Написать метод, который будет переводить строку в транслит.
    func writeTranslite (_ inputWord: String = ""){
        var textToTrans = inputWord
        let transAlphabet = ["Я" : "YA", "З" : "Z", "Ь" : "'", "С" : "S", "О" : "O", "Б" : "B", "А" : "A", "К" : "K"]
        for (key, value) in transAlphabet {
            textToTrans = textToTrans.replacingOccurrences(of: key, with: value)
            }
        print(textToTrans)
        }
    
    
//    Задача 9. Сделать выборку из массива строк в которых содержится указанная строка
    // By Loop:
    func searchForChars (_ inputMassive: [String], _ inputChars: String){
        let holeMass = inputMassive
        let searchFor = inputChars
        var resultMass = [String].init()
        for i in holeMass{
            if i.contains(searchFor){
                resultMass += [i]
            }
        }
        print(resultMass)
        
    }
    
    
//   использовать Set или NSSet для программы antimat - исключить из предложения все слова содержащиеся в сете
    func antiMat (_ inputText: String){
        var textToCheck = inputText
        let badWords: Set = ["fuck", "bitch", "asshole"]
        for i in badWords{
            if textToCheck.contains(i) {
               textToCheck = textToCheck.replacingOccurrences(of: i, with: "***")
            }
    }
        print(textToCheck)
    }
    
    
    
    
    
    
    
        
        














}
