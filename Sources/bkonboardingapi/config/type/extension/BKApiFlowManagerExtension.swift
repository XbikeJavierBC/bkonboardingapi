//
//  File.swift
//  
//
//  Created by Javier Carapia on 14/08/22.
//

import UIKit
import ghmjolnircore
import bksdkcore

extension BKApiFlow: GHManagerModelDelegate {
    public func getController() -> GHBaseViewControllerDelegate? {
        return BKOnBoardingViewController.instantiate(
            fromStoryboard: self.getStoryboard(),
            bundle: .module
        )
    }
    
    public func getViewModel() -> GHBaseViewModelProtocol? {
        return BKOnBoardingViewModel()
    }
    
    func getStoryboard() -> String {
        return "BKOnBoarding"
    }
}
