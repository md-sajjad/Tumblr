//
//  TabBarViewController.swift
//  Tumblr
//
//  Created by Muddassar Sajjad on 10/12/15.
//  Copyright © 2015 com.training.codepath. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    
    var homeViewCtrlr: UIViewController!
    var searchViewCtrlr: UIViewController!
    var accountViewCtrlr: UIViewController!
    var trendingViewCtrlr: UIViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        homeViewCtrlr = storyboard.instantiateViewControllerWithIdentifier("HomeViewController")
        searchViewCtrlr = storyboard.instantiateViewControllerWithIdentifier("SearchViewController")
        accountViewCtrlr = storyboard.instantiateViewControllerWithIdentifier("AccountViewController")
        trendingViewCtrlr = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController")
        
        // Do any additional setup after loading the view.
    }

    func handleTabBarButtonPress(button: UIButton, viewCtrlr: UIViewController) {
        if previousButton != nil {
            previousButton.selected = false
        }
        if currentViewCtrlr != nil {
            currentViewCtrlr.willMoveToParentViewController(nil)
            currentViewCtrlr.view.removeFromSuperview()
            currentViewCtrlr.removeFromParentViewController()
        }
        button.selected = true
        addChildViewController(viewCtrlr)
        contentView.addSubview(viewCtrlr.view)
        viewCtrlr.didMoveToParentViewController(self)
        viewCtrlr.view.frame = contentView.bounds
        previousButton = button
        currentViewCtrlr = viewCtrlr
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    var previousButton: UIButton!
    var currentViewCtrlr : UIViewController!
    
    
    @IBAction func onHomeButton(button: UIButton) {
        handleTabBarButtonPress(button, viewCtrlr: homeViewCtrlr)
    }

    
    @IBAction func onSearchButton(button: UIButton) {
        handleTabBarButtonPress(button, viewCtrlr: searchViewCtrlr)
    }

    
    @IBAction func onAccountButton(button: UIButton) {
        handleTabBarButtonPress(button, viewCtrlr: accountViewCtrlr)
    }
    
    
    @IBAction func onTrendingButton(button: UIButton) {
        handleTabBarButtonPress(button, viewCtrlr: trendingViewCtrlr)
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
