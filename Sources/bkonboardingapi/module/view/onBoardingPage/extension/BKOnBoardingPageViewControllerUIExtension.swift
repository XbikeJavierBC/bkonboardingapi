//
//  File.swift
//  
//
//  Created by Javier Carapia on 14/08/22.
//

import UIKit
import TinyConstraints
import bksdkcore

extension BKOnBoardingPageViewController {
    func setupUI() {
        guard let extremelySimpleItemViewController = BKApiFlow.extremelySimpleItemOnboarding.controller as? UIViewController,
              let seeProgressOnBoardingItemViewController = BKApiFlow.seeProgressItemOnboarding.controller as? UIViewController,
              let trackTimeOnBoardingItemViewController = BKApiFlow.trackTimeItemOnboarding.controller as? UIViewController else {
            return
        }
        
        self.pageList.append(
            contentsOf: [
                extremelySimpleItemViewController,
                seeProgressOnBoardingItemViewController,
                trackTimeOnBoardingItemViewController
            ]
        )
        
        self.dataSource = self
        self.delegate = self

        self.pageControl.addTarget(self, action: #selector(pageControlTappedAction), for: .valueChanged)

        self.setViewControllers(
            [self.pageList[self.initialPage]],
            direction: .forward,
            animated: true
        )
        
        self.pageControlStyle()
    }
    
    private func pageControlStyle() {
        self.pageControl.translatesAutoresizingMaskIntoConstraints = false
        self.pageControl.currentPageIndicatorTintColor = .white
        self.pageControl.pageIndicatorTintColor = .black
        self.pageControl.numberOfPages = self.pageList.count
        self.pageControl.currentPage = self.initialPage
        
        self.view.addSubview(self.pageControl)
        
        self.pageControl.leadingToSuperview()
        self.pageControl.trailingToSuperview()
        self.pageControl.bottom(to: self.view, nil, offset: -16, relation: .equal, priority: .defaultHigh, isActive: true)
        self.pageControl.height(20)
    }
    
    @objc func pageControlTappedAction(_ sender: UIPageControl) {
        self.setViewControllers(
            [self.pageList[sender.currentPage]],
            direction: .forward,
            animated: true
        )
    }
}
