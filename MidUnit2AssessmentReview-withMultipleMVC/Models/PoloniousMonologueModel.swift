//
//  PoloniousMonologueModel.swift
//  MidUnit2AssessmentReview-withMultipleMVC
//
//  Created by C4Q  on 11/2/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import Foundation

class PoloniousMonologueModel {
    static let textArr = ["My liege, and madam, to expostulate",
                          "What majesty should be, what duty is,",
                          "What day is day, night night, and time is time,",
                          "Were nothing but to waste night, day, and time;",
                          "Therefore, since brevity is the soul of wit,",
                          "And tediousness the limbs and outward flourishes,",
                          "I will be brief. Your noble son is mad."
    ]
    //Complete model
    func nextLine() -> String {
        let currentLine =  PoloniousMonologueModel.textArr[currentIndex]
        currentIndex += 1
        if currentIndex == PoloniousMonologueModel.textArr.count {
            currentIndex = 0
        }
        return currentLine
    }
    private var currentIndex = 0
}
