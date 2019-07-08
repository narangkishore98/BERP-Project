//
//  ViewController.swift
//  BERP-Project
//
//  Created by Kishore Narang on 2019-07-05.
//  Copyright © 2019 Bikloo. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var lblWelcome: UILabel!
    @IBOutlet weak var ImgBerp: UIImageView!
    @IBOutlet weak var UserEmailTextField: UITextField!
    
    @IBOutlet weak var UserPasswordTextField: UITextField!
    
    @IBOutlet weak var SwitchClick: UISwitch!
    
    @IBOutlet weak var lblRememberMe: UILabel!
    
    @IBOutlet weak var lblForRegister: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.UserEmailTextField.delegate = self as? UITextFieldDelegate
        self.UserPasswordTextField.delegate = self as? UITextFieldDelegate
        // Do any additional setup after loading the view.
    }

@IBAction func LoginButtonTapped(_ sender: UIButton) {
    let UserEmail = UserEmailTextField.text
    let UserPassword = UserPasswordTextField.text
    let UserEmailStored =  UserDefaults.standard.string(forKey: "UserEmail")
    let UserPasswordStored = UserDefaults.standard.string(forKey: "UserPassword")
    if (UserEmailStored == UserEmail)
     {
        if(UserPasswordStored == UserPassword)
        {
            //login is successful
            UserDefaults.standard.set(true, forKey: "isUserLoggedin")
            UserDefaults.standard.synchronize()
            self.dismiss(animated: true, completion: nil)
        }
        
        
     }
    else
       {
        // display alert message
        displayMyAlertMessage(usermessage: "Invalid Email/ password")
        return
        }
    }
    func displayMyAlertMessage(usermessage : String)
    {
        let myAlert = UIAlertController(title: "Alert", message: usermessage, preferredStyle: UIAlertController.Style.alert)
        let okAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
        myAlert.addAction(okAction)
        self.present(myAlert, animated: true, completion: nil)
    }
    

    
    @IBAction func SignUpHereTapped(_ sender: UIButton) {
        
           self.performSegue(withIdentifier: "Sing Up", sender: self)
    
    }
    
    
}


