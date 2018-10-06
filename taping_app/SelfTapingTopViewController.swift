//
//  SelfTapingTopViewController.swift
//  taping_app
//
//  Created by 清水みさき on 2018/09/01.
//  Copyright © 2018年 清水みさき. All rights reserved.
//

import UIKit

class SelfTapingTopViewController: ViewController, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return celltitles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = celltitles[indexPath.row]
        return cell
    }
    
    let celltitles = ["指","親指","手首","ひじ（外）","ひじ（内）","ひざ","ふくらはぎ","足首","かかと","足裏（土踏まず）","もも","がいはんぼし"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
    }
    //storyboardのデザインを反映させたBaseTapingViewControllerを作成
    static func createInstance() -> SelfTapingTopViewController {
        let storyboard = UIStoryboard(name: "SelfTapingTopViewController", bundle: nil)
        let instance = storyboard.instantiateViewController(withIdentifier: "SelfTapingTopViewController") as! SelfTapingTopViewController
        return instance
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
