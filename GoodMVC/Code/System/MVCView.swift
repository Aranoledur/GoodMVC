//
//  MVCView.swift
//  GoodMVC
//
//  Created by Nikolay Ischuk on 14.09.16.
//  Copyright © 2016 Nikolay Ischuk. All rights reserved.
//

import UIKit

class MVCView: UIView {
    
    var leftBarButtonItems: [UIBarButtonItem]?
    var rightBarButtonItems: [UIBarButtonItem]?
    
    // MARK: - Lifecycle
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let view = Bundle.main.loadNibNamed(nameOfClass, owner: self, options: nil)?.first as? UIView
        if let view = view {
            insertSubview(view, at: 0)
            view.frame = bounds
        }
    }
}
