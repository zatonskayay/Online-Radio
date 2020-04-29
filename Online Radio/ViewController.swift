//
//  ViewController.swift
//  Online Radio
//
//  Created by Yulia Zatonskaya on 14.04.2020.
//  Copyright © 2020 Zatonskayay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.register(UINib(nibName: "LabelTable", bundle: nil), forCellReuseIdentifier: "registeredCell")
        tableView.register(UINib(nibName: "Title", bundle: nil), forCellReuseIdentifier: "titleLabel")
        tableView.register(UINib(nibName: "CarouselCell", bundle: nil), forCellReuseIdentifier: "carouselCell")
        
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 23
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "titleLabel", for: indexPath) as! Title
            cell.titleLabel.text = "Любимые станции"
            return cell
        } else {
            if indexPath.row == 1 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "carouselCell", for: indexPath)
                return cell
            } else {
                if indexPath.row == 2 {
                    let cell = tableView.dequeueReusableCell(withIdentifier: "titleLabel", for: indexPath) as! Title
                    cell.titleLabel.text = "Все станции"
                    return cell
                } else {
                    let cell = tableView.dequeueReusableCell(withIdentifier: "registeredCell", for: indexPath)
                    return cell
                }
            }
        }
    }
}


