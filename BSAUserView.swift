//
//  BSAUserView.swift
//  BSAPP
//
//  Created by Riyaz Mohammed on 07/11/16.
//  Copyright © 2016 Riyaz Mohammed. All rights reserved.
//

import UIKit
class BSAUserView: UIView
{
    
    override func draw(_ rect: CGRect)
    {
        
        let pic:UIImage = UIImage(named: "sff.png")!
        let imageView = UIImageView(image: pic);
        imageView.frame = USER_PIC_RECT;
        imageView.center = self.center;
        imageView.autoresizingMask = [.flexibleTopMargin , .flexibleLeftMargin , .flexibleRightMargin , .flexibleBottomMargin];
        
        self.addSubview(imageView);

        
        
        
        
        
    }
  
    
    
    
    
    
    
    
    
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
