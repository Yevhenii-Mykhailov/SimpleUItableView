//
//  DetailsViewController.swift
//  Simple UITableView
//
//  Created by Yevhenii M on 23.10.2022.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet weak var monthNumberLable: UILabel!
    @IBOutlet weak var monthNameLable: UILabel!
    
    var monthNumber = ""
    var monthName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        monthNumberLable.text = monthNumber
        monthNameLable.text = monthName
    }
}
