//
//  MainVC.swift
//  JLDouYuProject
//
//  Created by UCS on 2018/4/15.
//  Copyright © 2018年 Project. All rights reserved.
//

import UIKit

class MainVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChildVc(storyName: "Home")
        addChildVc(storyName: "Live")
        addChildVc(storyName: "Follow")
        addChildVc(storyName: "Mine")

        
    }
    
    private func addChildVc(storyName: String){
        //通过storeboard获取控制器
        let childVC = UIStoryboard(name : storyName, bundle : nil).instantiateInitialViewController()!
        //添加子控制器
        addChildViewController(childVC)
    }


}
