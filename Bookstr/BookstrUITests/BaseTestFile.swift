//
//  BaseTestFile.swift
//  Bookstr
//
//  Created by MacBook on 18/03/2022.
//

import Foundation
import XCTest

class BaseTestFile: XCTestCase {
    override class func setUp()  {
        super.setUp()
        XCUIApplication().launch()
    }
}
