//
//  FirstViewController.swift
//  BSAPP
//
//  Created by Riyaz Mohammed on 07/11/16.
//  Copyright © 2016 Riyaz Mohammed. All rights reserved.
//

import UIKit

class FirstViewController: BSAPatentTableViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
{
    return 20;
}
public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
{

    let  cell:UITableViewCell = UITableViewCell (style: .subtitle, reuseIdentifier: "cell");
    cell.textLabel!.text="row#\(indexPath.row)"
    cell.detailTextLabel!.text="subtitle#\(indexPath.row)"
    
    return cell;
    }

}
