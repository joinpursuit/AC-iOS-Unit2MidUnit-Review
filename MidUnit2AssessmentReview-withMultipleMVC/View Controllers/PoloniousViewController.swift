//
//  PoloniousViewController.swift
//  MidUnit2AssessmentReview-withMultipleMVC
//
//  Created by C4Q  on 11/2/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class PoloniousViewController: UIViewController {
    @IBOutlet weak var lineLabel: UILabel!
    var poloniousModel = PoloniousMonologueModel()
    
    @IBAction func nextLineButtonPressed(_ sender: UIButton) {
        lineLabel.text = poloniousModel.nextLine()
    }
    
}
