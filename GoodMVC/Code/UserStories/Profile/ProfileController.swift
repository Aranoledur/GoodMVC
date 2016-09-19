//
//  ProfileController.swift
//  GoodMVC
//
//  Created by Nikolay Ischuk on 19.09.16.
//  Copyright © 2016 Nikolay Ischuk. All rights reserved.
//

import UIKit

class ProfileController: Controller {
    
    let model = ProfileModel()
    private var headerController: ProfileHeaderController!
    private var contentController: ProfileContentController!

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let headerContoller = storyboard.instantiateViewController(withIdentifier: "ProfileHeaderControllerID")
        addChildViewController(headerContoller)
        headerController = headerContoller as! ProfileHeaderController
        headerController.model = model
    }
    
    var mvc_view: ProfileView? {
        if let view = view as? ProfileView {
            return view
        }
        
        return nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mvc_view?.setHeaderSubivew(view: headerController.view as! ProfileHeaderView)
        headerController.didMove(toParentViewController: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ProfileContentController" {
            contentController = segue.destination as! ProfileContentController
            contentController.model = model
        }
    }
}
