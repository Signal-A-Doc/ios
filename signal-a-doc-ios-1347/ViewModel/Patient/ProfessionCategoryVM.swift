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

class ProfessionCategoryVM: NSObject {
    
    // MARK: Variables
      var arrProfessionCat = [("ic_general","General Practitional"),("ic_dentist","Dentist"),("ic_fertility","Fertility Doctor"),("ic_eye","Eye Doctor")]
}

extension ProfessionCategoryVC:UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objProfCategoryVM.arrProfessionCat.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProfessionCategoryTVC") as! ProfessionCategoryTVC
        let dictCategory = objProfCategoryVM.arrProfessionCat[indexPath.row]
        cell.lblCategory.text = dictCategory.1
        cell.imgVwCategory.image = UIImage(named: dictCategory.0)
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        moveToNext(MedicalProfessionalVC.className)
    }
}
