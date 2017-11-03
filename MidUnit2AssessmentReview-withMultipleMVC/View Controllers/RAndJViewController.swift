//
//  RAndJViewController.swift
//  MidUnit2AssessmentReview-withMultipleMVC
//
//  Created by C4Q  on 11/2/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class RAndJViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameInputField: UITextField!
    @IBOutlet weak var warningLabel: UILabel!
    @IBOutlet weak var scriptTextView: UITextView!
    
    var rjModel = RAndJModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameInputField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let characterName = textField.text {
            if rjModel.isValid(characterName) {
                warningLabel.isHidden = true
                textField.resignFirstResponder()
                scriptTextView.text = rjModel.getLines(from: characterName)
            } else {
                warningLabel.isHidden = false
            }
        }
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        for scalar in string.unicodeScalars {
            let disallowedChars = CharacterSet(charactersIn: "1234567890")
            if CharacterSet.symbols.contains(scalar) || disallowedChars.contains(scalar) {
                return false
            }
        }
        
        return true
    }
    
}
