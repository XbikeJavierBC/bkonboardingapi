//
//  File.swift
//  
//
//  Created by Javier Carapia on 14/08/22.
//

import UIKit
import ghgungnircore
import bksdkcore

public class BKOnBoardingViewController: BKBaseViewController {
    //MARK: @IBOutlet
    @IBOutlet private var rootView: UIView! {
        didSet {
            rootView.backgroundColor = .orange
        }
    }

    @IBOutlet weak var contentView: UIView! {
        didSet {
            contentView.backgroundColor = .clear
        }
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupUI()
    }
    
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.updateUI()
    }
    
    public override func rightNavButtonSelector() {
        BKOnBoardingCoordinator.gotoDashboardFlow(
            manager: self.controllerManager
        )
    }
}
