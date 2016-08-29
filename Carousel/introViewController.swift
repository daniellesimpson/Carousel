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
    
    var xOffsets : [CGFloat] = [-40, 55, 36, 95, -120, -65]
    var yOffsets : [CGFloat] = [-285, -260, -445, -428, -530, -530]
    var scales : [CGFloat] = [1.1, 1.7, 1.6, 1.8, 1.9, 1.7]
    var rotations : [CGFloat] = [-20, -18, 15, 15, 15, -15]
    
    func convertValue(value:CGFloat, r1Min: CGFloat, r1Max: CGFloat, r2Min: CGFloat, r2Max: CGFloat) -> CGFloat{
        var ratio = (r2Max - r2Min) / (r1Max - r1Min)
        return value * ratio + r2Min - r1Min * ratio
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSizeMake(320, 1134)
        scrollView.delegate = self

        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func scrollViewDidScroll(scrollView: UIScrollView!) {
      var offset = CGFloat(scrollView.contentOffset.y)
        print("Content Offset: \(scrollView.contentOffset.y)")
        
        //var tx = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -30, r2Max: 0)
        //var ty = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -285, r2Max: 0)
        //var scale = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1, r2Max: 1)
        //var rotation = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        
        var tx = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: xOffsets[0], r2Max: 0)
        var ty = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: yOffsets[0], r2Max: 0)
        var scale = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: scales[0], r2Max: 1)
        var rotation = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: rotations[0], r2Max: 0)
        introTile1.transform = CGAffineTransformMakeTranslation(CGFloat(tx), CGFloat(ty))
        introTile1.transform = CGAffineTransformScale(introTile1.transform, CGFloat(scale), CGFloat(scale))
        introTile1.transform = CGAffineTransformRotate(introTile1.transform, CGFloat(Double(rotation) * M_PI/180))
        
        
        //tile2
        tx = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: xOffsets[1], r2Max: 0)
        ty = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: yOffsets[1], r2Max: 0)
        scale = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: scales[1], r2Max: 1)
        rotation = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: rotations[1], r2Max: 0)
        introTile2.transform = CGAffineTransformMakeTranslation(CGFloat(tx), CGFloat(ty))
        introTile2.transform = CGAffineTransformScale(introTile2.transform, CGFloat(scale), CGFloat(scale))
        introTile2.transform = CGAffineTransformRotate(introTile2.transform, CGFloat(Double(rotation) * M_PI/180))
        
        //tile3
        tx = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: xOffsets[2], r2Max: 0)
        ty = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: yOffsets[2], r2Max: 0)
        scale = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: scales[2], r2Max: 1)
        rotation = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: rotations[2], r2Max: 0)
        introTile3.transform = CGAffineTransformMakeTranslation(CGFloat(tx), CGFloat(ty))
        introTile3.transform = CGAffineTransformScale(introTile3.transform, CGFloat(scale), CGFloat(scale))
        introTile3.transform = CGAffineTransformRotate(introTile3.transform, CGFloat(Double(rotation) * M_PI/180))
        
        //tile4
        tx = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: xOffsets[3], r2Max: 0)
        ty = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: yOffsets[3], r2Max: 0)
        scale = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: scales[3], r2Max: 1)
        rotation = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: rotations[3], r2Max: 0)
        introTile4.transform = CGAffineTransformMakeTranslation(CGFloat(tx), CGFloat(ty))
        introTile4.transform = CGAffineTransformScale(introTile4.transform, CGFloat(scale), CGFloat(scale))
        introTile4.transform = CGAffineTransformRotate(introTile4.transform, CGFloat(Double(rotation) * M_PI/180))
        
        //tile5
        tx = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: xOffsets[4], r2Max: 0)
        ty = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: yOffsets[4], r2Max: 0)
        scale = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: scales[4], r2Max: 1)
        rotation = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: rotations[4], r2Max: 0)
        introTile5.transform = CGAffineTransformMakeTranslation(CGFloat(tx), CGFloat(ty))
        introTile5.transform = CGAffineTransformScale(introTile5.transform, CGFloat(scale), CGFloat(scale))
        introTile5.transform = CGAffineTransformRotate(introTile5.transform, CGFloat(Double(rotation) * M_PI/180))
        
        //tile6
        tx = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: xOffsets[5], r2Max: 0)
        ty = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: yOffsets[5], r2Max: 0)
        scale = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: scales[5], r2Max: 1)
        rotation = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: rotations[5], r2Max: 0)
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
