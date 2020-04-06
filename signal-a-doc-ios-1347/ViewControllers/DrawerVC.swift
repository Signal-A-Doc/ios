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

class DrawerVC: UIViewController {
    //MARK:- Outlets
    @IBOutlet weak var tblViewDrawer: UITableView!
    @IBOutlet weak var lblUserName: UILabel!
    @IBOutlet weak var lblUserImage: UIImageView!
    
    //MARK:- Variables
    var arrForMenu = [("Find a medical professional","ic_medical_d",""),("Appointments","ic_appointments_d",""),("Activties","ic_subscription",""),("Payments & Subscription","ic_payments",""),("Documents","ic_documents",""),("Health Tips","ic_health_d",""),("Invite A Friend","ic_invite_d",""),("About Signal A Doc","ic_about",""),("Settings","ic_setting","")]
    //MARK:- View life methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK:- Actions
    @IBAction func actionLogout(_ sender: UIButton) {
        rootVC(ChooseRoleVC.className)
    }
    @IBAction func actionCloseMenu(_ sender: UIButton) {
        KAppDelegate.sideMenuVC.closeLeft()
    }
    @IBAction func actionViewAccount(_ sender: UIButton) {
        KAppDelegate.sideMenuVC.closeLeft()
        if let tabVc = KAppDelegate.sideMenuVC.mainViewController as? UITabBarController {
            if let navVc = tabVc.selectedViewController as? UINavigationController {
                if let visibleVc = navVc.visibleViewController {
                    visibleVc.moveToNext(MyAccountVC.className)
                }
            }
        }
    }
}

extension DrawerVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrForMenu.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DrawerTVC") as! DrawerTVC
        let dictMenu = arrForMenu[indexPath.row]
        cell.lblMenuTitle.text = dictMenu.0
        cell.imgVwIcon.image = UIImage(named: dictMenu.1)
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        KAppDelegate.sideMenuVC.closeLeft()
        var controller = UIViewController()
        if let tabVc = KAppDelegate.sideMenuVC.mainViewController as? UITabBarController {
            if let navVc = tabVc.selectedViewController as? UINavigationController {
                if let visibleVc = navVc.visibleViewController {
                    controller = visibleVc
                }
            }
        } else if let viewC = KAppDelegate.sideMenuVC.mainViewController {
            controller = viewC
        }
        switch indexPath.row {
        case 0:
            controller.moveToNext(ProfessionCategoryVC.className)
        case 1:
            controller.moveToNext(ScheduledAppointmentsVC.className)
        case 2:
            controller.moveToNext(ActivitiesVC.className)
        case 3:
            controller.moveToNext(PaymentVC.className)
        case 4:
            controller.moveToNext(DocumentsVC.className)
        case 5:
            controller.moveToNext(HealthTipsVC.className)
        case 7:
            controller.moveToNext(AboutSignalDocVC.className)
        default:
            break
        }
    }
}
