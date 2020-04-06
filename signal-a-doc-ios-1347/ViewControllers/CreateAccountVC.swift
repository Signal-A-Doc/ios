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

class CreateAccountVC: UIViewController {
    
    //MARK:- IBOutlets
    @IBOutlet weak var txtFldConfirmPassword: UITextField!
    @IBOutlet weak var txtFldPassword: UITextField!
    @IBOutlet weak var txtFldEmail: UITextField!
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        UITextField.connectFields([txtFldEmail,txtFldPassword,txtFldConfirmPassword])
    }
    
    //MARK:- IBActions
    @IBAction func actionBack(_ sender: Any) {
        pop()
    }
    @IBAction func actionContinue(_ sender: Any) {
        moveToNext(CreateAccountBasicInfoVC.className)
    }
    @IBAction func actionTermsOfService(_ sender: Any) {
    }
    @IBAction func actionPrivacyPolicy(_ sender: Any) {
    }
    @IBAction func actionSignIn(_ sender: Any) {
        pop()
    }
}
