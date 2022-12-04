//
//  ViewController.swift
//  table2
//
//  Created by mac on 04/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableVIew: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableVIew.delegate = self
        tableVIew.dataSource = self
        
        tableVIew.register(UITableView.self, forCellReuseIdentifier: "cell")
        // Do any additional setup after loading the view.
    }


}
extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.backgroundColor = .red  
        return cell
    }
}

