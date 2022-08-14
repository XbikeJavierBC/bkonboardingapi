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
        switch self {
            case .onboarding:
                return BKOnBoardingViewController.instantiate(
                    fromStoryboard: self.getStoryboard(),
                    bundle: .module
                )
            case .pageOnBoardingControl:
                return BKOnBoardingPageViewController.instantiate(
                    fromStoryboard: self.getStoryboard(),
                    bundle: .module
                )
            case .extremelySimpleItemOnboarding:
                return BKExtremelySimpleOnBoardingItemViewController.instantiate(
                    fromStoryboard: self.getStoryboard(),
                    bundle: .module
                )
            case .seeProgressItemOnboarding:
                return BKSeeProgressOnBoardingItemViewController.instantiate(
                    fromStoryboard: self.getStoryboard(),
                    bundle: .module
                )
            case .trackTimeItemOnboarding:
                return BKTrackTimeOnBoardingItemViewController.instantiate(
                    fromStoryboard: self.getStoryboard(),
                    bundle: .module
                )
            default:
                return nil
        }
    }
    
    public func getViewModel() -> GHBaseViewModelProtocol? {
        switch self {
            case .onboarding:
                return BKOnBoardingViewModel()
            default:
                return nil
        }
    }
    
    func getStoryboard() -> String {
        return "BKOnBoarding"
    }
}
