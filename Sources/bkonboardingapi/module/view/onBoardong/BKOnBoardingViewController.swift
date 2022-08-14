//
//  File.swift
//  
//
//  Created by Javier Carapia on 14/08/22.
//

import UIKit
import ghgungnircore
import bksdkcore

public class BKOnBoardingViewController: BKBasePageViewController {
    //MARK: @IBOutlet
    @IBOutlet private var rootView: UIView! {
        didSet {
            rootView.backgroundColor = .orange
        }
    }

    @IBOutlet private weak var contentView: UIView! {
        didSet {
            contentView.backgroundColor = .clear
        }
    }
    
    internal var onBoardingViewModel: BKOnBoardingViewModelProtocol? {
        self.viewModel as? BKOnBoardingViewModel
    }
    
    //MARK: Life Cicle
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupUI()
    }
    
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.updateUI()
    }
    
    //MARK: @IBAction
    @IBAction func skipButtonAction(_ sender: Any) {
        
    }
    
    @IBAction func nextFlowButtonAction(_ sender: Any) {
        BKOnBoardingCoordinator.gotoDashboardFlow(
            manager: self.controllerManager
        )
    }
}
