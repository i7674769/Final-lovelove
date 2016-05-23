
import Foundation

import UIKit

class DescriptionController: UIViewController, UITextFieldDelegate{
    
    var projectTitleVar =  String()
    var clientNameVar = String()
    var videoTypeVar = String()
    var videoNumberVar = String()
    var videoRunTimeVar = String()
    var deadlineVar = String()
    var descriptionVar = String()
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var descriptionText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillShow:"), name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillHide:"), name: UIKeyboardWillHideNotification, object: nil)
        
        descriptionText.text = "Type Here..."
        descriptionText.textColor = UIColor.lightGrayColor()
        
    }
    

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
        
    }


    
    func keyboardWillShow(notification:NSNotification){
        
        var userInfo = notification.userInfo!
        var keyboardFrame:CGRect = (userInfo[UIKeyboardFrameBeginUserInfoKey] as! NSValue).CGRectValue()
        keyboardFrame = self.view.convertRect(keyboardFrame, fromView: nil)
        
        var contentInset:UIEdgeInsets = self.scrollView.contentInset
        contentInset.bottom = keyboardFrame.size.height/2
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
        
        let projectTitle : StyleController = segue.destinationViewController as! StyleController
        projectTitle.projectTitleVar = projectTitleVar
        
        let clientName : StyleController = segue.destinationViewController as! StyleController
        clientName.clientNameVar = clientNameVar
        
        let videoType : StyleController = segue.destinationViewController as! StyleController
        videoType.videoTypeVar = videoTypeVar
        
        let videoNumber : StyleController = segue.destinationViewController as! StyleController
        videoNumber.videoNumberVar = videoNumberVar
        
        let videoRunTime : StyleController = segue.destinationViewController as! StyleController
        videoRunTime.videoRunTimeVar = videoRunTimeVar
        
        let deadline : StyleController = segue.destinationViewController as! StyleController
        deadline.deadlineVar = deadlineVar
        
        let description : StyleController = segue.destinationViewController as! StyleController
        description.descriptionVar = descriptionText.text!
        
        
    }
    
}