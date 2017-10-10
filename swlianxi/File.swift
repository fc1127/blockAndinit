//
//  File.swift
//  swlianxi
//
//  Created by FC on 2017/10/10.
//  Copyright © 2017年 God bless never bug. All rights reserved.
//

import UIKit


extension UIButton{
//便利构造函数不负责创建对象
//    便利构造函数init 之后加？是检查后面参数是否存在 不存在直接返回 节省内存 需要加上
    convenience  init?(frame: CGRect, title:String, color:UIColor) {
        self.init()// 便利构造函数中需要对本类进行初始化 然后写属性值  普通构造函数是在init之前赋值
        self.frame=frame
        self.backgroundColor=color
        self.setTitle(title, for: .normal)
        self.layer.masksToBounds=true
        self.layer.cornerRadius=5
        
    }
    
}


extension UITextField{

    convenience init?(frame: CGRect , placeholder: String) {
        self.init()
        self.frame=frame
        self.placeholder=placeholder
        self.borderStyle = .line
    }
    
}
