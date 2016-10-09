//
//  ViewTwo.swift
//  OnePunchMan
//
//  Created by 周大剛 on 2016/8/11.
//  Copyright © 2016年 周大剛. All rights reserved.
//

import Foundation
import UIKit

class ViewTwo:UIViewController{
    
    // 第二頁資料 接收 第一頁資料
    @IBOutlet weak var enterNameLbl: UILabel!
    /* 因為要把第一頁的資料帶到第二頁，我們創作一個變數的理由，彷彿中介者，負責儲存完資料後，隨著Segue連結後，帶到第二頁使用。*/
    var outputName = String()
    
    @IBOutlet weak var goalTextField: UITextField!
    
    @IBOutlet weak var dayPlanned: UISegmentedControl!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        enterNameLbl.text = outputName
        
        self.hideKeyboardWhenTappedAround()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // prepareForSegue 不清楚要Prepare給誰，所以要善用Identifier!!!
        // 先前超可怕的Bug，在沒有If statement之前，會出現sigabrt error:could not convert viewController to ViewThree.
        if segue.identifier == "push2to3"{
            let thirdViewController:ViewThree = segue.destinationViewController as! ViewThree
                thirdViewController.outputGaol = goalTextField.text!
        
            var dayChoosed = 0
            switch dayPlanned.selectedSegmentIndex {
            case 0:
                dayChoosed = 14
            case 1:
                dayChoosed = 21
            case 2:
                dayChoosed = 30
            default:
                break
            }
        
        thirdViewController.targetTime = dayChoosed
            }
        }
    }
   
