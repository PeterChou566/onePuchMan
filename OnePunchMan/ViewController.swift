//
//  ViewController.swift
//  OnePunchMan
//
//  Created by 周大剛 on 2016/8/11.
//  Copyright © 2016年 周大剛. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.hideKeyboardWhenTappedAround()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let secondViewController:ViewTwo = segue.destinationViewController as!ViewTwo
        secondViewController.outputName = nameField.text!
        
    }
    
    
}

// 擴充功能！！ 讓Keyboard可以自由伸縮。Extension讓你可以在其他swift檔使用
// 選擇要伸縮的頁面，在viewDidLoad裡面呼叫這個func及可！！
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
}

