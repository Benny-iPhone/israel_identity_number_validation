//: Playground - noun: a place where people can play

import UIKit

extension String{
    var isValidIsraelicIdnetity : Bool{
        let maxLengh = 9
        //not empty
        if self.isEmpty{
            return false
        }
        
        //not too long
        if self.characters.count > maxLengh{
            return false
        }
        
        //represents a number
        if Int(self) == nil{
            return false
        }
        
        var str = self
        // if the number is too short - add leading 0000
        while str.characters.count < maxLengh {
            str = "0" + str
        }
        
        //validate check
        
        var sum = 0
        
        var index = self.startIndex
        for i in 0..<maxLengh{
            let dString = String(self.characters[index])
            
            var num = Int(dString)!
            num *= (i % 2) + 1
            if num > maxLengh{
                num -= maxLengh
            }
            
            sum += num
            
            index = self.index(after: index)
            if index == self.endIndex{
                break
            }
            
        }
        
        return sum % 10 == 0
        
    }
}


var str = "12344"
str.isValidIsraelicIdnetity

