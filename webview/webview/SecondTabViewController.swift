//
//  SecondTabViewController.swift
//  webview
//
//  Created by ALAY on 9/28/18.
//  Copyright © 2018 confident. All rights reserved.
//

import UIKit

class SecondTabViewController: UIViewController {

    let appdelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onclick(_ sender: UIButton) {
        
        if sender.tag == 0{
            
            self.appdelegate.firstUse.set("mm", forKey: "language")
            
        }
        else{
            self.appdelegate.firstUse.set("eng", forKey: "language")
          
        }
        
        
        let view = self.storyboard?.instantiateViewController(withIdentifier: "LanguageViewController")as! LanguageViewController
        
        self.navigationController?.pushViewController(view, animated: true)
        

        
    }
    
}
