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

class MyAccountVM: NSObject {
    
// MARK: Variables
  var arrProfileDetails = [[("First Name","Kelvin"),
                            ("Last Name","Oguntayo"),
                            ("Date Of Birth","03-02-1988"),
                            ("Address","112 Venue road, Lekki Phase 1, Lekki"),
                            ("Country","Nigeria")],
                           [ ("Phone Number","01785698564"),
                            ("Email","kelvin.o@gmail.com")]]
  var arrMedicalInfo = [("Blood Type","o-"),
                        ("Weight","85Kg"),
                        ("Height","5.9 Feet"),
                        ("Allergies","Peanuts, Groundnut Oil, Crayfish"),
                        ("Recent medications", "atropine, promethazine, dicyclomine, hyoscyamine (Levsin)")]
}
extension MyAccountVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return btnMedicalInfo.isSelected ? 1 : 2
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyAccountHeaderTVC") as! MyAccountHeaderTVC
        cell.lblSecurity.isHidden = section == 0
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 && btnMedicalInfo.isSelected {
            return 0.1
        } else {
         return section == 0 ? 110 : 45
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return btnMedicalInfo.isSelected ? objAccountVM.arrMedicalInfo.count : objAccountVM.arrProfileDetails[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let dictDetail = btnMedicalInfo.isSelected ? objAccountVM.arrMedicalInfo[indexPath.row] : objAccountVM.arrProfileDetails[indexPath.section][indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyAccountTVC") as! MyAccountTVC
        cell.lblTitle.text = dictDetail.0
        cell .lblDecription.text = dictDetail.1
        cell.btnEdit.tag = indexPath.row
        cell.btnEdit.addTarget(self, action: #selector(gotoEditDetail(_:)), for: .touchUpInside)
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyAccountFooterTVC") as! MyAccountFooterTVC
            cell.lblMedicalCondition.isHidden = !btnMedicalInfo.isSelected
            cell.btnForAdd.isHidden = !btnMedicalInfo.isSelected
            cell.cnstHeightForVw.constant = btnMedicalInfo.isSelected ? 140 : 0
            return cell
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        if section == 0 && btnMyDetail.isSelected {
            return 0
        } else {
         return btnMedicalInfo.isSelected ? 325 : 150
        }
    }
    
    //MARK:- Custome method
    @objc func gotoEditDetail(_ sender:UIButton){
        present(EditDetailsPopupVC.className)
    }
}
