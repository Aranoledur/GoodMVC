//
//  MainView.swift
//  GoodMVC
//
//  Created by Nikolay Ischuk on 14.09.16.
//  Copyright © 2016 Nikolay Ischuk. All rights reserved.
//

import UIKit

public extension NSObject{
    public class var nameOfClass: String {
        return NSStringFromClass(self).componentsSeparatedByString(".").last!
    }
    
    public var nameOfClass: String {
        return NSStringFromClass(self.dynamicType).componentsSeparatedByString(".").last!
    }
}

@objc protocol MainViewDelegate {
    func userWantToGoNext()
    func userWantToChangeSlider(value: Float)
}

class MainView: MVCView {
    
    weak var delegate: MainViewDelegate?
    
    // MARK: - Outlets
    
    @IBOutlet weak var centerSlider: UISlider!
    @IBOutlet weak var sliderLabel: UILabel!
    
    // MARK: - Public
    
    func setSliderValue(value: Float) {
        centerSlider.value = value
        sliderLabel.text = "Value: \(value)"
    }
    
    // MARK: - Actions
    
    @objc func nextBarButtonTapped(sender: UIBarButtonItem) {
        delegate?.userWantToGoNext()
    }
    
    @IBAction func sliderValueChanged(sender: UISlider) {
        delegate?.userWantToChangeSlider(sender.value)
    }
    
    // MARK: - Lifecycle
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let nextBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: #selector(nextBarButtonTapped))
        
        rightBarButtonItems = [UIBarButtonItem]()
        rightBarButtonItems?.append(nextBarButtonItem)
    }
}
