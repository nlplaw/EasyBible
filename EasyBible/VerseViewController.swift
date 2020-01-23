//
//  VerseViewController.swift
//  EasyBible
//
//  Created by WooJin Yoo on 1/21/20.
//  Copyright © 2020 Appxon. All rights reserved.
//

import UIKit

class VerseViewController: UIViewController {


    @IBOutlet weak var verseLabel: UILabel!
    
    var myVerse : String? = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        verseLabel.text = myVerse
        verseLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        verseLabel.sizeToFit()
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
