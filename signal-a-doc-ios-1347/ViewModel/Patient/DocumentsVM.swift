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

class DocumentsVM: NSObject {
    struct LabTestName {
        var labTestType = String()
    }
    
    var arrDiesease = [LabTestName(labTestType: "Lab test result 1"),
                       LabTestName(labTestType: "Lab test result 2"),
                       LabTestName(labTestType: "EHR Files"),
                       LabTestName(labTestType: "Blood Test result"),
                       LabTestName(labTestType: "Lab test result 5"),
                       
    ]
}

extension DocumentsVC : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objDocumentsVM.arrDiesease.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DocumentsTVC", for: indexPath) as! DocumentsTVC
        cell.lblLabTestResult.text = objDocumentsVM.arrDiesease[indexPath.row].labTestType
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 95
    }
}

