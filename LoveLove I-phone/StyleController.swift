
import Foundation
import UIKit

class StyleController: UIViewController{
    
    var projectTitleVar =  String()
    var clientNameVar = String()
    var videoTypeVar = String()
    var videoNumberVar = String()
    var videoRunTimeVar = String()
    var deadlineVar = String()
    var descriptionVar = String()
    var partVar = String()
    
    @IBOutlet weak var voiceoverSwitch: UISwitch!
    @IBOutlet weak var musicSwitch: UISwitch!
    @IBOutlet weak var liveSoundSwitch: UISwitch!
    
    
    
    
    
    
    @IBAction func voiceoverSwitchPressed(sender: AnyObject) {
        if voiceoverSwitch.on{
            partVar = "Voice Over"
        }
    }
    
    @IBAction func musicSwitchPressed(sender: AnyObject) {
        if musicSwitch.on{
            partVar = "Music"
        }
    }
    
    @IBAction func liveSoundSwitchPressed(sender: AnyObject) {
        if liveSoundSwitch.on{
            partVar = "Live Sound"
        }
    }
    
    
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let projectTitle : VideoExampleController = segue.destinationViewController as! VideoExampleController
        projectTitle.projectTitleVar = projectTitleVar
        
        let clientName : VideoExampleController = segue.destinationViewController as! VideoExampleController
        clientName.clientNameVar = clientNameVar
        
        let videoType : VideoExampleController = segue.destinationViewController as! VideoExampleController
        videoType.videoTypeVar = videoTypeVar
        
        let videoNumber : VideoExampleController = segue.destinationViewController as! VideoExampleController
        videoNumber.videoNumberVar = videoNumberVar
        
        let videoRunTime : VideoExampleController = segue.destinationViewController as! VideoExampleController
        videoRunTime.videoRunTimeVar = videoRunTimeVar
        
        let deadline : VideoExampleController = segue.destinationViewController as! VideoExampleController
        deadline.deadlineVar = deadlineVar
        
        let description : VideoExampleController = segue.destinationViewController as! VideoExampleController
        description.descriptionVar = descriptionVar
        
        let partProduction : VideoExampleController = segue.destinationViewController as! VideoExampleController
        partProduction.partVar = partVar
        
        
    }
    
}
  