//
//  ViewController.swift
//  NibFilePractice
//
//  Created by Michelle Grover on 11/15/19.
//  Copyright © 2019 Norbert Grover. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var imageItems:[String] = ["cut_1", "cut_2", "cut_3", "cut_4"]
    var imageNames:[String] = ["Haircut 1", "Haircut 2", "Haircut 3", "Haircut 4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    private func setupTableView() {
        let nib = UINib(nibName: "ItemTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "cellIdentifier")
    }


}


extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath) as! ItemTableViewCell
        cell.ItemImageView?.image = UIImage(named: imageItems[indexPath.row])
        cell.ItemLabel.text = imageNames[indexPath.row]
        return cell
    }
    
    
    
}

extension ViewController:UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.frame.height / 4
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("indexPath:\(indexPath.row)")
    }
}
