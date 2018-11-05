//
//  BaseUIView.swift
//  MVC
//
//  Created by mac on 11/6/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit

public class BaseUIView: UIView, ReuseableView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func initialize() {
        
    }
}
