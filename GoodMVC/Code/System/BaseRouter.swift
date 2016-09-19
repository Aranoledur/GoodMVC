//
//  BaseRouter.swift
//  GoodMVC
//
//  Created by Nikolay Ischuk on 19.09.16.
//  Copyright © 2016 Nikolay Ischuk. All rights reserved.
//

import Foundation

class BaseRouter {
    func performSegueWithIdentifier(identifier: String, fromController: Controller, sender: Any?) {
        fromController.performSegue(withIdentifier: identifier, sender: sender)
    }
}
