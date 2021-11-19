

import UIKit
import Elements

class FriendsListViewController: UITableViewController{
    
    let friends : [String] = [
        "Alexander Valley",
        "Anderson Valley",
        "Atlas Peak",
        "Bennett Valley",
        "Calistoga",
        "Chalk Hill",
        "Diamond Mountain",
        "Dry Creek Valley",
        "Fort Ross / Seaview",
        "Green Valley",
        "Howell Mountain",
        "Knights Valley",
        "Los Carneros",
        "Liam Valley",
        "mike Valley",
        "nik Valley"
    ]


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Friends"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellidentifier")
        
        
      
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cellidentifier")
        if cell == nil{
            cell = UITableViewCell(style: .default, reuseIdentifier: "cellidentifier")
        }
        cell?.textLabel?.text = friends[indexPath.row]
        return cell!
    }
}
