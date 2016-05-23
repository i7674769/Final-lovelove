import Foundation
import UIKit

class NumberVideoController: UIViewController{
    var projectTitleVar =  String()
    var clientNameVar = String()
    var videoTypeVar = String()
    var videoNumberVar = String()
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var videoNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillShow:"), name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillHide:"), name: UIKeyboardWillHideNotification, object: nil)
        
    }
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        self.view.endEditing(true)
        
        return true
        
    }
    
    func keyboardWillShow(notification:NSNotification){
        
        var userInfo = notification.userInfo!
        var keyboardFrame:CGRect = (userInfo[UIKeyboardFrameBeginUserInfoKey] as! NSValue).CGRectValue()
        keyboardFrame = self.view.convertRect(keyboardFrame, fromView: nil)
        
        var contentInset:UIEdgeInsets = self.scrollView.contentInset
        contentInset.bottom = keyboardFrame.size.height/4
        self.scrollView.contentInset = contentInset
    }
    
    func keyboardWillHide(notification:NSNotification){
        
        let contentInset:UIEdgeInsets = UIEdgeInsetsZero
        self.scrollView.contentInset = contentInset
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let projectTitle : RunningTimeController = segue.destinationViewController as! RunningTimeController
        projectTitle.projectTitleVar = projectTitleVar
        
        let clientName : RunningTimeController = segue.destinationViewController as! RunningTimeController
        clientName.clientNameVar = clientNameVar
        
        let videoType : RunningTimeController = segue.destinationViewController as! RunningTimeController
        videoType.videoTypeVar = videoTypeVar
        
        let videoNumber : RunningTimeController = segue.destinationViewController as! RunningTimeController
        videoNumber.videoNumberVar = videoNumberVar
        
        
    }

}