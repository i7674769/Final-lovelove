import UIKit

class DeadlineController: UIViewController{
    
    var projectTitleVar =  String()
    var clientNameVar = String()
    var videoTypeVar = String()
    var videoNumberVar = String()
    var videoRunTimeVar = String()
    var deadlineVar = String()
    let dateFormatter = NSDateFormatter()
    
    @IBOutlet weak var deadlinePicker: UIDatePicker!
    
    func setDate() {
        
        dateFormatter.dateStyle = NSDateFormatterStyle.ShortStyle
        
        deadlineVar = dateFormatter.stringFromDate(deadlinePicker.date)
        
    }
    
    @IBAction func deadlinePickerAction(sender: AnyObject) {
        
        setDate()
        
        print(deadlineVar)

    }

    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let projectTitle : DescriptionController = segue.destinationViewController as! DescriptionController
        projectTitle.projectTitleVar = projectTitleVar
        
        let clientName : DescriptionController = segue.destinationViewController as! DescriptionController
        clientName.clientNameVar = clientNameVar
        
        let videoType : DescriptionController = segue.destinationViewController as! DescriptionController
        videoType.videoTypeVar = videoTypeVar
        
        let videoNumber : DescriptionController = segue.destinationViewController as! DescriptionController
        videoNumber.videoNumberVar = videoNumberVar
        
        let videoRunTime : DescriptionController = segue.destinationViewController as! DescriptionController
        videoRunTime.videoRunTimeVar = videoRunTimeVar
        
        let deadline : DescriptionController = segue.destinationViewController as! DescriptionController
        deadline.deadlineVar = deadlineVar
        
        
    }

}

