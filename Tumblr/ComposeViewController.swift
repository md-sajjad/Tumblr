//
//  ComposeViewController.swift
//  Tumblr
//
//  Created by Muddassar Sajjad on 10/12/15.
//  Copyright © 2015 com.training.codepath. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet weak var photoIcon: UIImageView!
    @IBOutlet weak var chatIcon: UIImageView!
    @IBOutlet weak var quoteIcon: UIImageView!
    @IBOutlet weak var textIcon: UIImageView!
    @IBOutlet weak var linkIcon: UIImageView!
    @IBOutlet weak var videoIcon: UIImageView!
    
    let belowScreenY: CGFloat = 658
    let topRowY: CGFloat = 150
    let bottomRowY: CGFloat = 275
    let aboveScreenY: CGFloat = -658
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoIcon.center.y = belowScreenY
        chatIcon.center.y = belowScreenY
        quoteIcon.center.y = belowScreenY
        textIcon.center.y = belowScreenY
        linkIcon.center.y = belowScreenY
        videoIcon.center.y = belowScreenY
        
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animateWithDuration(0.4) { () -> Void in
            self.photoIcon.center.y = self.topRowY
        }
        UIView.animateWithDuration(0.6) { () -> Void in
            self.chatIcon.center.y = self.bottomRowY
        }
        UIView.animateWithDuration(0.7) { () -> Void in
            self.quoteIcon.center.y = self.topRowY
        }
        UIView.animateWithDuration(0.8) { () -> Void in
            self.textIcon.center.y = self.topRowY
        }
        UIView.animateWithDuration(1.1) { () -> Void in
            self.linkIcon.center.y = self.bottomRowY
        }
        UIView.animateWithDuration(0.9) { () -> Void in
            self.videoIcon.center.y = self.bottomRowY
        }
        
        print("In View Did Appear")
    }

    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        print("In View Will Disappear")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onNevermind(sender: AnyObject) {
        UIView.animateWithDuration(0.4) { () -> Void in
            self.photoIcon.center.y = self.aboveScreenY
        }
        UIView.animateWithDuration(0.6) { () -> Void in
            self.chatIcon.center.y = self.aboveScreenY
        }
        UIView.animateWithDuration(0.7) { () -> Void in
            self.quoteIcon.center.y = self.aboveScreenY
        }
        UIView.animateWithDuration(0.8) { () -> Void in
            self.textIcon.center.y = self.aboveScreenY
        }
        UIView.animateWithDuration(1.1) { () -> Void in
            self.linkIcon.center.y = self.aboveScreenY
        }
        UIView.animateWithDuration(0.9) { () -> Void in
            self.videoIcon.center.y = self.aboveScreenY
        }

        delay(0.8) { () -> () in
            self.dismissViewControllerAnimated(true, completion: nil)
        }
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
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
