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

class CreateAccountBasicInfoVC: UIViewController {
    
    //MARK:- IBOutlets
    @IBOutlet weak var txtFldCountry: UITextField!
    @IBOutlet weak var btnFemale: UIButton!
    @IBOutlet weak var btnMale: UIButton!
    @IBOutlet weak var txtFldDOB: UITextField!
    @IBOutlet weak var txtFldPhNo: UITextField!
    @IBOutlet weak var txtFldLastName: UITextField!
    @IBOutlet weak var txtFldFirstName: UITextField!
    @IBOutlet weak var txtVwAddress: UITextView!
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        UITextField.connectFields([txtFldFirstName,txtFldLastName,txtFldPhNo,txtFldDOB])
    }
    
    //MARK:- IBActions
    @IBAction func actionContinue(_ sender: Any) {
        moveToNext(CreateAccountMedicalInfoVC.className)
    }
    @IBAction func actionChooseGender(_ sender: UIButton) {
        btnMale.isSelected = false
        btnFemale.isSelected = false
        btnMale.borderViewColor = .lightGray
        btnFemale.borderViewColor = .lightGray
        sender.isSelected = true
        sender.borderViewColor = Colors.fadeColor
    }
    @IBAction func actionBack(_ sender: Any) {
        pop()
    }
    @IBAction func actionChooseCountry(_ sender: Any) {
    }
    @IBAction func actionTermsOfService(_ sender: Any) {
    }
    @IBAction func actionPrivacyPolicy(_ sender: Any) {
    }
    @IBAction func actionSignIn(_ sender: Any) {
        navigationController?.popToViewController(ofClass: LoginVC.self)
    }
}
