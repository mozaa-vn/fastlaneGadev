//
//  fastlaneScreenshots.swift
//  fastlaneScreenshots
//
//  Created by Nguyễn Ý on 9/23/20.
//  Copyright © 2020 Nguyễn Ý. All rights reserved.
//

import XCTest

class fastlaneScreenshots: XCTestCase {
    override func setUp() {
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
    }
    
    func testSnapshot () {
        let app = XCUIApplication()
        snapshot("1-home")
        
        app.buttons["Làm sao để ăn gà ngon hơn?"].tap()
        snapshot("2-recipe-start")
        
        app.swipeUp();
        snapshot("3-recipe-end")
    }
}
