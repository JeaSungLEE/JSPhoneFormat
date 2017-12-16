//
//  JSPhoneFormat.swift
//  JSPhoneFormat
//
//  Created by 이재성 on 16/12/2017.
//  Copyright © 2017 이재성. All rights reserved.
//

import UIKit

public class JSPhoneFormat {
    public var appendCharacter: Character = "-"
    private var Digits: String = ""
    
    public init(appenCharacter: Character) {
        appendCharacter = appenCharacter
    }
    
    public func getDigitsWithouthCharacter() -> String {
        return Digits.replacingOccurrences(of: "\(appendCharacter)", with: "")
    }
    
    public func addCharacter(at text:String) -> String {
        Digits = text
        removeCharacter()
        guard Digits.count >= 2 else { return Digits }
        
        if firstIsZero() {
            if secondIsTwo() {
                if getDigitsCountIn(3, 5) {
                    appendCharacter(2)
                } else if getDigitsCountIn(6, 9) {
                    appendCharacter(2)
                    appendCharacter(6)
                } else if getDigitsCountIn(10, 10) {
                    appendCharacter(2)
                    appendCharacter(7)
                }
            } else {
                if getDigitsCountIn(4, 6) {
                    appendCharacter(3)
                } else if getDigitsCountIn(7, 10) {
                    appendCharacter(3)
                    appendCharacter(7)
                } else if getDigitsCountIn(11, 11) {
                    appendCharacter(3)
                    appendCharacter(8)
                }
            }
        } else if firstIsOne() {
            if secondIsZeroThreeIn() {
                if getDigitsCountIn(4, 6) {
                    appendCharacter(3)
                } else if getDigitsCountIn(7, 10) {
                    appendCharacter(3)
                    appendCharacter(7)
                } else if getDigitsCountIn(11, 11) {
                    appendCharacter(3)
                    appendCharacter(8)
                }
            } else {
                if getDigitsCountIn(5, 8) {
                    appendCharacter(4)
                }
            }
        }
        
        return Digits
    }
}

extension JSPhoneFormat {
    private func firstIsZero() -> Bool {
        if Digits.first == "0" { return true }
        return false
    }
    
    private func secondIsTwo() -> Bool {
        if Digits.count >= 2 && Digits[1] == "2" { return true }
        return false
    }
    
    private func firstIsOne() -> Bool {
        if Digits.first == "1" { return true }
        return false
    }
    
    private func secondIsZeroThreeIn() -> Bool {
        if Digits.count >= 2 {
            if Digits[1] == "0" || Digits[1] == "1" || Digits[1] == "2" || Digits[1] == "3" { return true }
        }
        return false
    }
    
    private func getDigitsCountIn(_ start: Int, _ end: Int) -> Bool {
        return Digits.count >= start && Digits.count <= end
    }
    
    private func appendCharacter(_ index: Int) {
        Digits.insert(appendCharacter, at: Digits.getStringIndex(i: index))
    }
    
    private func removeCharacter() {
        Digits = Digits.replacingOccurrences(of: "\(appendCharacter)", with: "")
    }
}

extension String {
    func getStringIndex(i: Int) -> String.Index {
        return self.index(self.startIndex, offsetBy: i)
    }
    
    subscript (i: Int) -> Character {
        return self[index(startIndex, offsetBy: i)]
    }
}
