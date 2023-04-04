//
//  SocketManageViewController.swift
//  Forum_Client
//
//  Created by Mac  on 2023/4/3.
//

// 這個 ViewController 不會直接被任何一個View使用，而是用來被需要網路功能的ViewController繼承並提供資料傳輸功能
import UIKit
import CocoaAsyncSocket


class SocketManageViewController: UIViewController, GCDAsyncSocketDelegate {

    private var socket: GCDAsyncSocket!
    private var ServerAddress = "127.0.0.1"
    private var port = "7000"
    private var receivedData = ""
    private var dataBeingSend: Data?
    var received: Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        socket = GCDAsyncSocket(delegate: self, delegateQueue: DispatchQueue.main)
        do{
            try socket.connect(toHost: ServerAddress, onPort: UInt16(port)!, withTimeout: -1)
        }catch {
            print("連線失敗")
        }
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        socket.disconnect()
    }
    
    func socket(_ sock: GCDAsyncSocket, didConnectToHost host: String, port: UInt16) {
        socket.readData(withTimeout: -1, tag: 0)
    }
    func socket(_ sock: GCDAsyncSocket, didRead data: Data, withTag tag: Int) {
        self.receivedData = String(data: data, encoding: .utf8)!
        socket.readData(withTimeout: -1, tag: 0)
    }
    func sendData(data:String) {
        dataBeingSend = data.data(using: .utf8)
        socket.write(dataBeingSend, withTimeout: -1, tag: 0)
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
