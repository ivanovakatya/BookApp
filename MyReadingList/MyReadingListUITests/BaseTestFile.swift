//
//  BaseTestFile.swift
//  MyReadingListUITests
//
//  Created by MacBook on 06/01/2022.
//

import Foundation
import XCTest

class BaseTestFile: XCTestCase {
    override class func setUp()  {
        super.setUp()
        XCUIApplication().launch()
    }
}
