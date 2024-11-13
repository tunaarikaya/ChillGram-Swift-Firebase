//
//  ViewController.swift
//  InstaFirebase
//
//  Created by Mehmet Tuna Arıkaya on 18.09.2024.
//

import UIKit
import Firebase
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //p
        
        
    }

    @IBAction func signInClicked(_ sender: Any) {
       
        if emailText.text != "" && passwordText.text != "" {
            Auth.auth().signIn(withEmail: emailText.text!, password: passwordText.text!){ [self](authdata,error) in
                if error != nil {
                    makeAlert(titleInput: "Error", messageInput: error?.localizedDescription ?? "Error")
                }else{
                    self.performSegue(withIdentifier: "toFeedVC", sender: nil)
                }
                
            }
            
        }
        else{
            makeAlert(titleInput: "Error", messageInput: "Write email/password please!")
            
        }
        
        
    }
    
    @IBAction func signUpClicked(_ sender: Any) {
        if emailText.text != "" && passwordText.text != "" {
            Auth.auth().createUser(withEmail: emailText.text!, password: passwordText.text!){ [self](authdata,error) in
                if error != nil {
                    makeAlert(titleInput: "Error", messageInput: error?.localizedDescription ?? "Error")
                }else{
                    self.performSegue(withIdentifier: "toFeedVC", sender: nil)
                }
                
            }
            
        }
        else{
            makeAlert(titleInput: "Error", messageInput: "Write email/password please!")
            
        }
    }
    func makeAlert(titleInput:String,messageInput:String){
        
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert,animated: true,completion: nil)
        
        
        
    }
}

