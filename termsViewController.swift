//
//  termsViewController.swift
//  Carousel
//
//  Created by Simpson, Danielle on 8/28/16.
//  Copyright © 2016 Simpson, Danielle. All rights reserved.
//

import UIKit

class termsViewController: UIViewController {

    @IBOutlet weak var termsWeb: UIWebView!
    let url = "https://www.dropbox.com/terms?mobile=1"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let requestURL = NSURL(string: url)
        
        let request = NSURLRequest(URL: requestURL!)
        
        termsWeb.loadRequest(request)
    }

    @IBAction func doneReading(sender: UIButton) {
       //navigationController?.popViewControllerAnimated(true)
        dismissViewControllerAnimated(true, completion: nil)
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
