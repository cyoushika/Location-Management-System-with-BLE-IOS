//
//  iPadLocationViewController.swift
//  Location Manage System with BLE
//
//  Created by zhangzhihua on 2017/3/27.
//  Copyright © 2017年 zhangzhihua. All rights reserved.
//

import Foundation
import UIKit

var location = ""

class iPadLocationViewController: UIViewController,UITextFieldDelegate{
    
    
    @IBOutlet weak var Location: UILabel!
    
    @IBOutlet weak var LocationTextField: UITextField!
    
    @IBOutlet weak var Accept: UIButton!
    
    @IBAction func Accept(_ sender: UIButton) {
        Location.text = LocationTextField.text
        location = (LocationTextField!.text)!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LocationTextField.placeholder = "Please input the location"
        LocationTextField.delegate = self
        if location == ""
        {
            Location.text = "Unknown"
        }
        else
        {
            Location.text = location
            
        }
        LocationTextField.returnKeyType = UIReturnKeyType.done
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
