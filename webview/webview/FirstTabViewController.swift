//
//  FirstTabViewController.swift
//  webview
//
//  Created by ALAY on 9/28/18.
//  Copyright © 2018 confident. All rights reserved.
//

import UIKit

class myTableCell : UITableViewCell {
    
    @IBOutlet weak var btnclick: UIButton!
}

class FirstTabViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tblview: UITableView!
    var myarray = [5,6,7,8,9]
    
    var myNum : Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myarray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myTableCell", for: indexPath)as! myTableCell
        
        cell.btnclick.tag = myarray[indexPath.row]
        cell.btnclick.addTarget(self, action: #selector(clickButton(_:)), for: .touchUpInside)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
    
    @objc func clickButton(_ button: UIButton){
        
        myNum = button.tag
        
        print("This is your number....\(myNum)")
        
    }
   
}
