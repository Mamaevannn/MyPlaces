//
//  TableViewController.swift
//  MyPlaces
//
//  Created by Наида Мамаева on 24.02.2022.
//

import UIKit

class TableViewController: UITableViewController {

    let restaurantNames = [
    "Ava", "Mina", "13", "Pinch", "Pino", "Eva", "Share", "Lotus", "Gutai", "Lucky Izakaya", "Shiba", "Ugolyok", "Северяне"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell

        cell.nameLabel.text = restaurantNames[indexPath.row]
        cell.imageOfPlace.image = UIImage(named: restaurantNames[indexPath.row])
//        cell.imageOfPlace.layer.cornerRadius = cell.imageOfPlace.frame.size.height/2
        cell.imageOfPlace.clipsToBounds = true
        
        return cell
    }
    
    // MARK: table view delegate
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
        
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
