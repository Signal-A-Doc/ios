//
/**
 *
 *@copyright : ToXSL Technologies Pvt. Ltd. < www.toxsl.com >
 *@author     : Shiv Charan Panjeta < shiv@toxsl.com >
 *
 * All Rights Reserved.
 * Proprietary and confidential :  All information contained herein is, and remains
 * the property of ToXSL Technologies Pvt. Ltd. and its partners.
 * Unauthorized copying of this file, via any medium is strictly prohibited.
 */

import UIKit

class HomeVM: NSObject {
    
}

extension HomeVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var tblCell = UITableViewCell()
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "DrListTVC") as! DrListTVC
            cell.reload()
            tblCell = cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "LearnMoreTVC") as! LearnMoreTVC
            cell.reload()
            tblCell = cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryTVC") as! CategoryTVC
            cell.reload()
            tblCell = cell
        default:
            break
        }
        return tblCell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 2 {
            let headerCell = tableView.dequeueReusableCell(withIdentifier: "HeaderTVC") as! HeaderTVC
            return headerCell
        } else {
            return nil
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 2 {
            return 50
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        var size = CGFloat()
        switch indexPath.section {
        case 0:
            size = 210
        case 1:
            size = 120
        case 2:
            size = 130

        default:
            break
        }
        return size
    }
}
