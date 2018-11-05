//
//  BaseViewController.swift
//  MVC
//
//  Created by mac on 11/6/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit

protocol ReuseableView {
    func initialize()
}

public class BaseViewController: UIViewController, ReuseableView {
    
    func initialize() {
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad() 
        initialize()
    }
}
