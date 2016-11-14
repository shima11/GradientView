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
        // Do any additional setup after loading the view, typically from a nib.
        
        let gradientView = GradientView(view: imageView)
        self.view.addSubview(gradientView)
        
        
        print(imageView.frame)
        print(gradientView.frame)
        
//        gradientView.backgroundColor = UIColor.red
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

