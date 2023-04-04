//
//  MainViewController.swift
//  Forum_Client
//
//  Created by Mac  on 2023/3/26.
//

import UIKit
import CocoaAsyncSocket


class SignInViewController: SocketManageViewController {

    @IBOutlet weak var Account: UITextField!
    @IBOutlet weak var Password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func SignIn(_ sender: UIButton) {
        //傳送輸入的帳號密碼資訊給Server
        //wait for return
        //若Server 回傳登入資料驗證成功則載入個人資料並進入APP主頁
        if true {
            if let vc = self.storyboard?.instantiateViewController(withIdentifier: "TabBarVC") {
                //載入接收到的個人資料
                self.navigationController?.pushViewController(vc, animated: true)
            }
        } else {
            
        }
    }
    @IBAction func SignUp(_ sender: UIButton) {
        if let sign_in_vc = storyboard?.instantiateViewController(withIdentifier: "SignUpVC") {
            self.navigationController?.pushViewController(sign_in_vc, animated: true)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
