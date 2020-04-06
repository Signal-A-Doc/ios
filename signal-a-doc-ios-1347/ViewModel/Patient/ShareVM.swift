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

class ShareVM: NSObject {
    
    struct Share {
        var titleShare = String()
        var imgVwShare = UIImage()
        var shareValue = String()
    }
    
    var arrShare = [Share(titleShare: "Photos", imgVwShare: #imageLiteral(resourceName: "ic_photos"), shareValue: "Share photos"),
                    Share(titleShare: "Videos", imgVwShare: #imageLiteral(resourceName: "ic_videos"), shareValue: "Share videos"),
                    Share(titleShare: "File", imgVwShare: #imageLiteral(resourceName: "ic_files"), shareValue: "Share files")
    ]
    
}

extension ShareVC:UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objShareVM.arrShare.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  cell = tableView.dequeueReusableCell(withIdentifier: "ShareTVC", for: indexPath) as! ShareTVC
        cell.lblShareTitle.text = objShareVM.arrShare[indexPath.row].titleShare
        cell.lblShareValue.text = objShareVM.arrShare[indexPath.row].shareValue
        cell.imgVwShare.image = objShareVM.arrShare[indexPath.row].imgVwShare
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
}
