//
//  LableWithTextField.swift
//  MVC
//
//  Created by mac on 11/6/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit

class LableWithTextField: BaseUIView {

    //MARK: UI Element
    //  1.  Tạo Lable
    private let lableCodeNumber: UILabel = {
        let lableCodeNumber = UILabel()         //  Khởi tạo lableCodeNumber
        lableCodeNumber.text = "Mã số bệnh nhân / bác sĩ"   //  Gán giá trị
        lableCodeNumber.textColor = #colorLiteral(red: 0.1224973574, green: 0.2551002502, blue: 0.3952821791, alpha: 1)
        return lableCodeNumber
    }()
    
    //  2.  Tạo TextField 
    private let textFieldCodeNumber: UITextField = {
        let textFieldCodeNumber = UITextField()
        textFieldCodeNumber.placeholder = "  Nhập mã số"
        return textFieldCodeNumber
    }()
    
    //MARK: Object Lyfe Cycle
    override func initialize() {
        super.initialize()
        DislayLable()
        DislayTextField()
    }
    
    //MARK: Setup View
    private func DislayLable() {
        addSubview(lableCodeNumber)
        lableCodeNumber.snp.makeConstraints { (make) in
            //  Kích thước
                        make.width.equalTo(182)
                        make.height.equalTo(18)
            //  Toạ độ
            make.left.equalToSuperview()
            make.top.equalToSuperview()
        }
    }
    
    private func DislayTextField() {
        addSubview(textFieldCodeNumber)
        textFieldCodeNumber.snp.makeConstraints { (make) in
            //  Kích thước
                        make.width.equalTo(182)
                        make.height.equalTo(18)
            //  Toạ độ
            make.left.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
    

}
