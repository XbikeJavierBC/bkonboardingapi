//
//  File.swift
//  
//
//  Created by Javier Carapia on 14/08/22.
//

import UIKit
import TinyConstraints
import bksdkcore

extension BKOnBoardingViewController {
    func setupUI() {
        guard let pageViewController = BKApiFlow.pageOnBoardingControl.controller as? BKOnBoardingPageViewController else {
            return
        }
        
        self.addChild(pageViewController)
        pageViewController.didMove(toParent: self)
        pageViewController.view.translatesAutoresizingMaskIntoConstraints = false
        
        self.contentView.addSubview(pageViewController.view)
        pageViewController.view.edgesToSuperview()
        
        self.addNavButtonRight(
            text: BKOnBoardingLocalization.skip.localize
        )
    }
    
    func updateUI() {
        self.controllerManager?.setNavBarHiden(hidden: false)
        self.setDarkBackStyle(
            color: .white,
            font: .abelRegular20
        )
    }
}
