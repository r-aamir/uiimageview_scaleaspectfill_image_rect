//
//  ImageViewEx.swift
//  uiimageview_scaleaspectfill_image_rect
//
//  Created by AamirR on 5/20/19.
//  Copyright © 2019 AamirR. All rights reserved.
//

import UIKit

extension UIImageView {
    
    var imageRect: CGRect {
        guard let imageSize = self.image?.size else { return self.frame }
        
        let scale = UIScreen.main.scale
        
        let imageWidth = (imageSize.width / scale).rounded()
        let frameWidth = self.frame.width.rounded()
        
        let imageHeight = (imageSize.height / scale).rounded()
        let frameHeight = self.frame.height.rounded()
        
        let ratio = max(frameWidth / imageWidth, frameHeight / imageHeight)
        let newSize = CGSize(width: imageWidth * ratio, height: imageHeight * ratio)
        let newOrigin = CGPoint(x: self.center.x - (newSize.width / 2), y: self.center.y - (newSize.height / 2))
        return CGRect(origin: newOrigin, size: newSize)
    }
    
}
