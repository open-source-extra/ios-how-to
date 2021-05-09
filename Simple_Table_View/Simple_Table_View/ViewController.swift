//
//  ViewController.swift
//  Simple_Table_View
//
//  Created by Sanviraj Zahin Haque on 9/5/21.
//

import UIKit

class ViewController: UIViewController {
    
    //initialize the tableview
    
    private let basicTableView : UITableView = {
        
        let table = UITableView()
        //register a cell to the table
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        //adding the table to the view
        view.addSubview(basicTableView)
        //setting the datasource and delegate for the table view
        basicTableView.dataSource = self
        basicTableView.delegate = self
    }
    
    //layouting the view
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        basicTableView.frame = view.bounds
    }


}

//necessary functions to create and show the table view
extension ViewController : UITableViewDelegate , UITableViewDataSource{
    
    //returns the number of rows in a table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = basicTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Hello there \(indexPath.row+1)"
        return cell
        
    }
    
    
}
