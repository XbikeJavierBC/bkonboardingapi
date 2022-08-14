//
//  File.swift
//  
//
//  Created by Javier Carapia on 14/08/22.
//

import ghmjolnircore
import bksdkcore

public class BKOnBoardingRegisterApi: BKSdkApiManagerProtocol {
    public static var flows: [GHManagerModel] = {
        let onBoardingType = BKApiFlow.onboarding
        let pageOnBoardingControlType = BKApiFlow.pageOnBoardingControl
        let extremelySimpleItemType = BKApiFlow.extremelySimpleItemOnboarding
        let seeProgressItemType = BKApiFlow.seeProgressItemOnboarding
        let trackTimeItemType = BKApiFlow.trackTimeItemOnboarding
        
        return [
            GHManagerModelBuilder()
                .withType(type: onBoardingType.rawValue)
                .withDelegate(delegate: onBoardingType)
                .withBundle(bundle: .module)
                .build(),
            GHManagerModelBuilder()
                .withType(type: pageOnBoardingControlType.rawValue)
                .withDelegate(delegate: pageOnBoardingControlType)
                .withBundle(bundle: .module)
                .build(),
            GHManagerModelBuilder()
                .withType(type: extremelySimpleItemType.rawValue)
                .withDelegate(delegate: extremelySimpleItemType)
                .withBundle(bundle: .module)
                .build(),
            GHManagerModelBuilder()
                .withType(type: seeProgressItemType.rawValue)
                .withDelegate(delegate: seeProgressItemType)
                .withBundle(bundle: .module)
                .build(),
            GHManagerModelBuilder()
                .withType(type: trackTimeItemType.rawValue)
                .withDelegate(delegate: trackTimeItemType)
                .withBundle(bundle: .module)
                .build(),
        ]
    }()
}
