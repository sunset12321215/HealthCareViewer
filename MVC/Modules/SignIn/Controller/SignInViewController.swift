//
//  ManHinh1.swift
//  MVC
//
//  Created by mac on 11/5/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit
import SnapKit

class SignInViewController: BaseViewController {
    //  MARK: Propertis
    
    //  MARK: UI Element
    //  1.  logo
    private let logo: UIImageView = {
        var logo = UIImageView()                //  Khởi tạo logo
        logo.image = UIImage(named: "Logo")     //  gán biến cho logo
        return logo
    }()
    
    let patientInputView: LableWithTextField = {
        let patientInputView = LableWithTextField()
        return patientInputView
    }()
    
    //  MARK: Life Cycle
    override func initialize() {        //  View Did Load
        super.initialize()
        DislayLogo()
        DislayLableWithTextFieldID()
        
//        DislayLablePass()
//        DislayTextFieldPass()
    }

    //  MARK: Setup View
    private func DislayLogo() {
        view.addSubview(logo)                   //  Thêm Logo vào view
        logo.snp.makeConstraints { (make) in    //  Tạo Constraint
            //          Kích thước
                        make.width.equalTo(97)
                        make.height.equalTo(42)
            //          Toạ độ
            make.centerX.equalToSuperview()
            make.top.equalTo(79)
        }
    }
    
    private func DislayLableWithTextFieldID() {
        view.addSubview(patientInputView)
        patientInputView.snp.makeConstraints { (make) in
            make.top.equalTo(logo).offset(100)
            make.left.equalToSuperview().offset(42)
        }
    }
    
//    private func DislayLablePass() {
//        view.addSubview(lablePass)
//        lablePass.snp.makeConstraints { (make) in
//            //  Kích thước
//            //            make.width.equalTo(182)
//            //            make.height.equalTo(18)
//            //  Toạ độ
//            make.left.equalTo(42)
//            make.top.equalTo(textFieldCodeNumber.snp.bottom).offset(30)
//        }
//    }
//
//    private func DislayTextFieldPass() {
//        view.addSubview(textFieldPass)
//        textFieldPass.snp.makeConstraints { (make) in
//            //  Kích thước
//            //            make.width.equalTo(182)
//            //            make.height.equalTo(18)
//            //  Toạ độ
//            make.left.equalTo(42)
//            make.top.equalTo(lablePass.snp.bottom).offset(20)
//        }
//    }
}
