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

class ChooseSymptomsVM: NSObject {
    
    // MARK: Variables
    var arrSelected = NSMutableArray()
}

extension ChooseSymptomsVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 1 ? 11 : 7
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChooseSymptomTVC") as! ChooseSymptomTVC
        if objChooseSymptomsVM.arrSelected.contains(indexPath.row) {
            cell.imgVwTick.isHighlighted = true
        } else {
            cell.imgVwTick.isHighlighted = false
        }
        return cell
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerCell = tableView.dequeueReusableCell(withIdentifier: "ChooseSymptomHeaderTVC") as! ChooseSymptomHeaderTVC
        switch section {
        case 0:
            headerCell.lblTitle.text = SetTitle.generalSymptom
        case 1:
            headerCell.lblTitle.text = SetTitle.head
        case 2:
            headerCell.lblTitle.text = SetTitle.chest
        default:
            break
        }
        return headerCell
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if objChooseSymptomsVM.arrSelected.contains(indexPath.row) {
            objChooseSymptomsVM.arrSelected.remove(indexPath.row)
        } else {
            self.objChooseSymptomsVM.arrSelected.add(indexPath.row)
        }
        tblVwChooseSymptom.reloadData()
    }
}
