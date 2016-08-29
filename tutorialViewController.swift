//
//  tutorialViewController.swift
//  Carousel
//
//  Created by Simpson, Danielle on 8/26/16.
//  Copyright © 2016 Simpson, Danielle. All rights reserved.
//

import UIKit

class tutorialViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var spinBtn: UIButton!
    @IBOutlet weak var pageControls: UIPageControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSizeMake(1280, 568)
        scrollView.delegate = self
        
        // Do any additional setup after loading the view.
        
        spinBtn.alpha = 0
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        
        let page : Int = Int(round(scrollView.contentOffset.x / 320))
        
        pageControls.currentPage = page
        
        if page == 3{
            pageControls.hidden = true
            
            UIButton.animateWithDuration(1, animations: {
                self.spinBtn.alpha = 1
            })
            
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
