//
//  File.swift
//  
//
//  Created by Javier Carapia on 14/08/22.
//

import UIKit
import bksdkcore

class BKOnBoardingPageViewController: BKBasePageViewController {
    //MARK: Variables
    internal lazy var pageList: [UIViewController] = []
    internal lazy var pageControl = UIPageControl()
    internal let initialPage = 0
    
    //MARK: Life Cicle
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupUI()
    }
}
