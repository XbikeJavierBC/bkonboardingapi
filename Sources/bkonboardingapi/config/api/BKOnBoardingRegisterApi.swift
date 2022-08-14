//
//  File.swift
//  
//
//  Created by Javier Carapia on 14/08/22.
//

import ghmjolnircore
import bksdkcore

public class BKOnBoardingRegisterApi {
    public static var flows: [GHManagerModel] = {
        let type = BKApiFlow.onboarding
        
        return [
            GHManagerModelBuilder()
                .withType(type: type.rawValue)
                .withDelegate(delegate: type)
                .withBundle(bundle: .module)
                .build()
        ]
    }()
}
