//
//  ViewController.swift
//  APP10
//
//  Created by ENRIQUE VERGARA  on 9/27/19.
//  Copyright © 2019 ENRIQUE VERGARA . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var personas = ["jose", "enrique", "vergara", "ambriz", "jose jose", "enrique", "juan", "mariana"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //MARK: Métodos de DataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        if indexPath.row % 2 == 0 {
            cell.textLabel?.textColor = .white
            cell.backgroundColor = .black
        }
        cell.textLabel?.text = personas[indexPath.row].uppercased()
        cell.imageView?.image = UIImage(named : "mexico")
        return cell
    }
    
    
    //MARK: Métodos del delegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("💩💩💩💩💩💩💩💩💩💩💩💩💩💩")
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

}
