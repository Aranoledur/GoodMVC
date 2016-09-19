//
//  SecondViewController.swift
//  GoodMVC
//
//  Created by Nikolay Ischuk on 14.09.16.
//  Copyright © 2016 Nikolay Ischuk. All rights reserved.
//

import UIKit

class SecondController: Controller, SecondViewDelegate {
    
    fileprivate let model = SecondModel()
    var router: BaseRouter?
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        router = BaseRouter()
    }
    
    var mvc_view: SecondView? {
        if let view = view as? SecondView {
            return view
        }
        
        return nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mvc_view?.delegate = self
    }
    
    
    // MARK: - SecondViewDelegate
    
    func userWantToOpenProfile() {
        router?.performSegueWithIdentifier(identifier: "ProfileController", fromController: self, sender: self)
    }
    
}
