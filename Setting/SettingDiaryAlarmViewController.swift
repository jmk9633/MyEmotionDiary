//
//  SettingDiaryAlarmViewController.swift
//  MyEmotionDiary
//
//  Created by 정문기 on 2020/07/30.
//  Copyright © 2020 jmk. All rights reserved.
//

import UIKit

class SettingDiaryAlarmViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var settingDiaryAlarmTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingDiaryAlarmTableView.delegate = self
        settingDiaryAlarmTableView.dataSource = self
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingDiaryAlarmTableViewCell", for: indexPath) as! SettingDiaryAlarmTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 48
    }

}
