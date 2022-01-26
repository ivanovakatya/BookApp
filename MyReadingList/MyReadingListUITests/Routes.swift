//
//  Routes.swift
//  MyReadingListUITests
//
//  Created by MacBook on 23/01/2022.
//

import Foundation
import XCTest

struct Routes {
    public static func WhenUserGoesToSearchScreen() -> SearchScreen {
        let myReadingListScreen = MyReadingListScreen()
        let searchScreen = myReadingListScreen.goToSearchScreen()
        sleep(2) // Delay for animation
        return searchScreen
    }
}
