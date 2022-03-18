//
//  ViewController.swift
//  My UI Design
//
//  Created by 이정우 on 2022/02/22.
//

import UIKit
import Hero

class ViewController: UIViewController{
    
    @IBOutlet weak var firstView : UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstView.hero.id = "main"
    }
    
    
    @IBAction func tapView(_ sender: Any) {
        let storyboardName = "Main"
        let storyboardID = "VC2"

        let storyboard = UIStoryboard(name: storyboardName, bundle: Bundle.main)
        let vc2 = storyboard.instantiateViewController(identifier: storyboardID)

        vc2.hero.isEnabled = true
        vc2.hero.modalAnimationType = .selectBy(presenting: .auto, dismissing: .auto)
        vc2.modalPresentationStyle = .fullScreen
        
        present(vc2, animated: true, completion: nil)
    }
    


}

