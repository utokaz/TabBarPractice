//
//  TabVC.swift
//  TabBarPractice
//
//  Created by uto kazuori on 2020/11/06.
//

import UIKit

class TabVC: UITabBarController {
    
    static let footerHeight: CGFloat = 60
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.isHidden = true
        setOriginalFooter()
    }
    
    func setOriginalFooter() {
        // フッターの設定
        let footer = CustomFooter()
        footer.delegate = self
        view.addSubview(footer)
        footer.frame = CGRect(x: 0, y: view.bounds.maxY - TabVC.footerHeight, width: view.bounds.maxX, height: TabVC.footerHeight)
    }
    
}

extension TabVC: CustomFooterDelegate {
    func leftBtnTapped() {
        selectedViewController = viewControllers?[0]
    }
    
    func rightBtnTapped() {
        selectedViewController = viewControllers?[1]
    }
    
    
}
