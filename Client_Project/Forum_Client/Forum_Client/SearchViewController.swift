//
//  SearchViewController.swift
//  Forum_Client
//
//  Created by Mac  on 2023/4/4.
//

import UIKit

class SearchResultCell: UITableViewCell {
    @IBOutlet weak var ArticleTitle: UILabel!
    @IBOutlet weak var Author: UILabel!
}
class SearchViewController: SocketManageViewController, UITableViewDelegate, UITableViewDataSource {
    //(文章標題,作者,文章ID)
    var searchResult: [(String, String, String)] = [("Title1", "Author1", "000001")]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        searchResult.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"SearchResultCell") as! SearchResultCell
        cell.ArticleTitle.text = searchResult[indexPath.row].0
        cell.Author.text = searchResult[indexPath.row].1
        return cell
    }/*
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = self.storyboard?.instantiateViewController(withIdentifier: "ArticleVC") as! ArticleViewController {
            
        }
    }*/

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Search(_ sender: UIButton) {
        //向Server請求符合搜尋條件的資料
        //更新SearchResult陣列
    }/*
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //用SearchResult的文章ID向Server請求該文章的內容與留言
        if let vc = self.storyboard?.instantiateViewController(withIdentifier: "ArticleVC") {
            //將向Server請求到的資料放入ArticleVC的內容中
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }*/
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
