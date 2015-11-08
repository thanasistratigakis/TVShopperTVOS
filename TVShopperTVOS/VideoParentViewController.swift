//
//  VideoParentViewController.swift
//  TVShopperTVOS
//
//  Created by Thanasi Stratigakis on 11/7/15.
//  Copyright © 2015 TVWatchers. All rights reserved.
//

import UIKit

class VideoParentViewController: UIViewController {
    
    @IBOutlet weak var popUpHeightConstraint: NSLayoutConstraint!
    

    
    
    
    let displayCarrotConstraintHeight: CGFloat = 130.0
    let displayAdConstraintHeight : CGFloat = 250.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //here you want to loop through self.childviewcontrollers - get the av one and config it
        
        //get the ref to the video player vc
        
        //here you want to setup the other child view cont  with ui
        
        let videoPlayer = self.childViewControllers[0] as! VideoPlayerViewController
        videoPlayer.playVideo()
        popUpHeightConstraint.constant = 0.0
        
        let popUp = self.childViewControllers[1] as? UIViewController
        
//        
//        var leftSwipe = UISwipeGestureRecognizer(target: self, action: Selector("handleSwipes:"))
//        var rightSwipe = UISwipeGestureRecognizer(target: self, action: Selector("handleSwipes:"))
//        var upSwipe = UISwipeGestureRecognizer(target: self, action: Selector("handelSwipes:"))
//        var downSwipe = UISwipeGestureRecognizer(target: self, action: Selector("handleSwipes:"))
//        
//        
//        leftSwipe.direction = .Left
//        rightSwipe.direction = .Right
//        upSwipe.direction = .Up
//        downSwipe.direction = .Down
//        
//        view.addGestureRecognizer(leftSwipe)
//        view.addGestureRecognizer(rightSwipe)
//        view.addGestureRecognizer(upSwipe)
//        view.addGestureRecognizer(downSwipe)
        ///////////////////////////
        
//        var swipeRight = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGesture:")
//        swipeRight.direction = UISwipeGestureRecognizerDirection.Right
//        self.view.addGestureRecognizer(swipeRight)
//        
//        var swipeDown = UISwipeGestureRecognizer(target: self, action: "respondToSwipeGesture:")
//        swipeDown.direction = UISwipeGestureRecognizerDirection.Down
//        self.view.addGestureRecognizer(swipeDown)
        
        
        
        print(self.view.canBecomeFocused())

        
    }
    
    
//    func handleSwipes(sender: UISwipeGestureRecognizer) {
//        
//        if (sender.direction == .Left) {
//            print("Left Swipe")
//        } else if (sender.direction == .Right) {
//            print("Right Swipe")
//            
//        } else if (sender.direction == .Up) {
//            print("Up Swipe")
//        } else if (sender.direction == .Down) {
//            print("Down Swipe")
//        }
////        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
////            
////            switch swipeGesture.direction {
////            case UISwipeGestureRecognizerDirection.Right:
////                print("Swiped right")
////            case UISwipeGestureRecognizerDirection.Down:
////                print("Swiped down")
////            default:
////                break
////            }
////        }
//    }
//    func requireGestureRecognizerToFail(_ otherGestureRecognizer: UIGestureRecognizer){
//        
//    }
//
//    
//    func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldReceiveTouch touch: UITouch) -> Bool {
//        return true
//    }
    
    override func viewDidAppear(animated: Bool) {
        displayCarrot()
        
        

    }
    

    
    // animate Carrot out
    func displayCarrot() {
        
        
        UIView.animateWithDuration(0.5, animations: {
            self.popUpHeightConstraint.constant = self.displayCarrotConstraintHeight
            self.view.layoutIfNeeded()
        })
        
    }
    
    // animate add out
    func displayAd() {
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            self.popUpHeightConstraint.constant = self.displayAdConstraintHeight
            self.view.layoutIfNeeded()
        })
        displayCarrot()
    }
    
    // animate carrot out carrot
    func dismissAll() {
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            self.popUpHeightConstraint.constant = 0
            self.view.layoutIfNeeded()
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
