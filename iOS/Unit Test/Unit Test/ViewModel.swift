//
//  ManageCardViewModel.swift
//  CoopComponents
//
//  Created by Joshua Okungbowa on 14/05/2020.
//  Copyright © 2020 Mayur. All rights reserved.
//

import Foundation
import CoopCore
import CoopUI
import i18
import UIKit

public enum CardLogo: String {
    case visaDebitLogo
    case visaLogo
}

public struct CardViewStatus {
    var isCardViewHidden: Bool
    var isTableViewHidden: Bool
}

public protocol CoopManageCardViewModelProtocol: ViewModel {
    // Handlers
    typealias CardViewStatusHandler = (Bool, CardViewStatus) -> Void
    var cardViewStatusHandler: CardViewStatusHandler? { get set }
    
    typealias CardInvalidMessageHandler = () -> Void
    var cardInvalidMessageHandler: CardInvalidMessageHandler? { get set }
    
    // Properties
    var navigationTitle: String { get }
    var cardLastDigits: NSAttributedString { get }
    var pinReminderText: String { get }
    var asterisksImage: UIImage? { get }
    var bankLogoImage: UIImage? { get }
    var cardTypeImage: UIImage? { get }
    var hiddenPINImage: UIImage? { get }
    var cardBackgroundColor: UIColor? { get }
    var delegate: CoopManageCardViewModelDelegate? { get set}

    var cardDetailsUnavailableTitle: String { get }
    var cardDetailsUnavailableDescription: String { get }
    var cardDetailsUnavailableButtonTitle: String { get }
        
    // TableView
    func numberOfSections() -> Int

    // Methos
    func checkValidCardStatus()
    func onNavigateToNextScreen()
    func onCardDetailsUnavailableButtonPressed()
    func onCancelButtonPressed()
}

public protocol CoopManageCardViewModelDelegate: class {
    func navigateToPinReminderScreen(_ model: PinReminderModel)
    func dismiss()
}

public class CoopManageCardViewModel: CoopManageCardViewModelProtocol {
    var model: PinReminderModel
    
    // Hnadlers
    public var cardViewStatusHandler: CardViewStatusHandler?
    public var cardInvalidMessageHandler: CardInvalidMessageHandler?
    
    public var delegate: CoopManageCardViewModelDelegate?

    // UI Properties
    public var navigationTitle: String { return geti18KeyFor("i18n.common.manageCard.navigation_title") }

    public var asterisksImage: UIImage? {
        return UIImage.standardImage(named: "asterisks", withTheme: true)
    }

    public var bankLogoImage: UIImage? {
        return UIImage.standardImage(named: "bankLogo", withTheme: true)
    }
    
    public var cardTypeImage: UIImage? {
        if model.cardTypeEnum() == CardType.debit {
            return UIImage.standardImage(named: CardLogo.visaDebitLogo.rawValue, withTheme: true)
        } else {
            return UIImage.standardImage(named: CardLogo.visaLogo.rawValue, withTheme: true)
        }
    }
    
    public var cardBackgroundColor: UIColor? {
        if model.cardTypeEnum() == CardType.debit {
            return Color.caCardBackground
        } else {
            return Color.ccCardBackground
        }
    }

    public var hiddenPINImage: UIImage? {
        return UIImage.standardImage(named: "hiddenPIN", withTheme: true)
    }

    public var pinReminderText: String {
        let name = "i18n.common.manage_card.pin_reminder.title"
        return geti18KeyFor(name)
    }

    public var cardDetailsUnavailableTitle: String {
        // "Card details unavailable"
        let name = "i18n.common.manage_card.error_dialog.title"
        return geti18KeyFor(name)
    }
    
    public var cardDetailsUnavailableDescription: String {
        // "Sorry, your card details are currently unavailable"
        let name = "i18n.common.manage_card.error_dialog.info"
        return geti18KeyFor(name)
    }
        
    public var cardDetailsUnavailableButtonTitle: String {
        // "Return to log in"
        let name = "i18n.common.manage_card.error_dialog.logout"
        return geti18KeyFor(name)
    }
    
    init(model: PinReminderModel) {
        self.model = model
    }

    public func checkValidCardStatus() {
        let cardStatus = model.cardStatusType()
        if    cardStatus == .new || cardStatus == .active {
            cardViewStatusHandler?(true, CardViewStatus(isCardViewHidden: false, isTableViewHidden: false))
        } else {
            cardViewStatusHandler?(false, CardViewStatus(isCardViewHidden: true, isTableViewHidden: true))
            cardInvalidMessageHandler?()
        }
    }
    
    public func onNavigateToNextScreen() {
        delegate?.navigateToPinReminderScreen(model)
    }

    public func onCardDetailsUnavailableButtonPressed() {
        delegate?.dismiss()
    }
    
    public func onCancelButtonPressed() {
        delegate?.dismiss()
    }
    
    public var cardLastDigits: NSAttributedString {
        NSAttributedString(string: model.cardLastDigits, attributes: [
           .foregroundColor: Color.whiteColor,
           .font: Fonts.shared.font(forTextStyle: .body)
       ])
    }

}

// MARK: UI representation
extension CoopManageCardViewModel {

    public func numberOfSections() -> Int {
        let expectedSections = 1
        return expectedSections
    }

}

