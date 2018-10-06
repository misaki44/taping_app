//
//  BaseTapingViewController.swift
//  taping_app
//
//  Created by 清水みさき on 2018/09/01.
//  Copyright © 2018年 清水みさき. All rights reserved.
//

import UIKit

class BaseTapingViewController: ViewController,UITableViewDataSource {
    
    let celltitles = ["アンカー","スターアップ","ホースシュー","サーキュラー","ヒールロック","フィギュアエイト","Xサポート、サポート"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return celltitles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = celltitles[indexPath.row]
        return cell
    }
    
    //storyboardのデザインを反映させたBaseTapingViewControllerを作成
    static func createInstance() -> BaseTapingViewController {
        let storyboard = UIStoryboard(name: "BaseTapingViewController", bundle: nil)
        let instance = storyboard.instantiateViewController(withIdentifier: "BaseTapingViewController") as! BaseTapingViewController
        return instance
    }

    @IBOutlet weak var tabieView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tabieView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        // Do any additional setup after loadin_g the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
