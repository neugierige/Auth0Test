//
//  ViewController.swift
//  Auth0Test
//
//  Created by Luyuan Xing on 7/12/16.
//  Copyright © 2016 Luyuan Xing. All rights reserved.
//

import UIKit
import Auth0
//import Lock //WHY IS THIS AN ISSUE???

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Auth0
            .authentication()
            .login("email@foo.com",
                password: "123456",
                connection: "Username-Password-Authentication"
            )
            .start { result in
                switch result {
                case .Success(let credentials):
                    // Logged in successfully
                // You've got a Credentials instance, which you'll use, for example, to retrieve the User Profile
                case .Failure(let error):
                    // You've got an Authentication.Error case
                    // Deal with it
                break
                }
        }
        
//        Lock
//        let controller = A0Lock.sharedLock().newLockViewController()
//        controller.closable = true
//        controller.onAuthenticationBlock = { profile, token in
//            // Do something with token  profile. e.g.: save them.
//            // Lock will not save these objects for you.
//            
//            // Don't forget to dismiss the Lock controller
//            controller.dismissViewControllerAnimated(true, completion: nil)
//        }
//        A0Lock.sharedLock().presentLockController(controller, fromController: self)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

