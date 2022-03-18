//
//  SubViewController.swift
//  My UI Design
//
//  Created by 이정우 on 2022/03/09.
//

import UIKit
import Hero

class SubViewController: UIViewController {
    
    @IBOutlet weak var mainView : UIView!
    
    var gradientLayer : CAGradientLayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.hero.id = "main"
        
        gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.systemBlue.cgColor, CGColor(red: 0, green: 180/255, blue: 1, alpha: 1)]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
//        self.view.layer.addSublayer(gradientLayer)
        // Do any additional setup after loading the view.
    }
    
}



