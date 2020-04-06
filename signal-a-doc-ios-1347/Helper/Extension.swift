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

import Foundation
import UIKit

class Extension: NSObject {
    
}

extension UIViewController {
    
    func moveToNext(storyBoard: StoryBoardType = .patient,_ identifier: String, titleVal: String = "") {
        let controller = storyBoard.storyboard.instantiateViewController(withIdentifier: identifier)
        controller.title = titleVal
        self.navigationController?.pushViewController(controller, animated: true)
    }
    func pop(animate: Bool = true) {
        navigationController?.popViewController(animated: animate)
    }
    func present(storyBoard: StoryBoardType = .patient,_ identifier: String) {
        let controller  = storyBoard.storyboard.instantiateViewController(withIdentifier: identifier)
        present(controller, animated: true, completion: nil)
    }
    func dismiss() {
        dismiss(animated: true, completion: nil)
    }
    func rootVC(storyBoard: StoryBoardType = .patient,_ identifier: String) {
        let controller = storyBoard.storyboard.instantiateViewController(withIdentifier: identifier)
        self.view.window?.rootViewController = controller
    }
    func pushWithAnimation (storyBoard: StoryBoardType = .patient,_ indentifier: String, subType: CATransitionSubtype, titleVal: String = ""){
        let controller = storyBoard.storyboard.instantiateViewController(withIdentifier: indentifier)
        controller.title = titleVal
        let transition:CATransition = CATransition()
        transition.duration = 0.5
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeIn)
        transition.type = CATransitionType.push
        transition.subtype = subType
        self.navigationController!.view.layer.add(transition, forKey: kCATransition)
        self.navigationController?.pushViewController(controller, animated: false)
    }
    func presentWithAnimation (storyBoard: StoryBoardType = .patient,_ indentifier: String){
        UIView.animate(withDuration: 0.6) {
            let controller = storyBoard.storyboard.instantiateViewController(withIdentifier: indentifier)
            let transition:CATransition = CATransition()
            transition.duration = 0.5
            transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeIn)
            transition.type = CATransitionType.moveIn
            transition.subtype = CATransitionSubtype.fromBottom
            self.view.layer.add(transition, forKey: kCATransition)
            self.navigationController?.present(controller, animated: true, completion: nil)
        }
    }
    func rootWithDrawer(identifier: String, titleVal: String = "") -> Void {
        
        let mainViewController =  self.storyboard?.instantiateViewController(withIdentifier:identifier)
        let sideViewController =  self.storyboard?.instantiateViewController(withIdentifier: "DrawerVC")
        let slideMenuController = SlideMenuController.init(mainViewController: mainViewController!, leftMenuViewController: sideViewController!)
        slideMenuController.automaticallyAdjustsScrollViewInsets = true
        slideMenuController.delegate = mainViewController as? SlideMenuControllerDelegate
        KAppDelegate.sideMenuVC = slideMenuController
        slideMenuController.title = titleVal
        self.view.window?.rootViewController = slideMenuController
    }
    func topMostViewController() -> UIViewController {
        if self.presentedViewController == nil {
            return self
        }
        if let navigation = self.presentedViewController as? UINavigationController {
            return (navigation.visibleViewController?.topMostViewController())!
        }
        if let tab = self.presentedViewController as? UITabBarController {
            if let selectedTab = tab.selectedViewController {
                return selectedTab.topMostViewController()
            }
            return tab.topMostViewController()
        }
        return self.presentedViewController!.topMostViewController()
    }
}


extension Date {
    func dateToString(fomrat:String) -> String {
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = fomrat
        return dateformatter.string(from: self)
    }
}

extension UIApplication {
    func topMostViewController() -> UIViewController? {
        return self.keyWindow?.rootViewController?.topMostViewController()
    }
}

extension UIView{
    func animateShow(){
        UIView.animate(withDuration: 0.7, delay: 0, options: [.curveEaseIn],
                       animations: {
                        self.center.y -= self.bounds.height
                        self.layoutIfNeeded()
        }, completion: nil)
        self.isHidden = false
    }
    func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
}

extension UITextField {
    
    class func connectFields(_ fields: [UITextField]) {
        guard let last = fields.last else { return }
        fields.forEach { $0.removeTarget(nil, action: nil, for: .editingDidEndOnExit) }
        for i in 0 ..< fields.count - 1 {
            fields[i].returnKeyType = .next
            fields[i].addTarget(fields[i + 1], action: #selector(UIResponder.becomeFirstResponder), for: .editingDidEndOnExit)
        }
        last.returnKeyType = .done
        last.addTarget(last, action: #selector(UIResponder.resignFirstResponder), for: .editingDidEndOnExit)
    }
}

extension String {
    
    var isValidName : Bool {
        let nameRegEx = "^[a-zA-ZàáâäãåąčćęèéêëėįìíîïłńòóôöõøùúûüųūÿýżźñçčšžÀÁÂÄÃÅĄĆČĖĘÈÉÊËÌÍÎÏĮŁŃÒÓÔÖÕØÙÚÛÜŲŪŸÝŻŹÑßÇŒÆČŠŽ∂ð' -]+$"
        let range = self.range(of: nameRegEx, options:.regularExpression)
        return range != nil
    }
    
    var isValidEmail : Bool  {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        return (self.range(of: emailRegEx, options:.regularExpression) != nil)
    }
    
    var isBlank : Bool {
        return (self.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty)
    }
    
    var htmlToAttributedString: NSAttributedString? {
        guard let data = data(using: .utf8) else { return NSAttributedString() }
        do {
            return try NSAttributedString(data: data, options: [NSAttributedString.DocumentReadingOptionKey.documentType:  NSAttributedString.DocumentType.html], documentAttributes: nil)
        } catch {
            return NSAttributedString()
        }
    }
    var htmlToString: String {
        return htmlToAttributedString?.string ?? ""
    }
    
    func getStringFromDate(inputFormat:String,outputFormat:String) -> String {
        let formatter           = DateFormatter()
        formatter.dateFormat    = inputFormat
        guard let inputtime           = formatter.date(from: self) else { return "" }
        formatter.dateFormat    = outputFormat
        let outputTime          = formatter.string(from: inputtime)
        return outputTime
    }
}

extension UINavigationController {
    func popToViewController(ofClass: AnyClass, animated: Bool = true) {
        if let vc = viewControllers.last(where: { $0.isKind(of: ofClass) }) {
            popToViewController(vc, animated: animated)
        }
    }
}

extension UITableView {
    func animateTable() {
        reloadData()
        let cells = visibleCells
        let tableHeight = bounds.size.height
        for i in cells {
            let cell = i as UITableViewCell
            cell.transform = CGAffineTransform(translationX: 0, y: tableHeight)
        }
        var index = 0
        for a in cells {
            let cell: UITableViewCell = a as UITableViewCell
            UIView.animate(withDuration: 1.5, delay: 0.05 * Double(index), usingSpringWithDamping: 0.8, initialSpringVelocity: 0, animations: {
                cell.transform = CGAffineTransform(translationX: 0, y: 0);
            }, completion: nil)
            
            index += 1
        }
    }
}

extension NSObject {
    class var className: String {
        return String(describing: self)
    }
}
