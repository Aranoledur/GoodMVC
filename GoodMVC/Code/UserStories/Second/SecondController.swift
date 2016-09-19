//
//  SecondViewController.swift
//  GoodMVC
//
//  Created by Nikolay Ischuk on 14.09.16.
//  Copyright © 2016 Nikolay Ischuk. All rights reserved.
//

import UIKit

class SecondController: Controller {
    
    fileprivate let model = SecondModel()
    
    var mvc_view: SecondView? {
        if let view = view as? SecondView {
            return view
        }
        
        return nil
    }
    
}
