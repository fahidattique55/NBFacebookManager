//
//  ViewController.swift
//  NBFacebookManager
//
//  Created by Fahid Attique on 6/14/17.
//  Copyright © 2017 FahidAttique. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    // MARK: - class properties
    
    fileprivate let facebookManager = FacebookManager()

    

    
    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



    
    // MARK: - IBActions
    
    
    @IBAction func loginWithFacebook(_ sender: Any) {
    
        facebookManager.tryAuthenticate(fromViewController: self, success:{ facebookToken in

            print("\(facebookToken)")

            self.getProfileIfNeeded()
            
        }) { error in
            
            print("Error: \(String(describing: error?.localizedDescription))")
        }
    
    }

    
    private func getProfileIfNeeded(){
        
        facebookManager.fetchLoggedUserInfo(successBlock: { (userInfo) in

            print("\(String(describing: userInfo))")

        }) { (error) in
            print("Error: \(String(describing: error?.localizedDescription))")
        }
    }
    
}

