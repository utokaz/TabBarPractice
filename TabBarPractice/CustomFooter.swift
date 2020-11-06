//
//  CustomFooter.swift
//  TabBarPractice
//
//  Created by uto kazuori on 2020/11/06.
//

import UIKit

protocol CustomFooterDelegate: class {
    func leftBtnTapped()
    func rightBtnTapped()
}

class CustomFooter: UIView {
    
    @IBOutlet weak var leftBtn: UIButton!
    @IBOutlet weak var rightBtn: UIButton!
    weak var delegate: CustomFooterDelegate?
    
    init() {
        super.init(frame: .zero)
        let nib = UINib(nibName: "CustomFooter", bundle: nil).instantiate(withOwner: self, options: nil).first as! UIView
        nib.frame = bounds
        addSubview(nib)
        nib.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        // UIButtonにリスナーを設定
        leftBtn.addTarget(self, action: #selector(leftBtnTapped), for: .touchUpInside)
        rightBtn.addTarget(self, action: #selector(rightBtnTapped), for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc
    func leftBtnTapped() {
        delegate?.leftBtnTapped()
    }
    
    @objc
    func rightBtnTapped() {
        delegate?.rightBtnTapped()
    }
}
