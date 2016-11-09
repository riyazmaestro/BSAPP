//
//  BSABook.swift
//  BSAPP
//
//  Created by Riyaz Mohammed on 07/11/16.
//  Copyright © 2016 Riyaz Mohammed. All rights reserved.
//

import UIKit

class BSABook: NSObject
{

    var isbn:NSString;
    var name:NSString;
    var author:NSString;
    var publication:NSString;
    var listedBy:BSAUser;
    var requstedBy:NSArray; //BSAUsers
    var listedOn:NSDate;
    var imageURL:NSString;
    
    
    public init(isbn isbnNumber:NSString )
    {
        self.isbn = isbnNumber;
        self.name = "";
        self.author = "";
        self.publication = "";
        self.listedBy = BSAUser(fbUserID: "fsasf")!;
        self.requstedBy = NSArray();
        self.listedOn = NSDate();
        self.imageURL = "";
        
    }
    
}
