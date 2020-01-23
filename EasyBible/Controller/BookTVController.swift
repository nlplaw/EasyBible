//
//  ViewController.swift
//  EasyBible
//
//  Created by WooJin Yoo on 1/20/20.
//  Copyright © 2020 Appxon. All rights reserved.
//

import UIKit

class BookTVController: UITableViewController {
    
    var books : Bible
    
    
    required init?(coder: NSCoder) {
        books = Bible()
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return books.testament[section]
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return books.testament.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.book[section].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell", for: indexPath)
        cell.textLabel?.text = books.book[indexPath.section][indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "ToChapterVC", sender: nil)
        tableView.deselectRow(at: indexPath, animated: true)
        let cell = books.book[indexPath.section][indexPath.row]
        print(cell)
    }
}
