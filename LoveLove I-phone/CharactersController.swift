import UIKit

class CharactersController: UIViewController, UITextFieldDelegate{
    
    var projectTitleVar =  String()
    var clientNameVar = String()
    var videoTypeVar = String()
    var videoNumberVar = String()
    var videoRunTimeVar = String()
    var deadlineVar = String()
    var descriptionVar = String()
    var partVar = String()
    var videoExampleVar = String()
    var locationVar = String()
    var characterVar = String()
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var characterText: UITextField!
    
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
        
        let projectTitle : PlatformController = segue.destinationViewController as! PlatformController
        projectTitle.projectTitleVar = projectTitleVar
        
        let clientName : PlatformController = segue.destinationViewController as! PlatformController
        clientName.clientNameVar = clientNameVar
        
        let videoType : PlatformController = segue.destinationViewController as! PlatformController
        videoType.videoTypeVar = videoTypeVar
        
        let videoNumber : PlatformController = segue.destinationViewController as! PlatformController
        videoNumber.videoNumberVar = videoNumberVar
        
        let videoRunTime : PlatformController = segue.destinationViewController as! PlatformController
        videoRunTime.videoRunTimeVar = videoRunTimeVar
        
        let deadline : PlatformController = segue.destinationViewController as! PlatformController
        deadline.deadlineVar = deadlineVar
        
        let description : PlatformController = segue.destinationViewController as! PlatformController
        description.descriptionVar = descriptionVar
        
        let partProduction : PlatformController = segue.destinationViewController as! PlatformController
        partProduction.partVar = partVar
        
        let location : PlatformController = segue.destinationViewController as! PlatformController
        location.locationVar =  locationVar
        
        let character : PlatformController = segue.destinationViewController as! PlatformController
        character.characterVar =  characterText.text!
        
        
    }

}
