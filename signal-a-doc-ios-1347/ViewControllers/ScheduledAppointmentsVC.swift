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

class ScheduledAppointmentsVC: UIViewController {
    
    //MARK:- IBOutlets
    @IBOutlet weak var btnUpcomingAppointment: UIButton!
    @IBOutlet weak var btnPastAppointment: UIButton!
    @IBOutlet weak var tblVwAppointment: UITableView!
    @IBOutlet weak var vwSlide: UIView!
    
    //MARK:- Object
    var objScheduledAppointmentsVM = ScheduledAppointmentsVM()
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        tabBarController?.tabBar.isHidden = false
    }
    //MARK:- IBActions
    @IBAction func actionScheduledAppointment(_ sender: Any) {
        moveToNext(AvailableAppointVC.className)
    }
    @IBAction func actionChooseAppointment(_ sender: UIButton) {
        btnPastAppointment.setTitleColor(Colors.lightGray, for: .normal)
        btnUpcomingAppointment.setTitleColor(Colors.lightGray, for: .normal)
        animateSegments(sender)
        sender.setTitleColor(Colors.appColor, for: .normal)
        tblVwAppointment.reloadData()
    }
    @IBAction func actionMenu(_ sender: Any) {
        KAppDelegate.sideMenuVC.openLeft()
    }
    func animateSegments(_ sender: UIButton) {
        UIView.animate(withDuration: 0.7) {
            let originX = sender.frame.origin.x
            self.vwSlide.frame.origin = CGPoint(x: originX, y: self.vwSlide.frame.origin.y)
            self.view.layoutIfNeeded()
        }
    }
}
