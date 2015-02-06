//
//  ShareViewController.swift
//  ShareByMailExt
//
//  Created by Martin Normark on 06/02/15.
//  Copyright (c) 2015 Martin Normark. All rights reserved.
//

import UIKit
import Social

class ShareViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        self.navigationItem.title = "Share this"
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Cancel, target: self, action: "cancelButtonTapped:")
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Save, target: self, action: "saveButtonTapped:")
    }

    func saveButtonTapped(sender: UIBarButtonItem) {
        self.hideExtensionWithCompletionHandler({ (Bool) -> Void in
            self.extensionContext!.completeRequestReturningItems(nil, completionHandler: nil)
        })
    }
    
    func cancelButtonTapped(sender: UIBarButtonItem) {
        self.hideExtensionWithCompletionHandler({ (Bool) -> Void in
            self.extensionContext!.cancelRequestWithError(NSError())
        })
    }
    
    func hideExtensionWithCompletionHandler(completion:(Bool) -> Void) {
        UIView.animateWithDuration(0.20, animations: { () -> Void in
            self.navigationController!.view.transform = CGAffineTransformMakeTranslation(0, self.navigationController!.view.frame.size.height)
        },
        completion)
    }
}
