//
//  iPadLocationViewController.swift
//  Location Manage System with BLE
//
//  Created by zhangzhihua on 2017/3/27.
//  Copyright © 2017年 zhangzhihua. All rights reserved.
//

import Foundation
import UIKit

class iPadLocationViewController: UIViewController{
    
    var UserEndEdit = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LocationName.placeholder = "Please input the location"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func EndEdit(_ sender: UIButton) {
        if LocationName.text != nil{
            ResultShower.text = LocationName.text
        }
    }
    
    @IBOutlet weak var ResultShower: UILabel!
    
    @IBOutlet weak var LocationName: UITextField!
    
    @IBAction func Back_Menu(_ sender: UIButton) {
        
    }
}
