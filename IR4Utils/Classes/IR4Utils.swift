//
//  IR4Utils.swift
//  Pods
//
//  Created by Ranjithkumar on 22/10/16.
//
//

import UIKit

class IR4Utils: NSObject {
    
    /*
     This function helps to resize the image without changing the ratio of width and height. in other words, without changing the aspect ratio.
     */
    
    class func getNewSizeForImage(imageSize : CGSize, width : CGFloat!, height : CGFloat!) -> CGSize {
        let ratio = imageSize.width / imageSize.height
        if width != nil {
            return CGSizeMake(width, width / ratio)
        }else if height != nil {
            return CGSizeMake(height * ratio, height)
        }else{
            return CGSizeZero
        }
    }

}
