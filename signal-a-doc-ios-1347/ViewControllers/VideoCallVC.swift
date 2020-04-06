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

class VideoCallVC: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var imVwDoc: UIImageView!
    @IBOutlet weak var lblDocName: UILabel!
    @IBOutlet weak var imVwPatiednt: UIImageView!
    
    
    // MARK: - ViewLifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func actionDisconnect(_ sender: Any) {
    }
    @IBAction func actionVideo(_ sender: Any) {
    }
    
    @IBAction func actionMute(_ sender: Any) {
    }
    
    @IBAction func actionSpeaker(_ sender: Any) {
    }
}
