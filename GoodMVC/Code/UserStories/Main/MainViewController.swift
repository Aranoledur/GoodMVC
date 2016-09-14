//
//  ViewController.swift
//  GoodMVC
//
//  Created by Nikolay Ischuk on 14.09.16.
//  Copyright © 2016 Nikolay Ischuk. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, MainViewDelegate {
    let model = MainModel()
    
    var mvc_view: MainView? {
        if let view = view as? MainView {
            return view
        }
        
        return nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItems = mvc_view?.rightBarButtonItems
    }
    
    // MARK: - MainViewDelegate
    
    func userWantToGoNext() {
        
    }
}

