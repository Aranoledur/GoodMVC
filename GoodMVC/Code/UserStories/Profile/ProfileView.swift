//
//  ProfileView.swift
//  GoodMVC
//
//  Created by Nikolay Ischuk on 19.09.16.
//  Copyright © 2016 Nikolay Ischuk. All rights reserved.
//

import UIKit

class ProfileView: MVCView {

    @IBOutlet weak var headerSubview: UIView!
    @IBOutlet weak var contentSubview: UIView!
    
    func setHeaderSubivew(view: ProfileHeaderView) {
        headerSubview.addFullFrameSubivew(view: view)
    }
    
    func setContentSubview(view: ProfileContentView) {
        contentSubview.addFullFrameSubivew(view: view)
    }
}
