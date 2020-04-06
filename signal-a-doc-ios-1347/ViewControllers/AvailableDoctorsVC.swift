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

class AvailableDoctorsVC: UIViewController, ConfirmBooking {
    
    //MARK:- Outlets
    @IBOutlet weak var clcVwDoctors: UICollectionView!
    
    //MARK:- Variables
    let objAvailableDocVM = AvailableDoctorsVM()
    
    //MARK:- View Life cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        confirmStatusDelegate = self
    }
    
    //MARK:- Actions
    @IBAction func actionBack(_ sender: UIButton) {
        pop()
    }
    func bookingConfirmed() {
        pushWithAnimation(SuccessVC.className, subType: .fromTop, titleVal: SetTitle.booked)
    }
}
