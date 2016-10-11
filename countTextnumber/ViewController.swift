//
//  ViewController.swift
//  countTextnumber
//
//  Created by stephanie yang on 2016/5/5.
//  Copyright © 2016年 stephanie yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {


    @IBOutlet weak var mylabel: UILabel!
    @IBOutlet weak var txtValue: UITextField!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        self.txtValue.delegate = self
    }

    
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        let currentCharacterCount = txtValue.text?.characters.count ?? 0
        if (range.length + range.location > currentCharacterCount){
            return false
        }
        let newLength = currentCharacterCount + string.characters.count - range.length
        self.mylabel.text = "\(newLength)"
        return newLength < 20
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

