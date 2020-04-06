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

class AvailableAppointVC: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var tblVwAvialableAppoint:UITableView!
    
    //MARK: - Variable
    var objAvailableAppointVM = AvailableAppointVM()
    
    //MARK: - ViewLifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - IBActions
    @IBAction func actionBack(_ sender:UIButton) {
        pop()
    }
    @IBAction func actionBookAppointment(_ sender: Any) {
        moveToNext(AppointReasonVC.className)
    }
}
