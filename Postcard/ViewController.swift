//
//  ViewController.swift
//  Postcard
//
//  Created by Mark Spencer on 25/10/2014.
//  Copyright (c) 2014 Dysfunction Media Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // change message label text and unhide
        messageLabel.text = enterMessageTextField.text
        messageLabel.hidden = false
        messageLabel.textColor = UIColor.orangeColor()
        
        // change name text label and unhide
        nameLabel.text = "From: " + enterNameTextField.text
        nameLabel.hidden = false
        nameLabel.textColor = UIColor.blueColor()
        nameLabel.backgroundColor = UIColor.greenColor()
        
        // Change the button
        mailButton.backgroundColor = UIColor.redColor()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        mailButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        // change the enter message text field
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        // change the enter name text field
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
    }

}

