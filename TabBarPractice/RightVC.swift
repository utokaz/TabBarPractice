//
//  RightVC.swift
//  TabBarPractice
//
//  Created by uto kazuori on 2020/11/06.
//

import UIKit

class RightVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        // フッターの高さ分Viewの高さを調整
        view.frame.size.height = UIScreen.main.bounds.height - TabVC.footerHeight
    }
}
