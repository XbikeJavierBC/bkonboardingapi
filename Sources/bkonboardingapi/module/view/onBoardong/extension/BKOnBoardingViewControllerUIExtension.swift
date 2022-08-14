//
//  File.swift
//  
//
//  Created by Javier Carapia on 14/08/22.
//

import UIKit
import TinyConstraints

extension BKOnBoardingViewController {
    func setupUI() {
        self.dataSource = self
        self.delegate = self
        
        self.pageControl.addTarget(self, action: #selector(pageControlTappedAction), for: .valueChanged)
        
        let controller01 = UIViewController()
        let controller02 = UIViewController()
        let controller03 = UIViewController()
        
        self.pageList.append(
            contentsOf: [
                controller01,
                controller02,
                controller03
            ]
        )
        
        self.setViewControllers(
            [self.pageList[self.initialPage]],
            direction: .forward,
            animated: true
        )
    }
    
    private func pageControlStyle() {
        self.pageControl.translatesAutoresizingMaskIntoConstraints = false
        self.pageControl.currentPageIndicatorTintColor = .black
        self.pageControl.pageIndicatorTintColor = .systemGray2
        self.pageControl.numberOfPages = self.pageList.count
        self.pageControl.currentPage = self.initialPage
        
        self.view.addSubview(self.pageControl)
        
        self.pageControl.leadingToSuperview()
        self.pageControl.trailingToSuperview()
        self.pageControl.bottomToSuperview()
        self.pageControl.height(20)
    }
    
    func updateUI() {
        
    }
    
    @objc func pageControlTappedAction(_ sender: UIPageControl) {
        self.setViewControllers(
            [self.pageList[sender.currentPage]],
            direction: .forward,
            animated: true
        )
    }
}
