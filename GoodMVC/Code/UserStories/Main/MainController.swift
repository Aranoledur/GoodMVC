//
//  ViewController.swift
//  GoodMVC
//
//  Created by Nikolay Ischuk on 14.09.16.
//  Copyright © 2016 Nikolay Ischuk. All rights reserved.
//

import UIKit

class MainController: Controller, MainViewDelegate {
    let model = MainModel()
    var router: BaseRouter?
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        router = BaseRouter()
    }
    
    var mvc_view: MainView? {
        if let view = view as? MainView {
            return view
        }
        
        return nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItems = mvc_view?.rightBarButtonItems
        mvc_view?.setSliderValue(0.0)
        
        mvc_view?.delegate = self
        
        model.requestDataFromServerAndSyncWithCache {
            model in
            
            self.mvc_view?.setSliderValue(model.progress)
        }
    }
    
    // MARK: - MainViewDelegate
    
    func userWantToGoNext() {
        model.save()
        router?.performSegueWithIdentifier(identifier: "SecondViewController", fromController: self, sender: self)
    }
    
    func userWantToChangeSlider(_ value: Float) {
        model.progress = value
        print("Model progress: \(model.progress)")
        mvc_view?.setSliderValue(value)
    }
}
