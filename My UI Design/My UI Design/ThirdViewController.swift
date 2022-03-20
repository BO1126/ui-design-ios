//
//  ThirdViewController.swift
//  My UI Design
//
//  Created by 이정우 on 2022/03/18.
//

import UIKit
import Hero

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var mainView : UIView!
    @IBOutlet weak var whiteView : UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.hero.isEnabled = true
        mainView.hero.id = "main"
        whiteView.hero.modifiers = [.translate(y:1000), .delay(1)]
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapView(){
        let storyboardName = "Main"
        let storyboardID = "VC4"

        let storyboard = UIStoryboard(name: storyboardName, bundle: Bundle.main)
        let vc2 = storyboard.instantiateViewController(identifier: storyboardID)

        vc2.hero.isEnabled = true
        vc2.hero.modalAnimationType = .selectBy(presenting: .auto, dismissing: .auto)
        vc2.modalPresentationStyle = .fullScreen
        
        present(vc2, animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
