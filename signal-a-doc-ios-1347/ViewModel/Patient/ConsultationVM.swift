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

class ConsultationVM: NSObject {
    
    struct Consultant {
        var titleName = String()
        var imageConsultant = UIImage()
    }
    
    var arrConsultant = [Consultant(titleName: "Call Consultation", imageConsultant: #imageLiteral(resourceName: "ic_call_big")),
                         Consultant(titleName: "Message Consultation", imageConsultant: #imageLiteral(resourceName: "ic_message_big")),
                         Consultant(titleName: "Video Call Consultation", imageConsultant: #imageLiteral(resourceName: "ic_video_chat")),
                         Consultant(titleName: "Face to Face Consultation", imageConsultant: #imageLiteral(resourceName: "ic_user_b")),
    ]
}

extension ConsultationVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objConsultationVM.arrConsultant.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ConsultationTVC", for: indexPath) as! ConsultationTVC
     //   cell.lblConsult.text = objConsultationVM.arrConsultant[indexPath.row].titleName
        //cell.imgVwConsultant.image = objConsultationVM.arrConsultant[indexPath.row].imageConsultant
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
}
