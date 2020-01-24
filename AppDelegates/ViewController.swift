//
//  ViewController.swift
//  AppDelegates
//
//  Created by Sagi Harika on 26/11/19.
//  Copyright © 2019 Sagi Harika. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var contactsLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contactsLbl.numberOfLines = 0
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
   
    @IBAction func addContactBtn(_ sender: Any) {
        var secondVC = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        present(secondVC,animated: true,completion: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        
        var completeString = String()
        
        for x in AppDelegate.dataDict
        {
            completeString += x["name"]! + "\n" + x["mobile"]! + "\n\n"
        }
        
        
        contactsLbl.text! = completeString
    }
    
    
}

