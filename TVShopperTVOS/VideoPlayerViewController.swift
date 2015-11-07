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
        
//        player = AVPlayer(URL: NSURL(string: "http://hdjumbo.com/video/down/22897067/2444375/MDcyOWhia1krK0t5K0ExLzkwVUU2cW8rQWRTbzZJR0JTQ0RUS2F4d0NJUlZsNjQxNUE=/Happy+%28Pharrell+Williams%29+%28HDJumbo.Com%29.mp4")!)
//        player?.play()


        // Do any additional setup after loading the view.
    }
    
    func playVideo() {
        player = AVPlayer(URL: NSURL(string: "http://hdjumbo.com/video/down/22897067/2444375/MDcyOWhia1krK0t5K0ExLzkwVUU2cW8rQWRTbzZJR0JTQ0RUS2F4d0NJUlZsNjQxNUE=/Happy+%28Pharrell+Williams%29+%28HDJumbo.Com%29.mp4")!)
        player?.play()
        
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
