//
//  ViewController.swift
//  Alertcontroller with User Input
//
//  Created by Mac on 18/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myTextLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitButtonPressed(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "Submission", message: "Enter Email Details", preferredStyle: .alert)
        
        alertController.addTextField { (textfield) in
            textfield.placeholder = "Enter Your Email Address"
        }
        
        let submit = UIAlertAction(title: "Submit", style: .default) { (action) in
            if let email = alertController.textFields?.first?.text {
                self.myTextLabel.text = "Email : \(email)"
            }
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            print("Operation Has Been Cancelled")
        }
        
        alertController.addAction(submit)
        alertController.addAction(cancel)
        present(alertController, animated: true,completion: nil)
    }
    
}

