//
//  HomePageViewController.swift
//  Forum_Client
//
//  Created by Mac  on 2023/4/2.
//

import UIKit

class ArticleBlockCell: UICollectionViewCell {
    @IBOutlet weak var Image: UIImageView!
    @IBOutlet weak var Title: UILabel!
    
    var articleID: String? = ""
}


var titles = ["Aran", "Mercedes", "Evan", "Eunwol", "Phantom", "Luminous", "Aran", "Mercedes", "Evan", "Eunwol", "Phantom", "Luminous"]  //This array will be change dynamically with the data acquired from the server


class HomePageViewController: SocketManageViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    var NumberOfBlock: Int?
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return titles.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ArticleBlockCell", for: indexPath) as! ArticleBlockCell
        cell.Image.contentMode = .scaleToFill
        cell.Image.image = UIImage(named:(titles[indexPath.row]))
        cell.Title.text = titles[indexPath.row]
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        NumberOfBlock = 10
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
