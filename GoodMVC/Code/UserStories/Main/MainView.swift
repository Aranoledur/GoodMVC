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
    @objc func userWantToGoNext()
}

class MainView: MVCView {
    
    // MARK: - Outlets
    
    weak var nextBarButtonItem: UIBarButtonItem!
    
    // MARK: - Lifecycle
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let view = NSBundle.mainBundle().loadNibNamed(nameOfClass, owner: self, options: nil).first as? UIView
        if let view = view {
            insertSubview(view, atIndex: 0)
            view.frame = bounds
            
            nextBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: #selector(nextItemTapped))
            
            rightBarButtonItems = [UIBarButtonItem]()
            rightBarButtonItems?.append(nextBarButtonItem)
        }
    }
    
    // MARK: - Delegate
    
    func setDelegate(delegate: MainViewDelegate) {
        nextBarButtonItem.action = #selector(delegate.userWantToGoNext)
    }
    
    @objc func nextItemTapped() {
        
    }
}