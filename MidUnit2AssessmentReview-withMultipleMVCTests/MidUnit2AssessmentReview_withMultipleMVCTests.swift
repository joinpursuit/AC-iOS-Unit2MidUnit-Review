//
//  MidUnit2AssessmentReview_withMultipleMVCTests.swift
//  MidUnit2AssessmentReview-withMultipleMVCTests
//
//  Created by Victor Zhong on 9/28/18.
//  Copyright © 2018 C4Q . All rights reserved.
//

import XCTest
@testable import MidUnit2AssessmentReview_withMultipleMVC

class MidUnit2AssessmentReview_withMultipleMVCTests: XCTestCase {
    var poloniusModelUT: PoloniousMonologueModel?
    var RAndJModelUT: RAndJModel?

    override func setUp() {
        poloniusModelUT = PoloniousMonologueModel()
        RAndJModelUT = RAndJModel()
    }

    override func tearDown() {
        poloniusModelUT = nil
        RAndJModelUT = nil
    }

    func testPoloniusMonologue() {
        XCTAssertEqual(poloniusModelUT?.nextLine(), "My liege, and madam, to expostulate")

        XCTAssertEqual(poloniusModelUT?.nextLine(), "What majesty should be, what duty is,")

        XCTAssertEqual(poloniusModelUT?.nextLine(), "What day is day, night night, and time is time,")

        XCTAssertEqual(poloniusModelUT?.nextLine(), "Were nothing but to waste night, day, and time;")

        XCTAssertEqual(poloniusModelUT?.nextLine(), "Therefore, since brevity is the soul of wit,")

        XCTAssertEqual(poloniusModelUT?.nextLine(), "And tediousness the limbs and outward flourishes,")

        XCTAssertEqual(poloniusModelUT?.nextLine(), "I will be brief. Your noble son is mad.")

        XCTAssertEqual(poloniusModelUT?.nextLine(), "My liege, and madam, to expostulate")

        XCTAssertEqual(poloniusModelUT?.nextLine(), "What majesty should be, what duty is,")
    }

    func testRAndJiSValid() {
        XCTAssertFalse(RAndJModelUT?.isValid("John") ?? true)

        XCTAssertTrue(RAndJModelUT?.isValid("Romeo") ?? false)

        XCTAssertTrue(RAndJModelUT?.isValid("romeo") ?? false)

        XCTAssertTrue(RAndJModelUT?.isValid("mercutio") ?? false)

        XCTAssertTrue(RAndJModelUT?.isValid("Mercutio") ?? false)

        XCTAssertTrue(RAndJModelUT?.isValid("benvolio") ?? false)

        XCTAssertTrue(RAndJModelUT?.isValid("Benvolio") ?? false)
    }

    func testRAndJGetLines() {
        XCTAssertEqual(RAndJModelUT?.getLines(from: "Romeo"),
                       """
            ROMEO:
            What, shall this speech be spoke for our excuse?
            Or shall we on without a apology?
            ROMEO:
            Give me a torch: I am not for this ambling;
            Being but heavy, I will bear the light.
            ROMEO:
            Not I, believe me: you have dancing shoes
            With nimble soles: I have a soul of lead
            So stakes me to the ground I cannot move.
            ROMEO:
            I am too sore enpierced with his shaft
            To soar with his light feathers, and so bound,
            I cannot bound a pitch above dull woe:
            Under love's heavy burden do I sink.
            ROMEO:
            Is love a tender thing? it is too rough,
            Too rude, too boisterous, and it pricks like thorn.
            """
        )

        XCTAssertEqual(RAndJModelUT?.getLines(from: "Benvolio"),
                       """
        BENVOLIO:
        The date is out of such prolixity:
        We'll have no Cupid hoodwink'd with a scarf,
        Bearing a Tartar's painted bow of lath,
        Scaring the ladies like a crow-keeper;
        Nor no without-book prologue, faintly spoke
        After the prompter, for our entrance:
        But let them measure us by what they will;
        We'll measure them a measure, and be gone.
        """
        )
        
        XCTAssertEqual(RAndJModelUT?.getLines(from: "Mercutio"),
                       """
        MERCUTIO:
        Nay, gentle Romeo, we must have you dance.
        MERCUTIO:
        You are a lover; borrow Cupid's wings,
        And soar with them above a common bound.
        MERCUTIO:
        And, to sink in it, should you burden love;
        Too great oppression for a tender thing.
        """
        )

    }
}
