//
//  File.swift
//  
//
//  Created by Javier Carapia on 14/08/22.
//

import bksdkcore
import ghmjolnircore

public struct BKOnBoardingCoordinator: BKOnBoardingCoordinatorProtocol {
    public static func gotoDashboardFlow(manager: GHManagerController?) {
        manager?.presentNavigationViewController(
            managerModel: try! BKApiFlow.dashboard.modelManager
        )
    }
}
