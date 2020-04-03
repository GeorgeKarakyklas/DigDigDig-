//
//  StoreVC.swift
//  Dig! Dig! Dig!
//
//  Created by George Karakyklas on 4/2/20.
//  Copyright © 2020 Gorg Gaming Lab. All rights reserved.
//

import UIKit

class StoreVC: UIViewController {

    @IBOutlet weak var name_field: UITextField!
    @IBOutlet weak var progress_bar: UIProgressView!
    @IBOutlet weak var gen_button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func create_certificate(_ sender: Any) {
        let alertController = UIAlertController(title: "Unavailable", message: "Coming soon...", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
        self.present(alertController, animated: true, completion: nil)
        
        
    }
    

}
