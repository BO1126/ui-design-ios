//
//  ToastViewController.swift
//  My UI Design
//
//  Created by 이정우 on 2022/03/25.
//

import UIKit
import Toast_Swift

class ToastViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchFirstToastButton(){
        self.view.makeToast("Hello World!")
    }
    
    @IBAction func touchSecondToastButton(){
        self.view.makeToast("Hello World!")
        self.view.makeToast("Hello World!", duration : 2, position : .center)
    }
    
    @IBAction func touchThirdToastButton(){
        var style = ToastStyle()
        style.messageColor = .systemBlue
        style.backgroundColor = .systemYellow
        self.view.makeToast("Hello World!", duration: 2, style: style)
    }
    
    
    @IBAction func touchForthToastButton(){
        self.view.makeToast("World!", title: "Hello", image: UIImage(named: "duck"))
    }
    
    @IBAction func touchFifthToastButton(){
        self.view.makeToast("Hello World!"){ didTap in
            if didTap {
                print("tap")
            } else {
                print("completion without tap")
            }
        }
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
