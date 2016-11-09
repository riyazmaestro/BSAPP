//
//  SecondViewController.swift
//  BSAPP
//
//  Created by Riyaz Mohammed on 07/11/16.
//  Copyright © 2016 Riyaz Mohammed. All rights reserved.
//

import UIKit

class SecondViewController: BSAViewController ,UITableViewDelegate,UITableViewDataSource
{
    
    
    public let bookList : NSMutableArray = [];
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let   tableView:UITableView = UITableView(frame:self.view.bounds, style: UITableViewStyle.plain);
        
        tableView.delegate = self;
        tableView.dataSource = self;
        
        tableView.autoresizingMask = [.flexibleWidth,.flexibleHeight];
        
        let footer :UIView = UIView(frame: CGRect(x: 0, y:0, width: self.view.bounds.width, height: 10));
            footer.backgroundColor = UIColor.red;
        tableView.estimatedRowHeight = 40;
        tableView.rowHeight = UITableViewAutomaticDimension;
        
        tableView.tableFooterView = footer ;
        
        tableView.backgroundColor = UIColor.brown;
        
        
        self.view .addSubview(tableView);
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 5;
    }
//    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat
//    {
//        return 0;
//    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return UITableViewAutomaticDimension;
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
      var cell : UITableViewCell! = tableView .dequeueReusableCell(withIdentifier: "cell")
        
        if (cell == nil)
        {
            
            let localCell :BSAListingCell = BSAListingCell(style: .subtitle, reuseIdentifier:"cell");
     
            localCell .constrct();
            cell = localCell;
        }
        let book : BSABook = BSABook(isbn:"row#\(indexPath.row)" as NSString);
        (cell as! BSAListingCell) .refresh(book: book)
        
        
        return cell;
    
    }

}

