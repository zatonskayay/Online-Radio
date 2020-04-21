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
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 23
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "registeredCell", for: indexPath)
        return cell
    }
}


