//
//  BlackViewController.swift
//  My UI Design
//
//  Created by 이정우 on 2022/03/18.
//

import UIKit

class BlackViewController: UIViewController {
    
    @IBOutlet weak var blackView : UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let arr = [
                UIColor.systemRed.cgColor,
                UIColor.systemOrange.cgColor,
                UIColor.systemYellow.cgColor,
                UIColor.systemGreen.cgColor,
                UIColor.systemMint.cgColor,
                UIColor.systemBlue.cgColor,
                UIColor.systemPurple.cgColor,
                UIColor.systemPink.cgColor,
                UIColor.systemCyan.cgColor
        ]
        for i in 0...8{
            addRotationView(beginTime: Double(i), color: arr[i])
        }
        
    }
    
    func addRotationView(beginTime : Double, color : CGColor){
        let rotation : CABasicAnimation = CABasicAnimation(keyPath: "transform.rotation.z")
        rotation.toValue = NSNumber(value: Double.pi * 2)
        rotation.duration = 7.2
        rotation.isCumulative = true
        rotation.repeatCount = Float.greatestFiniteMagnitude
        rotation.beginTime = CACurrentMediaTime() + beginTime*20/10
        
        let layer = CALayer()
        layer.frame = blackView.layer.frame
        layer.backgroundColor = UIColor.clear.cgColor
        layer.borderColor = color
        layer.borderWidth = 3
        layer.add(rotation, forKey: "rotationAnimation")
        self.view.layer.addSublayer(layer)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let smileView = smileView()
        smileView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        smileView.backgroundColor = .clear
        self.view.addSubview(smileView)
    }
}

class smileView : UIView{
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(arcCenter: CGPoint(x: self.frame.midX, y: self.frame.midY), radius: 140, startAngle: 0, endAngle: (.pi * 360) / 180, clockwise: true)
        UIColor.systemBlue.setStroke()
        path.lineWidth = 3
        path.stroke()
        
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: rect.midX-50, y: rect.midY+20))
        path2.addCurve(to: CGPoint(x: rect.midX+50, y: rect.midY+20), controlPoint1: CGPoint(x: rect.midX-30, y: rect.midY+50+20), controlPoint2: CGPoint(x: rect.midX+30, y: rect.midY+50+20))
        UIColor.white.setStroke()
        path2.lineWidth = 3
        path2.stroke()
        
        let path3 = UIBezierPath(ovalIn: CGRect(x: rect.midX-50, y: rect.midY-50, width: 30, height: 30))
        UIColor.white.setFill()
        path3.fill()
        
        let path4 = UIBezierPath(ovalIn: CGRect(x: rect.midX+20, y: rect.midY-50, width: 30, height: 30))
        UIColor.white.setFill()
        path4.fill()
        
    }
}
