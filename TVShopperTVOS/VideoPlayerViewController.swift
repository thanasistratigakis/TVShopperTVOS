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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = AVPlayer(URL: NSURL(string: "https://trello-attachments.s3.amazonaws.com/563ab806b4340cec94805569/563e7678b1f3afcd911bb309/0e268f3cd9412fa33d700a3cd840b5ff/Pharrell_Williams_-_Happy_(Official_Music_Video).mp4")!)
        player?.play()


        // Do any additional setup after loading the view.
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
