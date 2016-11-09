//
//  BSAUser.swift
//  BSAPP
//
//  Created by Riyaz Mohammed on 07/11/16.
//  Copyright © 2016 Riyaz Mohammed. All rights reserved.
//

import UIKit

class BSAUser: NSObject {

//    public init?(named name: String) // load from main bundle
    public var name:NSString;
    public var fbUrl:NSString;
    public var instaURL:NSString;
    public var twitterURL:NSString;
    public var quote:BSAQuote;


  public init?(fbUserID fbID: NSString)
    {
        self.name = "Riyaz Mohammed";
        self.fbUrl = "https://fb/riyaz.maestro";
        self.instaURL = "";
        self.twitterURL = "";
        self.quote = BSAQuote(quote:"Aim High", by:"Riyaz");
    }
    
    public func location () -> NSString
    {
        let location:NSString = "Chennai, India"
        return location;
    }
    
}
