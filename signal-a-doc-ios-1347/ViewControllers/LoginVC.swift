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

class LoginVC: UIViewController {
    
    //MARK:- IBOutlets
    @IBOutlet weak var txtFldPassword: UITextField!
    @IBOutlet weak var txtFldEmail: UITextField!
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        UITextField.connectFields([txtFldEmail,txtFldPassword])
    }
    
    //MARK:- IBActions
    @IBAction func actionLogin(_ sender: Any) {
        rootWithDrawer(identifier: TabbarVC.className)
    }
    @IBAction func actionForgotPassword(_ sender: Any) {
        pushWithAnimation(ForgotPasswordVC.className, subType: .fromTop)
    }
    @IBAction func actionGoogleLogin(_ sender: Any) {
    }
    @IBAction func actionCreateAccount(_ sender: Any) {
        moveToNext(CreateAccountVC.className)
    }
}
