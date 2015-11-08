//
//  VideoPlayerViewController.swift
//  TVShopperTVOS
//
//  Created by Thanasi Stratigakis on 11/7/15.
//  Copyright © 2015 TVWatchers. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class VideoPlayerViewController: AVPlayerViewController, AVPlayerViewControllerDelegate{
    
    @IBAction func rightSwipeAction(sender: AnyObject) {
        print("RightSwipe")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.showsPlaybackControls = false
        
        var leftSwipe = UISwipeGestureRecognizer(target: self, action: Selector("handleSwipes:"))
        var rightSwipe = UISwipeGestureRecognizer(target: self, action: Selector("handleSwipes:"))
        var upSwipe = UISwipeGestureRecognizer(target: self, action: Selector("handelSwipes:"))
        var downSwipe = UISwipeGestureRecognizer(target: self, action: Selector("handleSwipes:"))
        
        
        leftSwipe.direction = .Left
        rightSwipe.direction = .Right
        upSwipe.direction = .Up
        downSwipe.direction = .Down
        
        view.addGestureRecognizer(leftSwipe)
        view.addGestureRecognizer(rightSwipe)
        view.addGestureRecognizer(upSwipe)
        view.addGestureRecognizer(downSwipe)

    }
    
    func playVideo() {
        player = AVPlayer(URL: NSURL(string: "https://trello-attachments.s3.amazonaws.com/563ab806b4340cec94805569/563ee83584168d9d18d79902/69acb94e95a0b9ddbd2b0dee7ae5f345/Masters_of_Code_Low.mp4")!)
        player?.play()
        
    }
    
    func handleSwipes(sender: UISwipeGestureRecognizer) {
        
        if (sender.direction == .Left) {
            print("Left Swipe")
        } else if (sender.direction == .Right) {
            print("Right Swipe")
            
        } else if (sender.direction == .Up) {
            print("Up Swipe")
        } else if (sender.direction == .Down) {
            print("Down Swipe")
        }
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
