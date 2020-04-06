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

class HomeVC: UIViewController {
    
    //MARK:- IBOutlets
    @IBOutlet weak var tblVwHome: UITableView!
    
    //MARK:- Object
    var objHomeVM = HomeVM()
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        tblVwHome.reloadData()
    }
    
    //MARK:- IBActions
    @IBAction func actionMenu(_ sender: Any) {
        KAppDelegate.sideMenuVC.openLeft()
    }
    @IBAction func actionNotification(_ sender: Any) {
        pushWithAnimation(NotificationVC.className, subType: .fromRight)
    }
}
