//
//  BaseTestFile.swift
//  MyReadingListUITests
//
//  Created by MacBook on 06/01/2022.
//

import Foundation
import XCTest

class BaseTestClass: XCTestCase {
    override init() {
        super.init()
        XCUIApplication().launch()
    }
}
