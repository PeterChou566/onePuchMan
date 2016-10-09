//
//  ViewThree.swift
//  OnePunchMan
//
//  Created by 周大剛 on 2016/8/11.
//  Copyright © 2016年 周大剛. All rights reserved.
//

import Foundation
import UIKit

class ViewThree: UIViewController {
    
    @IBOutlet weak var enterGoal: UILabel!
    var outputGaol = String()
    
    @IBOutlet weak var targetTimeLbl: UILabel!
    @IBOutlet weak var currentTimeLbl: UILabel!
    
    
    @IBOutlet weak var reset: UIButton!
    @IBOutlet weak var counter: UIButton!
    
    var currentTime = 0
    var targetTime = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        enterGoal.text = outputGaol
        
        //print(targetTimeLbl.text)
        targetTimeLbl.text = String(targetTime)
        
        //print("currentTime:\(currentTime)")
        currentTimeLbl.text = String(currentTime)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func resetAction(sender: AnyObject) {
        // 彈出通知！！
        let alertController = UIAlertController(
            title: "Watch Out!",
            message: "Are you sure to reset to 0 ?",
            preferredStyle: UIAlertControllerStyle.Alert
        )
        
        let cancelAction = UIAlertAction(
            title: "Cancel",
            style: UIAlertActionStyle.Destructive) { (action) in
                // ...the thing you want to do
        }
        
        let confirmAction = UIAlertAction(
        title: "OK", style: UIAlertActionStyle.Default) { (action) in
            self.currentTime = 0
            self.currentTimeLbl.text = String(self.currentTime)
        }
        
        alertController.addAction(confirmAction)
        alertController.addAction(cancelAction)
        
        presentViewController(alertController, animated: true, completion: nil)
        
    }
    
    
    @IBAction func counterAction(sender: AnyObject) {
        
        // Counter works!! You can test it by printing.
        currentTime += 1
        currentTimeLbl.text = String(currentTime)
        print(targetTime)
        print("hit")
        
        //Once currentTime is equal to targetTime,Get to ViewFour and get the reward. You can only back to firstView at ViewFour.
        if currentTime == targetTime{
            self.performSegueWithIdentifier("View3to4segue", sender: self)
            
        }
        
    }
    
}