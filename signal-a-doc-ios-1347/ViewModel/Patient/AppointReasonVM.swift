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

class AppointReasonVM: NSObject {
    
    struct DiseaseName {
        var diseaseType = String()
    }
    
    var arrDiesease = [DiseaseName(diseaseType: "Cough"),
                       DiseaseName(diseaseType: "Cold"),
                       DiseaseName(diseaseType: "Allergies"),
                       DiseaseName(diseaseType: "Influenza"),
                       DiseaseName(diseaseType: "Prescriptions refill"),
                       DiseaseName(diseaseType: "Acene"),
                       DiseaseName(diseaseType: "Sore throat"),
                       DiseaseName(diseaseType: "Alleric reaction")
    ]
}

extension AppointReasonVC : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objAppointReasonVM.arrDiesease.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SignalDocTVC", for: indexPath) as! SignalDocTVC
        cell.lblDisease.text = objAppointReasonVM.arrDiesease[indexPath.row].diseaseType
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        moveToNext(AppointmentInfoVC.className)
    }
}

