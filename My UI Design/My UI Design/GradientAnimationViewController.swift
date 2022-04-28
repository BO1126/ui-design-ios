//
//  GradientAnimationViewController.swift
//  My UI Design
//
//  Created by 이정우 on 2022/04/28.
//

import UIKit

class GradientAnimationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradient = CAGradientLayer()
        gradient.frame = self.view.frame
        gradient.colors = [
            UIColor.systemPink.cgColor,
            UIColor.systemCyan.cgColor,
            UIColor.systemGreen.cgColor
        ]
        gradient.startPoint = CGPoint(x:0, y:0)
        gradient.endPoint = CGPoint(x:1, y:1)
        self.view.layer.addSublayer(gradient)
        
        let gradientChangeAnimation = CABasicAnimation(keyPath: "colors")
        gradientChangeAnimation.duration = 5.0
        gradientChangeAnimation.toValue = [
            UIColor.systemCyan.cgColor,
            UIColor.systemGreen.cgColor,
            UIColor.systemPink.cgColor
            ]
        gradientChangeAnimation.fillMode = CAMediaTimingFillMode.forwards
        gradientChangeAnimation.isRemovedOnCompletion = false
        gradientChangeAnimation.beginTime = CACurrentMediaTime()
        
        let gradientChangeAnimation2 = CABasicAnimation(keyPath: "colors")
        gradientChangeAnimation2.duration = 5.0
        gradientChangeAnimation2.toValue = [
            UIColor.systemGreen.cgColor,
            UIColor.systemPink.cgColor,
            UIColor.systemCyan.cgColor
            ]
        gradientChangeAnimation2.fillMode = CAMediaTimingFillMode.forwards
        gradientChangeAnimation2.isRemovedOnCompletion = false
        gradientChangeAnimation2.beginTime = CACurrentMediaTime() + 5
        
        let gradientChangeAnimation3 = CABasicAnimation(keyPath: "colors")
        gradientChangeAnimation3.duration = 5.0
        gradientChangeAnimation3.toValue = [
            UIColor.systemPink.cgColor,
            UIColor.systemCyan.cgColor,
            UIColor.systemGreen.cgColor
        ]
        gradientChangeAnimation3.fillMode = CAMediaTimingFillMode.forwards
        gradientChangeAnimation3.isRemovedOnCompletion = false
        gradientChangeAnimation3.beginTime = CACurrentMediaTime() + 10

        
        gradient.add(gradientChangeAnimation, forKey: "colorChange1")
        gradient.add(gradientChangeAnimation2, forKey: "colorChange2")
        gradient.add(gradientChangeAnimation3, forKey: "colorChange3")
        // Do any additional setup after loading the view.
    }
    

}
