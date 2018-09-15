//
//  TopViewController.swift
//  taping_app
//
//  Created by 清水みさき on 2018/09/01.
//  Copyright © 2018年 清水みさき. All rights reserved.
//

import UIKit

class TopViewController: ViewController {

    @IBAction func test(_ sender: Any) {
        let viewcontroller = BaseTapingViewController()
        navigationController?.pushViewController(viewcontroller, animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
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
