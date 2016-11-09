//
//  FirstViewController.swift
//  BSAPP
//
//  Created by Riyaz Mohammed on 07/11/16.
//  Copyright © 2016 Riyaz Mohammed. All rights reserved.
//

import UIKit

class FirstViewController: BSAViewController, UITableViewDataSource,UITableViewDelegate
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let tableView  = UITableView(frame:self.view.bounds, style:.plain);
        tableView.autoresizingMask = [.flexibleHeight ,.flexibleWidth];
        tableView.delegate=self;
        tableView.dataSource = self;
        
        self.view .addSubview(tableView);
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
{
    return 20;
}
public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
{

    let  cell:UITableViewCell = UITableViewCell (style: .subtitle, reuseIdentifier: "cell");
    cell.textLabel!.text="row#\(indexPath.row)"
    cell.detailTextLabel!.text="subtitle#\(indexPath.row)"
    
    return cell;
    }

}
