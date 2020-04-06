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

class AboutSignalDocVM: NSObject {
    
    struct Conatact {
        var titleName = String()
    }
    
    var arrContact = [Conatact(titleName: "+2349804820804"),
                      Conatact(titleName: "contactus@signal.doc")
    ]
    
    struct SocialMedia {
        var socialName = String()
    }
    var arrSocial = [SocialMedia(socialName: "Instagram"),
                     SocialMedia(socialName: "Twitter"),
                     SocialMedia(socialName: "Facebook")
    ]
    
}

extension AboutSignalDocVC: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? objAboutSignalDocVM.arrContact.count : objAboutSignalDocVM.arrSocial.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AboutSignalTitleTVC", for: indexPath) as! AboutSignalTitleTVC
        if indexPath.section == 0 {
            cell.lblNumber.text  = objAboutSignalDocVM.arrContact[indexPath.row].titleName
            cell.vwUnderLine.isHidden = indexPath.row == 0
        } else {
            cell.lblNumber.text = objAboutSignalDocVM.arrSocial[indexPath.row].socialName
            cell.vwUnderLine.isHidden = true

        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 45
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerCell = tableView.dequeueReusableCell(withIdentifier: "AboutSignalDocTVC") as! AboutSignalDocTVC
        headerCell.lblheader.text = section == 0 ? "CONTACT US" : "SOCIAL MEDIA"
        return headerCell
    }
    
}
