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
        
        
        countNameCharacters(name: "Misha")
        sufixFind(name: "Геннадиевич")
        
        
    }
    
    
    
    func countNameCharacters (name: String){
    let myName = name
    print("В данном имени \(myName.characters.count) букв")
}
    
    func sufixFind (name: String){
        let otchestvo = name
        let sufix1 = "ич"
        let sufix2 = "на"
        if otchestvo.hasSuffix(sufix1){
            print("В отчестве \(name) присутствует суфикс \(sufix1)")
        } else {
            if otchestvo.hasSuffix(sufix2){
                print("В отчестве \(name) присутствует суфикс \(sufix2)")
            } else {
                print("В отчестве \(name) нет таких суфиксов")
            }
        }
        
    }

}
