//
//  ViewController.swift
//  Simple UITableView
//
//  Created by Yevhenii M on 23.10.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    let arrayOfMoths = ["January", "February", "March", "April",
                        "May", "June", "July", "August",
                        "September", "October", "Nowember", "December"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let monthNumber = indexPath.row
        let monthName = arrayOfMoths[indexPath.row]
        
        let main = UIStoryboard(name: "Main", bundle: nil)
        if let vc = main.instantiateViewController(withIdentifier: "DetailsViewController") as? DetailsViewController {
            navigationController?.pushViewController(vc, animated: true)
            vc.monthName = monthName
            vc.monthNumber = String(monthNumber + 1)
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayOfMoths.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = arrayOfMoths[indexPath.row]
        return cell
    }
}

