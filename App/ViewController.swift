//
//  ViewController.swift
//  App
//
//  Created by Raul Quispe on 1/8/19.
//  Copyright © 2019 nara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var txtName:UITextField!
    @IBOutlet var btnLogin:UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        txtName.accessibilityIdentifier = "txtValue"
        if let btn = self.btnLogin {
             btn.accessibilityIdentifier = "btnLogin"
        }


    }
    @IBAction func readField(_ sender: UIButton) {
        if let number = self.getReadNumber(value: self.txtName.text!) {
            print("input: \(number)")
            let alert = UIAlertController(title: "Great", message: "This is a number", preferredStyle: .alert)
            let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alert.addAction(action)
            
            self.present(alert, animated: true, completion: nil)
        }else{
            print("no input")
            let alert = UIAlertController(title: "Error", message: "this is no number", preferredStyle: .alert)
            let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alert.addAction(action)
            
            self.present(alert, animated: true, completion: nil)

        }
    }
    func getReadNumber(value:String) -> Double? {
        if  let number = Double(value) {
            return number
        }else{
            return nil
        }
    }
}

