//
//  SignUpViewController.swift
//  Forum_Client
//
//  Created by Mac  on 2023/3/31.
//

import UIKit

class SignUpViewController: SocketManageViewController {

    @IBOutlet weak var Mail: UITextField!
    @IBOutlet weak var Account: UITextField!
    @IBOutlet weak var Password: UITextField!
    @IBOutlet weak var ConfirmPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func SignUp(_ sender: UIButton) {
        //傳送申請資料與申請請求給Server等待回應
        //wait for return
        //以下做反應，若Ｓerver回傳註冊成功則回登入畫面，若失敗則顯示失敗訊息
        if true {
            self.navigationController?.popViewController(animated: true)
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
