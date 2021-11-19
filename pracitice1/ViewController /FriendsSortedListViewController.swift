import UIKit
import Elements

class FriendsSortedListViewController : UITableViewController{
    
    let sortedFriends : [[String]] = [
        ["Alexander Valley",
         "Anderson Valley",
         "Atlas Peak"],
        ["Bennett Valley"],
        ["Calistoga",
         "Chalk Hill"],
        ["Diamond Mountain",
         "Dry Creek Valley"],
        ["Green Valley"],
        ["Fort Ross / Seaview"],
        ["Green Valley",],
        [ "Howell Mountain"],
        [ "Knights Valley"],
        ["Los Carneros"],
        ["Liam Valley"],
        ["mike Valley"],
        ["nik Valley"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Friends"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellidentifier")
        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return sortedFriends.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sortedFriends[section].count
    }



    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cellidentifier")
        if cell == nil{
            cell = UITableViewCell(style: .default, reuseIdentifier: "cellidentifier")
        }
        let sectionData = sortedFriends[indexPath.section]
        cell?.textLabel?.text = sectionData[indexPath.row]
        return cell!
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "\(section)"
    }

}
