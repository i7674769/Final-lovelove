

import Foundation
import UIKit

class VideoExampleController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    var projectTitleVar =  String()
    var clientNameVar = String()
    var videoTypeVar = String()
    var videoNumberVar = String()
    var videoRunTimeVar = String()
    var deadlineVar = String()
    var descriptionVar = String()
    var partVar = String()
    var videoExampleVar = String()
    

    @IBOutlet weak var VideoPicker: UIPickerView!
    
    var videoEx = 0
    
    var examplePicker: [String] = [String]()
    
    var videoExample = ["Motion Graphics", "2D", "3D", "Live Action"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      self.VideoPicker.delegate = self
        self.VideoPicker.dataSource = self
        
        
    }
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return videoExample.count
    }
    
    func pickerView(pickerView: UIPickerView,titleForRow row: Int, forComponent component: Int) -> String? {
        return videoExample [row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        videoEx = row
        videoExampleVar = videoExample[row]
        print(videoExample[row])
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let projectTitle : LocationController = segue.destinationViewController as! LocationController
        projectTitle.projectTitleVar = projectTitleVar
        
        let clientName : LocationController = segue.destinationViewController as! LocationController
        clientName.clientNameVar = clientNameVar
        
        let videoType : LocationController = segue.destinationViewController as! LocationController
        videoType.videoTypeVar = videoTypeVar
        
        let videoNumber : LocationController = segue.destinationViewController as! LocationController
        videoNumber.videoNumberVar = videoNumberVar
        
        let videoRunTime : LocationController = segue.destinationViewController as! LocationController
        videoRunTime.videoRunTimeVar = videoRunTimeVar
        
        let deadline : LocationController = segue.destinationViewController as! LocationController
        deadline.deadlineVar = deadlineVar
        
        let description : LocationController = segue.destinationViewController as! LocationController
        description.descriptionVar = descriptionVar
        
        let partProduction : LocationController = segue.destinationViewController as! LocationController
        partProduction.partVar = partVar
        
        
    }
    
}