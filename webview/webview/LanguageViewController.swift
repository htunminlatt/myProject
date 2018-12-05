//
//  LanguageViewController.swift
//  webview
//
//  Created by ALAY on 9/28/18.
//  Copyright © 2018 confident. All rights reserved.
//

import UIKit

class LanguageViewController: UIViewController {

    let appdelegate = UIApplication.shared.delegate as! AppDelegate
    
    @IBOutlet weak var lblname: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let first = appdelegate.firstUse.string(forKey: "language")
        
        if first != nil{
            
            if first == "mm"{
                lblname.text = "ျမန္မာ"
            }
            else{
                lblname.text = "English"
            }
            
        }
        
    }

  
}
