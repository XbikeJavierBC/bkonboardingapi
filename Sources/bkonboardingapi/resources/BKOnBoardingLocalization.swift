//
//  File.swift
//  
//
//  Created by Javier Carapia on 14/08/22.
//

import Foundation

public enum BKOnBoardingLocalization: String {
    case extremelySimple
    case trackYourTime
    case seeYourProgress
    case skip
   
    public var localize: String {
        self.localizedString(
            key: self
        )
    }

    private func localizedString(key: BKOnBoardingLocalization) -> String {
        NSLocalizedString(
            key.rawValue,
            tableName: "bkonboardingapi",
            bundle: .module,
            comment: key.rawValue
        )
    }
}
