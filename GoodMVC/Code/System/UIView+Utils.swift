//
//  UIView+Utils.swift
//  GoodMVC
//
//  Created by Nikolay Ischuk on 19.09.16.
//  Copyright © 2016 Nikolay Ischuk. All rights reserved.
//

import UIKit

extension UIView {
    func addFullFrameSubivew(view: UIView) {
        addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            view.topAnchor.constraint(equalTo: topAnchor),
            view.bottomAnchor.constraint(equalTo: bottomAnchor),
            view.trailingAnchor.constraint(equalTo: trailingAnchor),
            view.leadingAnchor.constraint(equalTo: leadingAnchor)
            ])
    }
}
