//
//  LoginViewController.swift
//  Carousel
//
//  Created by Simpson, Danielle on 8/25/16.
//  Copyright © 2016 Simpson, Danielle. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var fieldParentView: UIView!
    @IBOutlet weak var buttonParentView: UIView!
    @IBOutlet weak var loginNavBar: UIImageView!
    var buttonInitialY: CGFloat!
    var buttonOffset: CGFloat!
    
    var loginInitialY: CGFloat!
    var loginOffset: CGFloat!
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.delegate = self
        
        // Set the scroll view content size
        scrollView.contentSize = scrollView.frame.size
        
        // Set the content insets
        scrollView.contentInset.bottom = 100
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(keyboardWillShow(_:)), name:UIKeyboardWillShowNotification, object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(keyboardWillHide(_:)), name:UIKeyboardWillHideNotification, object: nil)
        
        
        buttonInitialY = buttonParentView.frame.origin.y
        buttonOffset = -120
        
        
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(animated: Bool) {
        let transform = CGAffineTransformMakeScale(0.2, 0.2)
        
        loginNavBar.transform = transform
        fieldParentView.transform = transform
        
        loginNavBar.alpha = 0
        fieldParentView.alpha = 0
        
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(0.3){ () -> Void in
            
            self.fieldParentView.transform = CGAffineTransformIdentity
            self.loginNavBar.transform = CGAffineTransformIdentity
            
            self.fieldParentView.alpha = 1
            self.loginNavBar.alpha = 1
        }
    }
    
    @IBAction func backToIntro(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
      
    }
    
    
    func keyboardWillShow(notification: NSNotification!) {
        
            print("keyboardWillShow")
            // Move the button up above keyboard
            buttonParentView.frame.origin.y = buttonInitialY + buttonOffset
        
            // Scroll the scrollview up
            scrollView.contentOffset.y = scrollView.contentInset.bottom

    }
    
    func keyboardWillHide(notification: NSNotification!) {
        print("keyboard dismissed")
        buttonParentView.frame.origin.y = buttonInitialY
    }
    
    @IBAction func signIn(sender: AnyObject) {
        
        if emailField.text!.isEmpty {
        
            let alertController = UIAlertController(title: "Email Address Required", message: "Please enter a valid email address", preferredStyle: .Alert)
            
            // create an OK action
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
                // handle response here.
            }
            // add the OK action to the alert controller
            alertController.addAction(OKAction)
            
            presentViewController(alertController, animated: true) {
                // optional code for what happens after the alert controller has finished presenting
            }
            
        }
        
        else if passwordField.text!.isEmpty {
            let alertController = UIAlertController(title: "Password Required", message: "Please enter your password.", preferredStyle: .Alert)
            
            // create an OK action
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
                // handle response here.
            }
            // add the OK action to the alert controller
            alertController.addAction(OKAction)
            
            presentViewController(alertController, animated: true) {
                // optional code for what happens after the alert controller has finished presenting
            }
            
        }
        
        else {
            activityIndicator.startAnimating()
            
            delay(2) {
                self.checkPassword()
            }
            
            
        }
        
        
        }
    
    func checkPassword(){
        if emailField.text == "e" && passwordField.text == "p" {
            performSegueWithIdentifier("tutorialSegue", sender: self)
            
        } else {
            let alertController = UIAlertController(title: "Please try again.", message: "Incorrect Email or Password", preferredStyle: .Alert)
            
            // create an OK action
            let TryAgain = UIAlertAction(title: "Try Again", style: .Default) { (action) in
                // handle response here.
            }
            // add the OK action to the alert controller
            alertController.addAction(TryAgain)
            
            presentViewController(alertController, animated: true) {
                // optional code for what happens after the alert controller has finished presenting
            }
        }
        activityIndicator.stopAnimating()
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        if scrollView.contentOffset.y <= -10 {
            view.endEditing(true)
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
