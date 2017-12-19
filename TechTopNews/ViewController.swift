//
//  ViewController.swift
//  TechTopNews
//
//  Created by locklight on 2017/12/18.
//  Copyright © 2017年 locklight. All rights reserved.
//

import UIKit

let identifier = "cellIdentifier"

class ViewController: UIViewController {
    
    var dataSourceArr:[NewsModel] = []
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: self.view.bounds, style: .plain)
        tableView.dataSource = self
        tableView.register(UINib(nibName: "NewsCell", bundle: nil), forCellReuseIdentifier: identifier)
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 200
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addSubview(tableView)
        
    }
    
//    extension ViewController: UITableViewDataSource{
//        func tableView(_ tableView:UITableView,numberOfRowsInSection:Int) -> Int {
//            return dataSourceArr.count
//        }
//
//        func tableView(_ tableVIew:UITableView,cellforRowAt indexPath: IndexPath) -> UITableViewCell {
//            let cell = tableVIew.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
//            let model = dataSourceArr[indexPath.row]
//            return cell
//        }
    //    }extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSourceArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        let model = dataSourceArr[indexPath.row]
//        cell.newsModel = model
        return cell
    }
}

