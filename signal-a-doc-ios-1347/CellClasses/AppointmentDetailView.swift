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

class AppointmentDetailView: UIView {
     
    //MARK:- Variables
    var objectParent = MyAccountVC()
    class func loadNib() -> AppointmentDetailView? {
        if let customView = Bundle.main.loadNibNamed("AppointmentDetailView", owner: self, options: nil)?.first as? AppointmentDetailView {
            return customView
        } else {
            return nil
        }
    }
    func setup(parentView: UIView, completion:@escaping()->Void) {
        guard let objParentController = parentView.viewContainingController() as? MyAccountVC else {
            return
        }
        objectParent = objParentController
        completion()
    }
    
    //MARK:- Actions
    @IBAction func actionClose(_ sender: UIButton) {
         objectParent.dismiss()
    }
}
