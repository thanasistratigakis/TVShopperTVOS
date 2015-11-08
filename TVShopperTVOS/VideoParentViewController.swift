//
//  VideoParentViewController.swift
//  TVShopperTVOS
//
//  Created by Thanasi Stratigakis on 11/7/15.
//  Copyright © 2015 TVWatchers. All rights reserved.
//

import UIKit
import AVKit


class VideoParentViewController: UIViewController {
    
    @IBOutlet weak var popUpHeightConstraint: NSLayoutConstraint!
    

    @IBOutlet weak var checkImage: UIImageView!
    
    
    var currentItem: PFObject!
    
    var popUpAdChild: popUpAdViewController?
    var playerChild: AVPlayerViewController?
    
    var secondsElapsed: Int = 0

    
    let displayCarrotConstraintHeight: CGFloat = 130.0
    let displayAdConstraintHeight : CGFloat = 280.0
    
    var state: Int = 0
    var adNum: Int = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        checkImage.alpha = 0.0
        
        let tap = UITapGestureRecognizer(target: self, action: "tapped:")
        tap.allowedPressTypes = [NSNumber(integer: UIPressType.Select.rawValue)]
        view.addGestureRecognizer(tap)
        
        popUpAdChild = self.childViewControllers[1].childViewControllers[0] as! popUpAdViewController

        playerChild = self.childViewControllers[0] as! AVPlayerViewController

        
        let videoPlayer = self.childViewControllers[0] as! VideoPlayerViewController
        videoPlayer.playVideo()
        popUpHeightConstraint.constant = 0.0
        
        let popUp = self.childViewControllers[1] as? UIViewController
        
        
        var leftSwipe = UISwipeGestureRecognizer(target: self, action: Selector("handleSwipes:"))
        var rightSwipe = UISwipeGestureRecognizer(target: self, action: Selector("handleSwipes:"))
        var upSwipe = UISwipeGestureRecognizer(target: self, action: Selector("handleSwipes:"))
        var downSwipe = UISwipeGestureRecognizer(target: self, action: Selector("handleSwipes:"))
        
        
        leftSwipe.direction = .Left
        rightSwipe.direction = .Right
        upSwipe.direction = .Up
        downSwipe.direction = .Down
        
        view.addGestureRecognizer(leftSwipe)
        view.addGestureRecognizer(rightSwipe)
        view.addGestureRecognizer(upSwipe)
        view.addGestureRecognizer(downSwipe)
        
        queryBoostedBoard()
    }
    
    func tapped(gesture: UITapGestureRecognizer) {
        print("click")
        moveDown()
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            self.checkImage.alpha = 1.0
        })
        UIView.animateWithDuration(1.5, animations: { () -> Void in
            self.checkImage.alpha = 0.0
        })

        
    }
    

    func handleSwipes(sender: UISwipeGestureRecognizer) {
        
        if (sender.direction == .Left) {
            print("Left Swipe")
        } else if (sender.direction == .Right) {
            print("Right Swipe")
//            ParseHelper.queryItemForName("Boosted Electric Skateboard", callBack: updateAd)
            queryIPhone()
            print("query call")
        } else if (sender.direction == .Up) {
            print("Up Swipe")
            moveUp()
        } else if (sender.direction == .Down) {
            print("Down Swipe")
            moveDown()
        }
    }
    
    func queryBoostedBoard() {
        let query = PFQuery(className:"Items")
        query.getObjectInBackgroundWithId("KXE4JIeG7P") {
            (product: PFObject?, error: NSError?) -> Void in
            if error == nil && product != nil {
                
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                
                self.popUpAdChild?.productNameLabel.text = product?.objectForKey("Name") as? String
                self.popUpAdChild?.companyNameLabel.text = product?.objectForKey("Company") as? String
            
                self.popUpAdChild?.priceLabel.text = "$" + String(product?.objectForKey("Price") as! Int)
                //self.popUpAdChild?.imageView.image = product?.objectForKey("Picture") as! UIImage
                
                
                    //if let imageURL = NSBundle.mainBundle().URLForResource("imageName", withExtension: "jpg")
                    
                    let url = NSURL(string : "http://files.parsetfss.com/dfb167dc-c199-4ab6-992b-1246f0e39d45/tfss-1aba9163-28a3-4146-970b-1c28a6e96bbe-boosted.png")
                        let data = NSData(contentsOfURL: url!)

                            self.popUpAdChild?.imageView.image = UIImage(data: data!)
                })

            } else {
                print(error)
            }
        }
    }
    
    
    
    func queryIPhone() {
        let query = PFQuery(className:"Items")
        query.getObjectInBackgroundWithId("NxkNHPjSns") {
            (product: PFObject?, error: NSError?) -> Void in
            if error == nil && product != nil {
                self.popUpAdChild?.productNameLabel.text = product?.objectForKey("Name") as! String
                self.popUpAdChild?.companyNameLabel.text = product?.objectForKey("Company") as! String
                
                self.popUpAdChild?.priceLabel.text = "$" + String(product?.objectForKey("Price") as! Int)
                //                self.popUpAdChild?.imageView = product?.objectForKey("Picture")
                
                
                
                let url = NSURL(string : "http://files.parsetfss.com/dfb167dc-c199-4ab6-992b-1246f0e39d45/tfss-bc6182f4-bc06-4908-b7ec-c59890b49305-iPhone6S.png")
                let data = NSData(contentsOfURL: url!)
                

                
                self.popUpAdChild?.imageView.image = UIImage(data: data!)
                
            } else {
                print(error)
            }
        }
    }
    
    
    func queryRoku() {
        let query = PFQuery(className:"Items")
        query.getObjectInBackgroundWithId("ue31pDZf2e") {
            (product: PFObject?, error: NSError?) -> Void in
            if error == nil && product != nil {
                self.popUpAdChild?.productNameLabel.text = product?.objectForKey("Name") as! String
                self.popUpAdChild?.companyNameLabel.text = product?.objectForKey("Company") as! String
                
                self.popUpAdChild?.priceLabel.text = "$" + String(product?.objectForKey("Price") as! Int)
                //                self.popUpAdChild?.imageView = product?.objectForKey("Picture")
                
                
                
                let url = NSURL(string : "http://files.parsetfss.com/dfb167dc-c199-4ab6-992b-1246f0e39d45/tfss-4fb490aa-0cfa-41ec-9c8b-534320f90f22-roku4.png")
                let data = NSData(contentsOfURL: url!)

                
                self.popUpAdChild?.imageView.image = UIImage(data: data!)
                
                
            } else {
                print(error)
            }
        }
    }
    
    
    
    
    
    override func viewDidAppear(animated: Bool) {
        
    }

    
    // animate Carrot out
    func displayCarrot() {
        UIView.animateWithDuration(0.5, animations: {
            self.popUpHeightConstraint.constant = self.displayCarrotConstraintHeight
            self.view.layoutIfNeeded()
        })
    }
    
    // animate add out
    func moveUp() {
        UIView.animateWithDuration(0.5, animations: {
            if self.state == 0 {
                self.popUpHeightConstraint.constant = self.displayCarrotConstraintHeight
                self.state += 1
                
            } else if self.state == 1 {
                self.popUpHeightConstraint.constant = self.displayAdConstraintHeight
                self.state += 1
            }
            
            self.view.layoutIfNeeded()
        })
    }
    
    // animate carrot out carrot
    func moveDown() {
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            
            self.popUpHeightConstraint.constant = 0
            self.state = 0
            self.view.layoutIfNeeded()
        })
        self.adNum++
        if self.adNum == 2 {
            queryIPhone()
        } else if self.adNum == 3 {
            queryRoku()
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
