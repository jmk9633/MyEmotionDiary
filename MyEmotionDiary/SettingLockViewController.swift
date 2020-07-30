//
//  SettingLockViewController.swift
//  MyEmotionDiary
//
//  Created by 정문기 on 2020/07/30.
//  Copyright © 2020 jmk. All rights reserved.
//

import UIKit

class SettingLockViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var settingLockTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingLockTableView.delegate = self
        settingLockTableView.dataSource = self
       
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingLockTableViewCell", for: indexPath) as! SettingLockTableViewCell
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 48
    }
}
