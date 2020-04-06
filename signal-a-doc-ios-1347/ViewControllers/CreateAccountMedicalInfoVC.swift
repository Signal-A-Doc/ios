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
import SkyFloatingLabelTextField

class CreateAccountMedicalInfoVC: UIViewController {
    
    //MARK:- IBOutlets
    @IBOutlet weak var txtFldBloodType: UITextField!
    @IBOutlet weak var txtFldBloodGroup: UITextField!
    @IBOutlet weak var txtFldMedicalCondition: SkyFloatingLabelTextField!
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        txtFldMedicalCondition.titleFormatter = {$0}
    }
    
    //MARK:- IBActions
    @IBAction func actionSignIn(_ sender: Any) {
        navigationController?.popToViewController(ofClass: LoginVC.self)
    }
    @IBAction func actionDone(_ sender: Any) {
        moveToNext(AddCardVC.className)
    }
    @IBAction func actionBack(_ sender: Any) {
        pop()
    }
    @IBAction func actionSkip(_ sender: Any) {
    }
}
