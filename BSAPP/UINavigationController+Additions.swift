//
//  UINavigationController+Additions.swift
//  BSAPP
//
//  Created by Riyaz Mohammed on 09/11/16.
//  Copyright © 2016 Riyaz Mohammed. All rights reserved.
//

import UIKit

extension UINavigationController {

     open override func viewDidLoad()
     {
        self.navigationBar.isTranslucent = false;
        self.tabBarController?.tabBar.isTranslucent = false;
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

     open override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
