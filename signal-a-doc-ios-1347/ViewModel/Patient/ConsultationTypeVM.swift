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

class ConsultationTypeVM: NSObject {
    
// MARK: Variables
   var vwConsultationType: ConsulationView!
   var arrOptionType = [("Call Consulation","ic_call_blue"),("Chat Consulation","ic_messgae_blue"),("Video Call Consulation","ic_video_blue"),("Face to Face Consulation","ic_user_b")]
}

extension ConsultationTypeVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objConsTypeVM.arrOptionType.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ConsultationTVC") as! ConsultationTVC
        let dictCons = objConsTypeVM.arrOptionType[indexPath.row]
        cell.imgVwConsultantation.image = UIImage(named: dictCons.1)
        cell.lblTitle.text = dictCons.0
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        vwMain.isHidden = false
        vwForTable.isHidden = true
        objConsTypeVM.vwConsultationType.setup(parentView: vwMain) {
            self.objConsTypeVM.vwConsultationType.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: self.vwMain.frame.height)
            self.vwMain.addSubview(self.objConsTypeVM.vwConsultationType)
            self.view.layoutIfNeeded()
        }
    }
    
     func setupViews() {
             if self.objConsTypeVM.vwConsultationType == nil {
                 guard let consultationVw = ConsulationView.loadNib() else {
                     return
                 }
            self.objConsTypeVM.vwConsultationType = consultationVw
        }
    }
}
