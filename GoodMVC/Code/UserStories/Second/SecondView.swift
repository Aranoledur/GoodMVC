//
//  SecondView.swift
//  GoodMVC
//
//  Created by Nikolay Ischuk on 14.09.16.
//  Copyright © 2016 Nikolay Ischuk. All rights reserved.
//

import UIKit

protocol SecondViewDelegate: class {
    func userWantToOpenProfile()
}

class SecondView: MVCView {
    
    weak var delegate: SecondViewDelegate?

    @IBAction func profileButtonTapped(_ sender: AnyObject) {
        delegate?.userWantToOpenProfile()
    }
}
