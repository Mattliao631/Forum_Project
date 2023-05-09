//
//  ArticleViewController.swift
//  Forum_Client
//
//  Created by Mac  on 2023/4/11.
//

import UIKit

class ArticleViewController: SocketManageViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        if row == 0{
            if let articleCell = tableView.dequeueReusableCell(withIdentifier: "ArticleCell") as? ArticleTableViewCell{
                
                return articleCell
            }
            return UITableViewCell()
        }
        else{
            if let commentCell = tableView.dequeueReusableCell(withIdentifier: "CommentCell") as? CommentTableViewCell{
                return commentCell
            }
            return UITableViewCell()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
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
