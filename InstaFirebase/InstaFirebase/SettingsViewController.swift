//
//  SettingsViewController.swift
//  InstaFirebase
//
//  Created by Mehmet Tuna Arıkaya on 18.09.2024.
//

import UIKit
import Firebase
import FirebaseAuth

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //iss

        // Do any additional setup after loading the view.
    }
    

    @IBAction func logoutClicked(_ sender: Any) {
        do{
            try Auth.auth().signOut()
            self.performSegue(withIdentifier: "ViewController", sender: nil)
        }
        catch{
            print("error")
        }
        
    }
    

}
