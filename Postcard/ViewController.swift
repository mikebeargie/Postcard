//
//  ViewController.swift
//  Postcard
//
//  Created by Mike Beargie on 12/26/14.
//  Copyright (c) 2014 Anvil Dataworks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLable: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPress(sender: UIButton) {
        messageLable.hidden = false
        messageLable.text = enterMessageTextField.text
        messageLable.textColor = UIColor.redColor()
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

