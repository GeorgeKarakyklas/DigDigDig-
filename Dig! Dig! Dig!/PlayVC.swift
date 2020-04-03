//
//  FirstViewController.swift
//  Dig! Dig! Dig!
//
//  Created by George Karakyklas on 4/2/20.
//  Copyright © 2020 Gorg Gaming Lab. All rights reserved.
//

import UIKit
import SafariServices

class PlayVC: UIViewController {

    @IBOutlet weak var balance_label: UILabel!
    @IBOutlet weak var click_label: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var found_label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    let model = ListofOres()

    @IBAction func click(_ sender: Any) {
        click_label.text = "Clicks: " + String(model.addClick())
        model.pickRandomOre()
        balance_label.text = "Balance: $ \(model.get_new_balance())"
        found_label.text = "You found \(model.get_material_name())!"
        if model.discovery_available() != ""{
            let desc = model.discovery_available()
            let alertController = UIAlertController(title: "New Material", message: "Check out what you just found!", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Learn More", style: .default, handler: { action in
                
                guard let url = URL(string: "\(desc)") else {
                    return
                }
                
                let safariVC = SFSafariViewController(url: url)
                self.present(safariVC, animated: true, completion: nil)
            }))
            alertController.addAction(UIAlertAction(title: "Dismiss", style: .destructive))
            self.present(alertController, animated: true, completion: nil)
        }
    }
    
}

