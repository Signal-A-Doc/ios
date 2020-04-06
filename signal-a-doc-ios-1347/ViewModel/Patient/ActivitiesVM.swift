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

class ActivitiesVM: NSObject {
    
    struct MonthTitle {
        var titleName = String()
    }
    
    var arrMonth = [MonthTitle(titleName: "JANUARY,2020"),
                    MonthTitle(titleName: "FEBRUARY, 2020")
    ]
    
    struct titleCall {
        var titleName = String()
        var callTo = String()
    }
    var arrtransaction = [titleCall(titleName: "Phone call to Dr Ade", callTo: "12:00 PM | 05-02-2020"),
                          titleCall(titleName: "Updated Medical Infomation", callTo: "12:00 PM | 05-02-2020"),
                          titleCall(titleName: "Scheduled an appointment with Dr. Shitu", callTo: "12:00 PM | 05-02-2020"),
                          titleCall(titleName: "Logged Out", callTo: "12:00 PM | 05-02-2020"),
                          titleCall(titleName: "Logged in", callTo: "12:00 PM | 05-02-2020"),
                          titleCall(titleName: "Appoitment", callTo: "12:00 PM | 05-02-2020"),
                          titleCall(titleName: "PhoneCall", callTo: "12:00 PM | 05-02-2020")
    ]
}

extension ActivitiesVC: UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return objActivitiesVM.arrMonth.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? objActivitiesVM.arrtransaction.count : objActivitiesVM.arrtransaction.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ActivitiesTVC", for: indexPath) as! ActivitiesTVC
        cell.lblActivitiesTitle.text  = objActivitiesVM.arrtransaction[indexPath.row].titleName
        cell.lblActivitiesCall.text  = objActivitiesVM.arrtransaction[indexPath.row].callTo
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 45
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if let headerCell = tableView.dequeueReusableCell(withIdentifier: "MonthlyActivitiesTVC") as? MonthlyActivitiesTVC {
        headerCell.lblHeader.text = objActivitiesVM.arrMonth[section].titleName
        return headerCell
        }
        return UITableViewCell()
    }
}
