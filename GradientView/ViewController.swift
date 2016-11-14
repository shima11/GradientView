//
//  ViewController.swift
//  GradientView
//
//  Created by shima jinsei on 2016/11/14.
//  Copyright © 2016年 Jinsei Shima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradientView = GradientView(view: imageView)
//        gradientView.direction = .diagonalUp
//        gradientView.gradientColor = UIColor.red
        self.view.addSubview(gradientView)
        
    }

}

