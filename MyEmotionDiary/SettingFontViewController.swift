//
//  SettingFontViewController.swift
//  MyEmotionDiary
//
//  Created by 정문기 on 2020/07/30.
//  Copyright © 2020 jmk. All rights reserved.
//

import UIKit

class SettingFontViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var settingFontTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingFontTableView.delegate = self
        settingFontTableView.dataSource = self
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingFontTableViewCell", for: indexPath) as! SettingFontTableViewCell
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 48
    }

}
