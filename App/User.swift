//
//  User.swift
//  App
//
//  Created by Raul Quispe on 1/8/19.
//  Copyright © 2019 nara. All rights reserved.
//

import UIKit

class User: NSObject {
    var name:String!
    var isHigher:Bool!
    var age:Int!
    private let ageHigher = 18
    func setName(value:String){
        self.name = value
    }
    func setAge(value:Int){
        if value >= ageHigher {
            self.isHigher = true
        }else{
            self.isHigher = false
        }
        self.age = value
    }
}
