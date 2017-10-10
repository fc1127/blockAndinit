//
//  ViewController.swift
//  swlianxi
//
//  Created by FC on 2017/10/10.
//  Copyright © 2017年 God bless never bug. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
    lazy var tableview = UITableView()
    var mutablearray = [Person]()
    lazy var clickbtn = UIButton()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loaddata(success: { (personarray) in
            print(personarray)
            DispatchQueue.main.async {
                self.tableview.reloadData()
            }
            
        }) { (error) in
            print(error)
        }
        
        
        setupui()
    
    }
    
    
   private func setupui(){
        tableview.frame=CGRect(x: 0, y: 100, width: view.bounds.width, height: view.bounds.height-100)
        tableview.delegate=self
        tableview.dataSource=self
        view.addSubview(tableview)
    
       clickbtn=UIButton(frame: CGRect(x: 200, y: 30, width: 100, height: 30), title: "添加按钮", color: UIColor.purple)!
        clickbtn.addTarget(self, action: #selector(clickbtnnn), for: .touchUpInside)
        view.addSubview(clickbtn)
    
    }
    
     func clickbtnnn(){
        let second  = SecondViewController()
        self.present(second, animated: true, completion: nil)
        
            second.backblock = {
                
                self.mutablearray.append(second.per)
                self.tableview.reloadData()
        }
        
        
    }
    
    func loaddata(success:([Person])->(),field:(String)->()){
        DispatchQueue.global().async {
            for i in 0..<5{
                let per = Person()
                per.name = String(format: "第\(arc4random()%9999)行")
                per.age = i
                self.mutablearray.append(per)
            }
            
        }
        success(mutablearray)
        field("没有错误值")
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return  1
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mutablearray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: "resulid")
        cell.textLabel?.text=mutablearray[indexPath.row].name
        return cell
    }
    
    
    

}

