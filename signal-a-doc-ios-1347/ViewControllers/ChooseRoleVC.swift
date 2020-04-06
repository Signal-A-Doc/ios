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

class ChooseRoleVC: UIViewController {
    
    //MARK:- IBOutlets
    @IBOutlet weak var btnPatient: UIButton!
    @IBOutlet weak var btnMedicalProfession: UIButton!
    @IBOutlet weak var vwAnimate: UIView!
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        vwAnimate.animateShow()
    }
    
    //MARK:- IBActions
    @IBAction func actionChooseRole(_ sender: UIButton) {
        pushWithAnimation(sender == btnPatient ? SlidePagesVC.className : "", subType: .fromTop)
    }
}

