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
    @IBOutlet weak var whiteView : UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.hero.isEnabled = true
        mainView.hero.id = "top"
        self.view.hero.id = "main"
        whiteView.hero.modifiers = [.translate(y:1000)]
//        whiteView.clipsToBounds = true
//        whiteView.layer.cornerRadius = 30
//        mainView.clipsToBounds = true
//        mainView.layer.cornerRadius = 50
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapView(){
        let storyboardName = "Main"
        let storyboardID = "VC3"

        let storyboard = UIStoryboard(name: storyboardName, bundle: Bundle.main)
        let vc2 = storyboard.instantiateViewController(identifier: storyboardID)

        vc2.hero.isEnabled = true
        vc2.hero.modalAnimationType = .selectBy(presenting: .slide(direction: .left), dismissing: .auto)
        vc2.modalPresentationStyle = .fullScreen
        
        present(vc2, animated: true, completion: nil)
    }
    
}



