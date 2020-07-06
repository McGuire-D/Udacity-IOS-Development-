//
//  TableViewController.swift
//  MemeMePractice
//
//  Created by Dustin McGuire on 7/1/20.
//  Copyright © 2020 Dustin McGuire. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        tableView.reloadData()
        navigationController?.isNavigationBarHidden = false
        tabBarController?.tabBar.isHidden = false
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (UIApplication.shared.delegate as! AppDelegate).memes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for:indexPath) as! TableViewCell
        let meme = (UIApplication.shared.delegate as! AppDelegate).memes[indexPath.row]
        cell.setupCellWith(Meme: meme)
        
        
        
        
        return cell
    }
    
   
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let memeDetail = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        let meme = (UIApplication.shared.delegate as! AppDelegate).memes[indexPath.row]
        memeDetail.detailMeme = meme
        navigationController?.pushViewController(memeDetail, animated: true)
    }
}
