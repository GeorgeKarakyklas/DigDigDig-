//
//  SecondViewController.swift
//  Dig! Dig! Dig!
//
//  Created by George Karakyklas on 4/2/20.
//  Copyright © 2020 Gorg Gaming Lab. All rights reserved.
//

import UIKit

class FriendsVC: UIViewController {

    
    @IBOutlet weak var fb_button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func need_friends(_ sender: Any) {
        let alertController = UIAlertController(title: "Unavailable", message: "Coming soon...", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
        self.present(alertController, animated: true, completion: nil)
        
    }
    
}

