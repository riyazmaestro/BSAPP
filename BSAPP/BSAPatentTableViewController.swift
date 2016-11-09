//
//  BSAPatentTableViewController.swift
//  BSAPP
//
//  Created by Riyaz Mohammed on 09/11/16.
//  Copyright © 2016 Riyaz Mohammed. All rights reserved.
//

import UIKit

class BSAPatentTableViewController: BSAParentViewController , UITableViewDelegate,UITableViewDataSource{

    
    public var tableView : UITableView!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView = UITableView(frame:self.view.bounds, style:.plain);
       self.tableView.autoresizingMask = [.flexibleHeight ,.flexibleWidth];
        self.tableView.delegate=self;
        self.tableView.dataSource = self;
        
        self.view .addSubview(self.tableView);
        // Do any additional setup after loading the view.
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
        
        return UITableViewCell();
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
