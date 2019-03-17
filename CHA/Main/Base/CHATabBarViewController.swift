//
//  CHATabBarViewController.swift
//  CHA
//
//  Created by 马小撂 on 2019/3/15.
//  Copyright © 2019年 Taimei. All rights reserved.
//

import UIKit

class CHATabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
//        let walletVC = CHAWalletViewController()
//        let walletNav = UINavigationController(rootViewController: walletVC)
//        walletNav.tabBarItem.title = "钱包"
//        //alwaysOriginal 图片保持原来的颜色
//        walletNav.tabBarItem.image = UIImage(named: "tab_wallet_nor")?.withRenderingMode(.alwaysOriginal)
//        walletNav.tabBarItem.selectedImage = UIImage(named: "tab_wallet_sel")?.withRenderingMode(.alwaysOriginal)
//
//        let DappVC = CHADAppViewController()
//        let DappNav = UINavigationController(rootViewController: DappVC)
//        DappNav.title = "DApp"
//        DappNav.tabBarItem.image = UIImage(named: "tab_dapp_nor")?.withRenderingMode(.alwaysOriginal)
//        DappNav.tabBarItem.selectedImage = UIImage(named: "tab_dapp_sel")?.withRenderingMode(.alwaysOriginal)
//
//        let infomationVC = CHAInformationViewController()
//        let infomationNav = UINavigationController(rootViewController: infomationVC)
//        infomationNav.title = "资讯"
//        infomationNav.tabBarItem.image = UIImage(named: "tab_infomation_nor")?.withRenderingMode(.alwaysOriginal)
//        infomationNav.tabBarItem.selectedImage = UIImage(named: "tab_infomation_sel")?.withRenderingMode(.alwaysOriginal)
//
//        let settingVC = CHASettingViewController()
//        let settingNav = UINavigationController(rootViewController: settingVC)
//        settingNav.title = "设置"
//        UIImage.init().withRenderingMode
//        settingNav.tabBarItem.image = UIImage(named: "tab_setting_nor")?.withRenderingMode(.alwaysOriginal)
//
//        settingNav.tabBarItem.selectedImage = UIImage(named: "tab_setting_sel")?.withRenderingMode(.alwaysOriginal)
//
//        self.viewControllers = [walletNav,DappNav,infomationNav,settingNav]
        
        
        
        //------------------------分割线------------------------
        
        self.setUpChildViewController(viewController: CHAWalletViewController(), title: "钱包", image: UIImage(named: "tab_wallet_nor")!, selectImage: UIImage(named: "tab_wallet_sel")!)

        self.setUpChildViewController(viewController: CHADAppViewController(), title: "DApp", image: UIImage(named: "tab_dapp_nor")!, selectImage: UIImage(named: "tab_dapp_sel")!)

        self.setUpChildViewController(viewController: CHAInformationViewController(), title: "资讯", image: UIImage(named: "tab_infomation_nor")!, selectImage: UIImage(named: "tab_infomation_sel")!)

        self.setUpChildViewController(viewController: CHASettingViewController(), title: "设置", image: UIImage(named: "tab_setting_nor")!, selectImage: UIImage(named: "tab_setting_sel")!)
        
        
        //tabBar选中按钮的颜色
        self.tabBar.tintColor = UIColor.colorWithHex(hexStr: "#93599E")
        //tabBar未选中按钮的颜色
        self.tabBar.unselectedItemTintColor = UIColor.colorWithHex(hexStr: "#575769")
        //tabBarn背景颜色
        self.tabBar.barTintColor = UIColor.colorWithHex(hexStr: "#2D2D38")
        
    }
    
    func setUpChildViewController(viewController:UIViewController, title:NSString, image:UIImage, selectImage:UIImage) {
        
        let naviVC = UINavigationController(rootViewController: viewController)
        naviVC.tabBarItem = UITabBarItem(title: title as String, image: image.withRenderingMode(.alwaysOriginal), selectedImage: selectImage.withRenderingMode(.alwaysOriginal))
        self.addChild(naviVC)
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}



