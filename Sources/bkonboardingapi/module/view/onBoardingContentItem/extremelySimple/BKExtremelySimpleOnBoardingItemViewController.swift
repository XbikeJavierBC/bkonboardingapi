//
//  File.swift
//  
//
//  Created by Javier Carapia on 14/08/22.
//

import UIKit
import bksdkcore

class BKExtremelySimpleOnBoardingItemViewController: BKBaseViewController {
    @IBOutlet weak var logoImageView: UIImageView! {
        didSet {
            logoImageView.image = UIImage(
                named: "easy_icon",
                find: .sdk
            )
        }
    }
    
    @IBOutlet weak var descriptionLabel: UILabel! {
        didSet {
            descriptionLabel.font = .abelRegular30
            descriptionLabel.textColor = .white
            descriptionLabel.numberOfLines = 0
            descriptionLabel.text = BKOnBoardingLocalization.extremelySimple.localize
        }
    }
}
