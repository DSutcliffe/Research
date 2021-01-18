//
//  ViewModelTests.swift
//  Unit Test
//
//  Created by Daniel Sutcliffe on 02/06/2020.
//  Copyright © 2020 Daniel Sutcliffe. All rights reserved.
//

// 1. Create THIS swift file from 'Unit Test Case Class'
// 2. Remove Examples
// 3. Create tests for protocol items
//
// throws? not used in our tests

import XCTest

class ViewModelTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

}

extension ViewModelTests {

    // var navigationTitle
    func test_navigationTitle_asExpected () {
    }
    
    // var cardLastDigits
    func test_cardLastDigits_returnsAsExpected () {
    }
    
    // var pinReminderText
    func test_pinReminderText_asExpected () {
    }
    
    // N/A?
    // var asterisksImage
    
    // var bankLogoImage
    func test_bankLogoImage_returnsAsExpected () {
    }
    
    // var cardTypeImage
    func test_cardTypeImage_returnsAsExpected () {
    }
    
    // N/A?
    // var hiddenPINImage
    
    // var cardBackgroundColor
    func test_cardBackgroundColor_returnsAsExpected () {
    }
    func test_cardBackgroundColor_withDebitCardShouldReturnsAsExpected () {
    }
    func test_cardBackgroundColor_withCreditCardShouldReturnsAsExpected () {
    }
    
    // ???
    func test_maskedCardNumber_asExpected () {
    }
    
    // N/A?
    // var delegate
    
    // var cardDetailsUnavailableTitle
    func test_cardDetailsUnavailableTitleWithDefaultDataShouldReturnExpectedString() {
    }
    
    // var cardDetailsUnavailableDescription
    func test_cardDetailsUnavailableDescriptionWithDefaultDataShouldReturnExpectedString() {
    }
    
    // var cardDetailsUnavailableButtonTitle
    func test_cardDetailsUnavailableButtonTitleWithDefaultDataShouldReturnExpectedString() {
    }
    
    // N/A?
    // func numberOfSections
    
    // func checkValidCardStatus
    func test_checkValidCardStatusWithActiveCardShouldHaveValidStatus() {
    }
    func test_checkValidCardStatusWithExpiredCardShouldHaveInvalidStatus() {
    }
    
    // N/A?
    // func onNavigateToNextScreen
    
    // func onCardDetailsUnavailableButtonPressed
    func test_onCardDetailsUnavailableButtonPressedShouldDismiss() {
    }
    // func onCancelButtonPressed
    func test_onCancelButtonPressedPressedShouldDismiss() {
    }
    
    // N/A?
    // typealias CardViewStatusHandler
    // var cardViewStatusHandler
    
    // typealias CardInvalidMessageHandler
    // var cardInvalidMessageHandler
    func test_cardInvalidMessageHandlersWithInactiveCardShouldPresentDialog() {
    }
    
    // DELEGATES
    // func navigateToPinReminderScreen
    func test_navigateToPinReminder_Called () {
    }
    
    // func dismiss
    func test_dismissWith () {
    }
    
}
