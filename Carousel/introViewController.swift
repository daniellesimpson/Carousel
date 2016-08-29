//
//  introViewController.swift
//  Carousel
//
//  Created by Simpson, Danielle on 8/24/16.
//  Copyright © 2016 Simpson, Danielle. All rights reserved.
//

import UIKit

class introViewController: UIViewController, UIScrollViewDelegate{

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var introTile1: UIImageView!
    @IBOutlet weak var introTile2: UIImageView!
    @IBOutlet weak var introTile3: UIImageView!
    @IBOutlet weak var introTile4: UIImageView!
    @IBOutlet weak var introTile6: UIImageView!
    @IBOutlet weak var introTile5: UIImageView!
    
    var yOffsets : [Float] = [-285, -240, -415, -408, -480, -500]
    var xOffsets : [Float] = [-30, 75, -66, 10, -200, -15]
    var scales : [Float] = [1, 1.65, 1.7, 1.6, 1.65, 1.65]
    var rotations : [Float] = [-10, -10, 10, 10, 10, -10]
    
    func convertValue(value:Float, r1Min: Float, r1Max: Float, r2Min: Float, r2Max: Float) -> Float{
        var ratio = (r2Max - r2Min) / (r1Max - r1Min)
        return value * ratio + r2Min - r1Min * ratio
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSizeMake(320, 1065)
        scrollView.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func scrollViewDidScroll(scrollView: UIScrollView!) {
      var offset = Float(scrollView.contentOffset.y)
        print("Content Offset: \(scrollView.contentOffset.y)")
        
        var tx = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -30, r2Max: 0)
        var ty = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -285, r2Max: 0)
        var scale = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1, r2Max: 1)
        var rotation = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        introTile1.transform = CGAffineTransformMakeTranslation(CGFloat(tx), CGFloat(ty))
        introTile1.transform = CGAffineTransformScale(introTile1.transform, CGFloat(scale), CGFloat(scale))
        introTile1.transform = CGAffineTransformRotate(introTile1.transform, CGFloat(Double(rotation) * M_PI/180))
        
        introTile2.transform = CGAffineTransformMakeTranslation(CGFloat(tx), CGFloat(ty))
        introTile2.transform = CGAffineTransformScale(introTile2.transform, CGFloat(scale), CGFloat(scale))
        introTile2.transform = CGAffineTransformRotate(introTile2.transform, CGFloat(Double(rotation) * M_PI/180))
        
        introTile3.transform = CGAffineTransformMakeTranslation(CGFloat(tx), CGFloat(ty))
        introTile3.transform = CGAffineTransformScale(introTile3.transform, CGFloat(scale), CGFloat(scale))
        introTile3.transform = CGAffineTransformRotate(introTile3.transform, CGFloat(Double(rotation) * M_PI/180))
        
        introTile4.transform = CGAffineTransformMakeTranslation(CGFloat(tx), CGFloat(ty))
        introTile4.transform = CGAffineTransformScale(introTile4.transform, CGFloat(scale), CGFloat(scale))
        introTile4.transform = CGAffineTransformRotate(introTile4.transform, CGFloat(Double(rotation) * M_PI/180))
        
        introTile5.transform = CGAffineTransformMakeTranslation(CGFloat(tx), CGFloat(ty))
        introTile5.transform = CGAffineTransformScale(introTile5.transform, CGFloat(scale), CGFloat(scale))
        introTile5.transform = CGAffineTransformRotate(introTile5.transform, CGFloat(Double(rotation) * M_PI/180))
        
        introTile6.transform = CGAffineTransformMakeTranslation(CGFloat(tx), CGFloat(ty))
        introTile6.transform = CGAffineTransformScale(introTile6.transform, CGFloat(scale), CGFloat(scale))
        introTile6.transform = CGAffineTransformRotate(introTile6.transform, CGFloat(Double(rotation) * M_PI/180))
        
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
