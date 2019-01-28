//
//  AGTEuro.swift
//  App
//
//  Created by Raul Quispe on 1/28/19.
//  Copyright © 2019 nara. All rights reserved.
//

import UIKit

class AGTEuro:NSObject {
    private(set) var amount:Double!
    init(amount:Double) {
        self.amount = amount
    }
    func times(_ value:Int)->AGTEuro{
        let newEuro:AGTEuro = AGTEuro(amount: Double(value)*self.amount)
        return newEuro
    }
    override func isEqual(_ object: Any?) -> Bool {
        let cast = object as! AGTEuro
        return self.amount == cast.amount
    }
}
