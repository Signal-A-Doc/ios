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

class MedicalCondVM: NSObject {
    
    struct Disease {
        var titleDisease = String()
    }
    
    var arrDisease = [Disease(titleDisease: "Abnormal thyroid"),
                      Disease(titleDisease: "Anxiety"),
                      Disease(titleDisease: "Arthritis"),
                      Disease(titleDisease: "Asthma"),
                      Disease(titleDisease: "Cancer"),
                      Disease(titleDisease: "COPD"),
                      Disease(titleDisease: "Depression"),
                      Disease(titleDisease: "Diabetes"),
                      Disease(titleDisease: "Heart disease (CHF, MI)"),
                      Disease(titleDisease: "High blood pressure"),
                      Disease(titleDisease: "High cholesterol"),
                      Disease(titleDisease: "History of fainting/seizure"),
                      Disease(titleDisease: "History of falls"),
                      Disease(titleDisease: "History of STD"),
                      Disease(titleDisease: "History of skin cancer"),
                      Disease(titleDisease: "History of stroke"),
    ]
}

extension MedicalCondVC : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objMedicalCondVM.arrDisease.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MedicalCondTVC", for: indexPath) as! MedicalCondTVC
        cell.lblDiseaseName.text = objMedicalCondVM.arrDisease[indexPath.row].titleDisease
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        55
    }
}

