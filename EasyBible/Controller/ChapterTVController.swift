//
//  VerseTVControllerTableViewController.swift
//  EasyBible
//
//  Created by WooJin Yoo on 1/21/20.
//  Copyright © 2020 Appxon. All rights reserved.
//

import UIKit

class ChapterTVController: UITableViewController {
    
    var books: Bible
    
    required init?(coder: NSCoder) {
        books = Bible()
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.chapter[section].count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChapterCell", for: indexPath)
        cell.textLabel?.text = books.chapter[indexPath.section][indexPath.row]
        
        return cell

    }
}
