//
//  File.swift
//  
//
//  Created by Javier Carapia on 14/08/22.
//

import UIKit

//MARK: DataSource
extension BKOnBoardingPageViewController: UIPageViewControllerDataSource {
    public func pageViewController(
        _ pageViewController: UIPageViewController,
        viewControllerBefore viewController: UIViewController
    ) -> UIViewController? {
        guard let currentIndex = self.pageList.firstIndex(of: viewController) else {
            return nil
        }
        
        return currentIndex == 0
                    ? self.pageList.last
                    : self.pageList[currentIndex - 1]
    }
    
    public func pageViewController(
        _ pageViewController: UIPageViewController,
        viewControllerAfter viewController: UIViewController
    ) -> UIViewController? {
        guard let currentIndex = self.pageList.firstIndex(of: viewController) else {
            return nil
        }
        
        return currentIndex < self.pageList.count - 1
                    ? self.pageList[currentIndex + 1]
                    : self.pageList.first
    }
}

//MARK: Delegate
extension BKOnBoardingPageViewController: UIPageViewControllerDelegate {
    public func pageViewController(
        _ pageViewController: UIPageViewController,
        didFinishAnimating finished: Bool,
        previousViewControllers: [UIViewController],
        transitionCompleted completed: Bool
    ) {
        guard let viewControllers = pageViewController.viewControllers,
                let currentIndex = self.pageList.firstIndex(of: viewControllers[0]) else {
            return
        }
        
        self.pageControl.currentPage = currentIndex
    }
}
