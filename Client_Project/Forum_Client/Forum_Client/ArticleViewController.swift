//
//  ArticleViewController.swift
//  Forum_Client
//
//  Created by Mac  on 2023/4/11.
//

import UIKit

class AritcleCell: UITableViewCell {
    
}
class CommentCell: UITableViewCell {
    
}
class ArticleViewController: SocketManageViewController, UITableViewDelegate, UITableViewDataSource {
    
    var ArticleData = ("Title", "Author", "Content")
    var CommentDatas = [("Author1", "Content1"), ("Author2", "Content2")]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
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
