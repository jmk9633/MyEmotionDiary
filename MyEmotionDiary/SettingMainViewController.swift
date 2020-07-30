//
//  SettingMainViewController.swift
//  MyEmotionDiary
//
//  Created by 정문기 on 2020/07/30.
//  Copyright © 2020 jmk. All rights reserved.
//

import UIKit

class SettingMainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var settingMainSubLabel: UILabel!
    @IBOutlet var settingMainNameLabel: UILabel!
    @IBOutlet var settingMainTableview: UITableView!
    @IBOutlet var settingMainProfileImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        settingMainProfileImage.layer.cornerRadius = settingMainProfileImage.frame.height/2
        settingMainProfileImage.clipsToBounds = true
        settingMainTableview.delegate = self
        settingMainTableview.dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            if indexPath.row == 0 {
                let sb = UIStoryboard(name: "Setting", bundle: nil)
                let vc = sb.instantiateViewController(withIdentifier: "SettingBackUpViewController") as! SettingBackUpViewController
                navigationController?.pushViewController(vc, animated: true)
            }else if indexPath.row == 1 {
                let alert = UIAlertController(title: "ICLOUD에 저장하시겠습니까?", message: nil, preferredStyle: .alert)
 
                let ok = UIAlertAction(title: "취소", style: .default, handler: nil)
                let cancel = UIAlertAction(title: "확인", style: .default, handler: nil)
                alert.addAction(ok)
                alert.addAction(cancel)
                present(alert, animated: true, completion: nil)
            }
        }else if indexPath.section == 1 {
            if indexPath.row == 0 {
                let sb = UIStoryboard(name: "Setting", bundle: nil)
                let vc = sb.instantiateViewController(withIdentifier: "SettingFontViewController") as! SettingFontViewController
                navigationController?.pushViewController(vc, animated: true)
            }else if indexPath.row == 1 {
                let sb = UIStoryboard(name: "Setting", bundle: nil)
                let vc = sb.instantiateViewController(withIdentifier: "SettingLockViewController") as! SettingLockViewController
                navigationController?.pushViewController(vc, animated: true)
            }else if indexPath.row == 2 {
                let sb = UIStoryboard(name: "Setting", bundle: nil)
                let vc = sb.instantiateViewController(withIdentifier: "SettingDiaryAlarmViewController") as! SettingDiaryAlarmViewController
                navigationController?.pushViewController(vc, animated: true)
            }
        }else if indexPath.section == 2 {
            if indexPath.row == 0 {
                let sb = UIStoryboard(name: "Setting", bundle: nil)
                let vc = sb.instantiateViewController(withIdentifier: "SettingInfoVersionViewController") as! SettingInfoVersionViewController
                navigationController?.pushViewController(vc, animated: true)
            }else if indexPath.row == 1 {
                let sb = UIStoryboard(name: "Setting", bundle: nil)
                let vc = sb.instantiateViewController(withIdentifier: "SettingOpenLibraryViewController") as! SettingOpenLibraryViewController
                navigationController?.pushViewController(vc, animated: true)
            }else if indexPath.row == 2 {
                let alert = UIAlertController(title: "프로모션 코드를 입력해주세요", message: nil, preferredStyle: .alert)
                
                let ok = UIAlertAction(title: "취소", style: .default, handler: nil)
                let cancel = UIAlertAction(title: "확인", style: .default, handler: nil)
                alert.addAction(ok)
                alert.addAction(cancel)
                alert.addTextField ()
                present(alert, animated: true, completion: nil)

            }
        }
    }
    
    @IBAction func settingMainEditProfileClicked(_ sender: Any) {
        let sb = UIStoryboard(name: "Setting", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "SettingEditProfileViewController") as! SettingEditProfileViewController
        navigationController?.pushViewController(vc, animated: true)
        
        
    }

    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerView = Bundle.main.loadNibNamed("SettingMainHeaderTableViewCell", owner: self, options: nil)?.first as! SettingMainHeaderTableViewCell
        
        return headerView
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 52
    }
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
            
        }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return 2
        }else if section == 1 {
            return 3
        }else if section == 2 {
            return 3
        }
        
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingMainTableViewCell", for: indexPath) as! SettingMainTableViewCell
        if indexPath.section == 0 {
            if indexPath.row == 0 {
                cell.settingMainLabel.text = "백업/복원"
            }else if indexPath.row == 1 {
                cell.settingMainLabel.text = "ICLOUD"
            }
        }else if indexPath.section == 1 {
            if indexPath.row == 0 {
                cell.settingMainLabel.text = "글꼴 변경"
            }else if indexPath.row == 1 {
                cell.settingMainLabel.text = "화면 잠금"
            }else if indexPath.row == 2 {
                cell.settingMainLabel.text = "일기 알람"
            }
        }else if indexPath.section == 2{
            if indexPath.row == 0 {
                cell.settingMainLabel.text = "버전 정보"
            }else if indexPath.row == 1 {
                cell.settingMainLabel.text = "오픈소스 라이브러리"
            }else if indexPath.row == 2 {
                cell.settingMainLabel.text = "프로모션 코드"
            }
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 48
    }

}
