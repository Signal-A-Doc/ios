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

class ChatVM: NSObject {
    
}
extension ChatVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         
        if indexPath.row % 2 == 0 {
           let cell = tableView.dequeueReusableCell(withIdentifier: "ChatSenderTVC") as! ChatSenderTVC
             cell.vwForMsg.roundCorners([.bottomLeft,.topRight,.topLeft], radius: 15)
            
           return cell
        } else {
           let cell = tableView.dequeueReusableCell(withIdentifier: "ChatReceiverTVC") as! ChatReceiverTVC
              cell.vwForMsg.roundCorners([.bottomLeft,.bottomRight,.topRight], radius: 15)
            return cell
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        tableView.estimatedRowHeight = 200
        return UITableView.automaticDimension
    }
}
