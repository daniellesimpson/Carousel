//
//  createViewController.swift
//  Carousel
//
//  Created by Simpson, Danielle on 8/26/16.
//  Copyright © 2016 Simpson, Danielle. All rights reserved.
//

import UIKit

class createViewController: UIViewController {

    @IBOutlet weak var buttonParentView: UIView!
    
    @IBOutlet weak var termCheckBox: UIButton!
    var buttonInitialY: CGFloat!
    var buttonOffset: CGFloat!
    
    @IBOutlet weak var formFieldsView: UIView!
    var fieldInitial: CGFloat!
    var fieldOffset: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIKeyboardWillShowNotification, object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIKeyboardWillHideNotification, object: nil)
        
        buttonInitialY = buttonParentView.frame.origin.y
        buttonOffset = -220
        
        fieldInitial = formFieldsView.frame.origin.y
        fieldOffset = -90
        
        

        // Do any additional setup after loading the view.
    }
    
    func keyboardWillShow(notifications: NSNotification!){
        print("keyboard")
        
        buttonParentView.frame.origin.y = buttonInitialY + buttonOffset
        
        formFieldsView.frame.origin.y = fieldInitial + fieldOffset
        
        
    }
    
    func keyboardWillHide(notifications:NSNotification!) {
        print("Keyboard Hide")
        buttonParentView.frame.origin.y = buttonInitialY
        
        formFieldsView.frame.origin.y = fieldInitial
    }
    
    @IBAction func didTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func backToIntro(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
        
    }

    @IBAction func tapCheckbox(sender: AnyObject) {
        
        termCheckBox.selected = !termCheckBox.selected
        
        if termCheckBox.selected == true{
            performSegueWithIdentifier("termsSegue", sender: self)
        }
        else {
            
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
