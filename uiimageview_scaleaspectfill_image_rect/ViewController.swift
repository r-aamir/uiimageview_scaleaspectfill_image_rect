//
//  ViewController.swift
//  uiimageview_scaleaspectfill_image_rect
//
//  Created by AamirR on 5/20/19.
//  Copyright © 2019 AamirR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    let testView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = false
        imageView.layer.borderWidth = 1.0
        
        testView.backgroundColor = UIColor.red.withAlphaComponent(0.5)
        self.view.addSubview(testView)
    }
    
    @IBAction func wideImageAction() {
        self.imageView.image = UIImage(named: "wide-image")
        testView.frame = self.imageView.imageRect
    }
    
    @IBAction func narrowImageAction() {
        self.imageView.image = UIImage(named: "image")
        testView.frame = self.imageView.imageRect
    }
}

