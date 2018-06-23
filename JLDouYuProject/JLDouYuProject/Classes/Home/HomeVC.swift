//
//  HomeVC.swift
//  JLDouYuProject
//
//  Created by jiangliangwang on 2018/6/12.
//  Copyright © 2018年 Project. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //设置ui界面
        setupUI()
    }

}

extension HomeVC{
    
    private func setupUI() {
        //设置导航栏
        setupNavagationUI()
    }
    
    private func setupNavagationUI() {
        
        //设置左侧图标
        let button = UIButton()
        button.setImage(UIImage(named: "btn_column_selected"), for: .normal)
        button.sizeToFit()
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        
        //设置右侧图标
        let historybtn = UIButton()
        historybtn.setImage(UIImage(named: "btn_column_normal"), for: .normal)
        historybtn.setImage(UIImage(named: "btn_column_selected"), for: .highlighted)
        historybtn.sizeToFit()
        let historyitem = UIBarButtonItem(customView: historybtn)
        
        let searchbtn = UIButton()
        searchbtn.setImage(UIImage(named: "btn_column_normal"), for: .normal)
        searchbtn.setImage(UIImage(named: "btn_column_selected"), for: .highlighted)
        searchbtn.sizeToFit()
        let searchitem = UIBarButtonItem(customView: searchbtn)
        
        let qrcodebtn = UIButton()
        qrcodebtn.setImage(UIImage(named: "btn_column_normal"), for: .normal)
        qrcodebtn.setImage(UIImage(named: "btn_column_selected"), for: .highlighted)
        qrcodebtn.sizeToFit()
        let qrcodeitem = UIBarButtonItem(customView: qrcodebtn)
     
        navigationItem.rightBarButtonItems = [historyitem, searchitem, qrcodeitem]
        
    }
}
