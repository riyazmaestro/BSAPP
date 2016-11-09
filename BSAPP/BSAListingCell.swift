//
//  BSAListingCell.swift
//  BSAPP
//
//  Created by Riyaz Mohammed on 07/11/16.
//  Copyright © 2016 Riyaz Mohammed. All rights reserved.
//

import UIKit

class BSAListingCell: UITableViewCell  {

    
    public var book : BSABook! ;

    var bookView : BSABookView!;

    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder);
        
    }
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier);
 
    }
    
    
    public func constrct()
    {
        
        let contentView : UIView = self.contentView as UIView!;
        bookView = BSABookView();
        
        bookView.translatesAutoresizingMaskIntoConstraints = false;
        bookView.backgroundColor = UIColor.blue;
        self.contentView .addSubview(bookView);
        
        let  left :NSLayoutConstraint = NSLayoutConstraint.init(item: bookView, attribute: .left, relatedBy: .equal, toItem: contentView, attribute: .left, multiplier: 1, constant: 10);
        
        let  top :NSLayoutConstraint = NSLayoutConstraint.init(item: bookView, attribute: .top, relatedBy: .equal, toItem: contentView, attribute: .top, multiplier: 1, constant: 10);
        
        let  right :NSLayoutConstraint = NSLayoutConstraint.init(item: bookView, attribute: .right, relatedBy: .equal, toItem: contentView, attribute: .right, multiplier: 1, constant: -10);
        
        let  bottom :NSLayoutConstraint = NSLayoutConstraint.init(item: bookView, attribute: .bottom, relatedBy: .equal, toItem: contentView, attribute: .bottom, multiplier: 1, constant: -10);
        
//        let  height :NSLayoutConstraint = NSLayoutConstraint.init(item: fieldContainerView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 0);
        
        self.contentView.addConstraints([left,top,right,bottom]);
        }
    
 
    public func refresh()
    {
        bookView.backgroundColor = UIColor.blue;
        bookView.book = self.book;
         bookView .refresh();
        
    }
  
    
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
            // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
