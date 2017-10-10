//
//  SecondViewController.swift
//  swlianxi
//
//  Created by FC on 2017/10/10.
//  Copyright © 2017年 God bless never bug. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    
    lazy var field = UITextField()
    
    lazy var btn = UIButton()
    
    let per = Person()
    
    var backblock : (()->())?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor=UIColor.white
        setupui()
        field.text=per.name
    }
    
    private func setupui(){
    
        field = UITextField(frame: CGRect(x: 50, y: 200, width: 200, height: 30), placeholder: "输入姓名")!
        view.addSubview(field)
         btn = UIButton(frame: CGRect(x: 100, y: 300, width: 100, height: 30), title: "返回", color: UIColor.purple)!
        btn.addTarget(self, action: #selector(backclick), for: .touchUpInside)
        view.addSubview(btn)
        
        
    }
    func backclick() {
        
        self.dismiss(animated: true, completion: nil)

        per.name=field.text
        per.age=1000
        if (backblock != nil){
            backblock!()

        }
     
        
        
    }
    
    
    


}



































































































































































