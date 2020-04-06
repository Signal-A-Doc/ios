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

class SuccessVC: UIViewController {
    
    //MARK:- IBOutlets
    @IBOutlet weak var imgVwSuccess: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDesc: UILabel!
    @IBOutlet weak var btnSuccess: UIButton!
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        switch self.title {
        case SetTitle.emailSent:
            lblTitle.text = SetTitle.emailSent
            lblDesc.text = SetTitle.emailSentDesc
            btnSuccess.setTitle(SetTitle.goBack, for: .normal)
            imgVwSuccess.image = #imageLiteral(resourceName: "ic_mail")
        case SetTitle.congratulation:
            lblTitle.text = SetTitle.congratulation
            lblDesc.text = SetTitle.accountCreated
            btnSuccess.setTitle(SetTitle.getStarted, for: .normal)
            imgVwSuccess.image = #imageLiteral(resourceName: "ic_done")
        case SetTitle.cardAdded:
            lblTitle.text = SetTitle.cardAdded
            lblDesc.text = SetTitle.card
            btnSuccess.setTitle(SetTitle.cont, for: .normal)
            imgVwSuccess.image = #imageLiteral(resourceName: "ic_done")
        case SetTitle.booked:
            lblTitle.text = SetTitle.booked
            lblDesc.text = SetTitle.bookedDesc
            btnSuccess.setTitle(SetTitle.viewAppoint, for: .normal)
            imgVwSuccess.image = #imageLiteral(resourceName: "ic_appointments")
        default:
            break
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        tabBarController?.tabBar.isHidden = true
    }
    //MARK:- IBActions
    @IBAction func actionSuccess(_ sender: Any) {
        switch self.title {
        case SetTitle.emailSent:
            navigationController?.popToViewController(ofClass: LoginVC.self)
        case SetTitle.congratulation:
            rootWithDrawer(identifier: TabbarVC.className)
        case SetTitle.cardAdded:
            navigationController?.popToViewController(ofClass: PaymentVC.self)
        case SetTitle.booked:
             navigationController?.popToViewController(ofClass: ScheduledAppointmentsVC.self)
        default:
            break
        }
    }
}
