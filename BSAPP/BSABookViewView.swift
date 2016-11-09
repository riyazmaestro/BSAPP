//
//  BSABookView.swift
//  BSAPP
//
//  Created by Riyaz Mohammed on 09/11/16.
//  Copyright © 2016 Riyaz Mohammed. All rights reserved.
//

import UIKit

class BSABookView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    var imageView :UIImageView!;
    var  book : BSABook!;
    var title : UILabel!;
    

 public init()
    {
//        self.book = book;
        
        super.init(frame: .zero);
        imageView = UIImageView.init();
        imageView.translatesAutoresizingMaskIntoConstraints = false;
        imageView.layer.borderColor = UIColor.gray.cgColor;
        imageView.layer.borderWidth = 1;
        imageView.backgroundColor=UIColor.yellow;
        
        self .addSubview(imageView);
        
        
        let  left :NSLayoutConstraint = NSLayoutConstraint.init(item: imageView, attribute: .left, relatedBy: .equal, toItem: self, attribute: .left, multiplier: 1, constant: 10);
        
        let  top :NSLayoutConstraint = NSLayoutConstraint.init(item: imageView
            , attribute: .top, relatedBy: .equal, toItem: self
            , attribute: .top, multiplier: 1, constant: 10);
        
        let  right :NSLayoutConstraint = NSLayoutConstraint.init(item: imageView, attribute: .right, relatedBy: .lessThanOrEqual, toItem: self, attribute: .right, multiplier: 1, constant: 0);
        
        let  bottom :NSLayoutConstraint = NSLayoutConstraint.init(item: imageView, attribute: .bottom, relatedBy: .lessThanOrEqual, toItem: self, attribute: .bottom, multiplier: 1, constant: -10);
        
        let  height :NSLayoutConstraint = NSLayoutConstraint.init(item: imageView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 100);
        
        let  width :NSLayoutConstraint = NSLayoutConstraint.init(item: imageView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 80);

        
    self.addConstraints([left,top,right,bottom,width,height]);

        
        
        title = UILabel();
        title.translatesAutoresizingMaskIntoConstraints = false;
                self .addSubview(title);
        
        
        let  labelleft :NSLayoutConstraint = NSLayoutConstraint.init(item: title, attribute: .left, relatedBy: .equal, toItem: imageView, attribute: .right, multiplier: 1, constant: 10);
        
        
        let  labeltop :NSLayoutConstraint = NSLayoutConstraint.init(item: title
            , attribute: .top, relatedBy: .equal, toItem: self
            , attribute: .top, multiplier: 1, constant: 10);
        
        let  labelright :NSLayoutConstraint = NSLayoutConstraint.init(item: title, attribute: .right, relatedBy: .lessThanOrEqual, toItem: self, attribute: .right, multiplier: 1, constant: 10);
        
        let  labelbottom :NSLayoutConstraint = NSLayoutConstraint.init(item: title, attribute: .bottom, relatedBy: .lessThanOrEqual, toItem: self, attribute: .bottom, multiplier: 1, constant: -10);
        
        
        self .addConstraints([labeltop,labelleft,labelright,labelbottom]);
    

        
    }

    public func refresh()
    {

    imageView.backgroundColor=UIColor.yellow;
        title.text=book.isbn as String;
        title.sizeToFit();

    }
    required init?(coder aDecoder: NSCoder) {
        
        imageView = aDecoder.decodeObject( forKey: "imageView") as! UIImageView;

        super.init(coder: aDecoder);
        
//        fatalError("init(coder:) has not been implemented")
        // Some boilerplate code to handle error (needed when override)
    }
}
