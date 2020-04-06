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

class TransactionHistVM: NSObject {
    
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
    var arrtransaction = [titleCall(titleName: "PhoneCall", callTo: "Call To:John Bigman"),
                          titleCall(titleName: "VideoCall", callTo: "Call To:John Bigman"),
                          titleCall(titleName: "VideoCall", callTo: "Call To:John Bigman"),
                          titleCall(titleName: "Message", callTo: "Call To:John Bigman"),
                          titleCall(titleName: "Appoitment", callTo: "Call To:John Bigman"),
                          titleCall(titleName: "PhoneCall", callTo: "Call To:John Bigman")
    ]
}

extension TransactionHistVC: UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return objTransactionHistVM.arrMonth.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? objTransactionHistVM.arrtransaction.count : objTransactionHistVM.arrtransaction.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TransactionHistTVC", for: indexPath) as! TransactionHistTVC
        cell.lblPhoneCall.text  = objTransactionHistVM.arrtransaction[indexPath.row].titleName
        cell.lblCallTo.text  = objTransactionHistVM.arrtransaction[indexPath.row].callTo
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 45
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerCell = tableView.dequeueReusableCell(withIdentifier: "MonthTVC") as! MonthTVC
        headerCell.lblHeader.text = objTransactionHistVM.arrMonth[section].titleName
        return headerCell
    }
}
