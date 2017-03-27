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

class iPadLocationViewController: UIViewController{
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LocationName.placeholder = "Please input the location"
        if location != ""
        {
            ResultShower.text = location
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func EndEdit(_ sender: UIButton) {
        if LocationName.text != nil{
            location = LocationName.text!
            ResultShower.text = location
        }
    }
    
    @IBOutlet weak var ResultShower: UILabel!
    
    @IBOutlet weak var LocationName: UITextField!
    
}
