//
//  BSAQuote.swift
//  BSAPP
//
//  Created by Riyaz Mohammed on 07/11/16.
//  Copyright © 2016 Riyaz Mohammed. All rights reserved.
//

import UIKit

class BSAQuote: NSObject
{

    var quote : NSString ;
    var author : NSString ;
    
    public init(quote quotation: NSString , by auth:NSString )
    {
        self.quote = quotation;
        self.author = auth;
    }
    
    
    
}
