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

class ProfessionCategoryVC: UIViewController {
    //MARK:- Outlets
    @IBOutlet weak var tblVwCategory: UITableView!
    
    //MARK:- Variables
    let objProfCategoryVM = ProfessionCategoryVM()
    
    //MARK:- View life cycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK:- Actions
    @IBAction func actionBack(_ sender: Any) {
        pop()
    }
}
