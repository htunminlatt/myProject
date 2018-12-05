//
//  TabBarViewController.swift
//  webview
//
//  Created by ALAY on 9/28/18.
//  Copyright © 2018 confident. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    @IBOutlet weak var slideBar: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func OnclickBar(_ sender: UIBarButtonItem) {
        let view = self.storyboard?.instantiateViewController(withIdentifier: "LanguageViewController")as! LanguageViewController
        
        self.present(view,animated: true,completion: nil)
        
    }
    
}
