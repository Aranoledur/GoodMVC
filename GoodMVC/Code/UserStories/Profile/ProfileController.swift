//
//  ProfileController.swift
//  GoodMVC
//
//  Created by Nikolay Ischuk on 19.09.16.
//  Copyright © 2016 Nikolay Ischuk. All rights reserved.
//

import UIKit

class ProfileController: Controller {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let headerContoller = storyboard.instantiateViewController(withIdentifier: "ProfileHeaderControllerID")
        addChildViewController(headerContoller)
    }
}
