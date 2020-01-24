//
//  SecondViewController.swift
//  AppDelegates
//
//  Created by Sagi Harika on 26/11/19.
//  Copyright © 2019 Sagi Harika. All rights reserved.
//

import UIKit
import Toast_Swift
class SecondViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var nameLbl: UILabel!
    
    @IBOutlet weak var nameTF: UITextField!
    
    @IBOutlet weak var mobileNumLbl: UILabel!
    
    @IBOutlet weak var mobileNumTF: UITextField!
    var appDelegateRef:AppDelegate!
    override func viewDidLoad() {
        super.viewDidLoad()
   
        // Do any additional setup after loading the view.
    }
    

    @IBAction func submitBtn(_ sender: Any) {
        
        var value = [String:String]()
        
        value["name"] = nameTF.text!
        
        value["mobile"] = mobileNumTF.text!
        
        
        
        AppDelegate.dataDict.append(value)
        
        dismiss(animated: true, completion: nil)
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
