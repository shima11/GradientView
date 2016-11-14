//
//  GradientView.swift
//  GradientView
//
//  Created by shima jinsei on 2016/11/14.
//  Copyright © 2016年 Jinsei Shima. All rights reserved.
//

import UIKit

// グラデーションをかける方向
enum Direction {
    case vertical
    case horizontal
    case diagonalDown
    case diagonalUp
}

class GradientView: UIView {
    
    public var gradientColor: UIColor = UIColor.white {
        didSet {
            let midColor: UIColor = gradientColor.withAlphaComponent(0.7)
            let endColor: UIColor = gradientColor.withAlphaComponent(0.0)
            let gradientColors: [CGColor] = [gradientColor.cgColor, midColor.cgColor, endColor.cgColor]
            gradientLayer.colors = gradientColors
        }
    }
    
    public var direction: Direction = .horizontal {
        didSet {
            switch direction {
            case .horizontal:
                gradientLayer.startPoint = CGPoint(x:0, y:0.5);
                gradientLayer.endPoint = CGPoint(x:1.0, y:0.5);
            case .vertical:
                gradientLayer.startPoint = CGPoint(x:0.5, y:0);
                gradientLayer.endPoint = CGPoint(x:0.5, y:1.0);
            case .diagonalDown:
                gradientLayer.startPoint = CGPoint(x:0, y:0.0);
                gradientLayer.endPoint = CGPoint(x:1.0, y:1.0);
            case .diagonalUp:
                gradientLayer.startPoint = CGPoint(x:0, y:1.0);
                gradientLayer.endPoint = CGPoint(x:1.0, y:0.0);
            }
        }
    }
    
    private var gradientLayer: CAGradientLayer!

    public init(view: UIView) {
        super.init(frame: view.frame)
        setup(view: view)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup(view: UIView) {
        //グラデーションレイヤーを作成
        gradientLayer = CAGradientLayer()
        gradientLayer.frame = CGRect(x:0, y:0, width:view.frame.width, height:view.frame.height)
        
        // グラデーションの色の指定
        let midColor: UIColor = gradientColor.withAlphaComponent(0.7)
        let endColor: UIColor = gradientColor.withAlphaComponent(0.0)
        let gradientColors: [CGColor] = [gradientColor.cgColor, midColor.cgColor, endColor.cgColor]
        gradientLayer.colors = gradientColors
        
        // グラデーションのかかり具合
        gradientLayer.locations = [0.0, 0.5, 0.8]
        
        // グラデーションの方向（横）
        gradientLayer.startPoint = CGPoint(x:0, y:0.5);
        gradientLayer.endPoint = CGPoint(x:1.0, y:0.5);
        
        //グラデーションレイヤーをビューに追加        
        view.layer.addSublayer(gradientLayer)
    }

}
