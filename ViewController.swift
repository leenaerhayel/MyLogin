//
//  ViewController.swift
//  MyLogin
//
//  Created by Hackeru Haifa on 12/04/2018.
//  Copyright © 2018 Zeev Mindali. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnLogin(_ sender: UIButton) {
        
        /*
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ClsLogin")
        present(vc!, animated: true, completion: nil)
         */
        //alert1()
        //alert2()
        alert3()
    }
    
    func alert3()
    {
        let alert = UIAlertController(title: "App store user", message: "Enter App store user and password", preferredStyle: .alert)
        var uName,uPass:UITextField!
        //user name
        alert.addTextField(configurationHandler: {
            (userName) in
            userName.placeholder="User name...."
            uName=userName
        })
        alert.addTextField(configurationHandler: {
            (userPass) in
            userPass.placeholder="User Password"
            userPass.isSecureTextEntry=true
            uPass=userPass
        })
        
        func okHandler(action:UIAlertAction)
        {
            if (uName.text=="kakadu" && uPass.text=="12345")
            {
                print ("Walled the king...")
            }
        }
        
        alert.addAction(UIAlertAction(title: "Login", style: .default, handler: okHandler))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    func alert2()
    {
        let alert = UIAlertController(title: "Password required", message: "Enter password for kakadu@wtf.com", preferredStyle: .alert)
        alert.addTextField(configurationHandler: nil)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Le OK", style: .default, handler: {
            (action) in
            //get all text fields from alert
            let fields=alert.textFields!
            let txt=fields[0].text!
            print ("Le Asic password is:\(txt)")
        }))
        present(alert, animated: true, completion: nil)
    }
    
    func alert1()
    {
        let alert = UIAlertController(title: "Login Error", message: "You need to register first", preferredStyle: .alert)
        //add button
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        //present the alert dialog
        show(alert,sender: nil)
    }
}













