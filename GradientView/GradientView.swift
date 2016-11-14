//
//  GradientView.swift
//  GradientView
//
//  Created by shima jinsei on 2016/11/14.
//  Copyright © 2016年 Jinsei Shima. All rights reserved.
//

import UIKit

class GradientView: UIView {
 
    init(view: UIView) {
        super.init(frame: view.frame)
        setup(view: view)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(view: UIView) {
        let topColor = UIColor.white // 開始色
        let bottomColor = UIColor.white.withAlphaComponent(0.0) // 終了色
        let gradientColors: [CGColor] = [topColor.cgColor, bottomColor.cgColor]
        
        //グラデーションレイヤーを作成
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.frame = CGRect(x:0, y:0, width:view.frame.width, height:view.frame.height)
        
        // グラデーションの方向（横）
        gradientLayer.startPoint = CGPoint(x:0, y:0.5);
        gradientLayer.endPoint = CGPoint(x:1.0, y:0.5);
        
        //グラデーションの色をレイヤーに割り当てる
        gradientLayer.colors = gradientColors
        
        gradientLayer.locations = [0.1, 0.6]
        
        //グラデーションレイヤーをビューに追加        
        view.layer.addSublayer(gradientLayer)
    }

}
