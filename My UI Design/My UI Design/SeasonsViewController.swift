//
//  SeasonsViewController.swift
//  My UI Design
//
//  Created by 이정우 on 2022/04/05.
//

import UIKit
import Lottie

class SeasonsViewController: UIViewController {
    
    let rectView = UIView()
    let springView : AnimationView = .init(name: "84132-cherry-blossom")
    let summerView : AnimationView = .init(name: "83728-sunflower")
    let autumnView : AnimationView = .init(name: "83729-maple-leaves")
    let winterView : AnimationView = .init(name: "83730-winter-snow")
    
    var seasonNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rectView.frame = CGRect(x: self.view.frame.midX-150, y: self.view.frame.midY-150, width: 300, height: 300)
        rectView.layer.borderWidth = 5
        rectView.layer.borderColor = UIColor.systemPink.cgColor
        rectView.clipsToBounds = true
        rectView.layer.cornerRadius = 30
        self.view.addSubview(rectView)
        
        addSeasonView(rectView: rectView,seasonView: springView)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeViewSeason(){
        seasonNumber += 1
        if seasonNumber == 4{
            seasonNumber = 0
        }
        switch seasonNumber{
        case 0:
            UIView.animate(withDuration: 1, animations: {
                self.winterView.alpha = 0
            })
            springView.alpha = 0
            addSeasonView(rectView: rectView,seasonView: springView)
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+1) {
                UIView.animate(withDuration: 1, animations: {
                    self.rectView.layer.borderColor = UIColor.systemPink.cgColor
                    self.springView.alpha = 1
                })
            }
            break
        case 1:
            UIView.animate(withDuration: 1, animations: {
                self.springView.alpha = 0
            })
            summerView.alpha = 0
            addSeasonView(rectView: rectView,seasonView: summerView)
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+1) {
                UIView.animate(withDuration: 1, animations: {
                    self.rectView.layer.borderColor = UIColor.systemYellow.cgColor
                    self.summerView.alpha = 1
                })
            }
            break
        case 2:
            UIView.animate(withDuration: 1, animations: {
                self.summerView.alpha = 0
            })
            autumnView.alpha = 0
            addSeasonView(rectView: rectView,seasonView: autumnView)
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+1) {
                UIView.animate(withDuration: 1, animations: {
                    self.rectView.layer.borderColor = UIColor.systemOrange.cgColor
                    self.autumnView.alpha = 1
                })
            }
            break
        case 3:
            UIView.animate(withDuration: 1, animations: {
                self.autumnView.alpha = 0
            })
            winterView.alpha = 0
            addSeasonView(rectView: rectView,seasonView: winterView)
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+1) {
                UIView.animate(withDuration: 1, animations: {
                    self.rectView.layer.borderColor = UIColor.white.cgColor
                    self.winterView.alpha = 1
                })
            }
            break
        default:
            print("Season error")
            break
        }
        
    }
    
    func addSeasonView(rectView : UIView, seasonView : AnimationView){
        seasonView.frame = CGRect(x: 0, y: 0, width: rectView.frame.width, height: rectView.frame.height)
        seasonView.backgroundColor = .systemCyan
        rectView.addSubview(seasonView)
        seasonView.play()
        seasonView.loopMode = .loop
    }

}
