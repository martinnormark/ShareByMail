//
//  EntryViewController.swift
//  ShareByMail
//
//  Created by Martin Normark on 06/02/15.
//  Copyright (c) 2015 Martin Normark. All rights reserved.
//

import UIKit

@objc(EntryViewController)

class EntryViewController : UINavigationController {
    
    override init() {
        super.init(rootViewController: ShareViewController())
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.view.transform = CGAffineTransformMakeTranslation(0, self.view.frame.size.height)
        
        UIView.animateWithDuration(0.25, animations: { () -> Void in
            self.view.transform = CGAffineTransformIdentity
        })
    }
}