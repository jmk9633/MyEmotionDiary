//
//  SettingEditProfileViewController.swift
//  MyEmotionDiary
//
//  Created by 정문기 on 2020/07/30.
//  Copyright © 2020 jmk. All rights reserved.
//

import UIKit
import TextFieldEffects

extension UIViewController {

     func textFieldSetting (_ tf : HoshiTextField, placeholderText : String) {
         
        tf.borderInactiveColor = .lightGray
        tf.borderStyle = .none
        tf.textAlignment = .center
        tf.font = .boldSystemFont(ofSize: 15)
        tf.placeholder = placeholderText

         
     }
}

class SettingEditProfileViewController: UIViewController {

    @IBOutlet var settingEditSub: HoshiTextField!
    @IBOutlet var settingEditProfileName: HoshiTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldSetting(settingEditProfileName, placeholderText: "닉네임을 입력해주세요")

        textFieldSetting(settingEditSub, placeholderText: "서브 이름")

    }
    

    

}
