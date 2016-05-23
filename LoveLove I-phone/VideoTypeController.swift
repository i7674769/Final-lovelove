import Foundation
import UIKit

class VideoTypeController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    var projectTitleVar =  String()
    var clientNameVar = String()
    var videoTypeVar = String()
  
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    var videoType = 0
    
    var pickerData: [String] = [String]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.pickerView.delegate! = self
        self.pickerView.dataSource = self
        
        pickerData = ["Promotional/Intro", "Product/Explainer", "Testimonial Video", "Viral"]
    }
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(pickerView: UIPickerView,titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData [row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        videoType = row
        videoTypeVar = pickerData[row]

        print(videoTypeVar)
    }


    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "NumberController" {
        
        let projectTitle : NumberVideoController = segue.destinationViewController as! NumberVideoController
        projectTitle.projectTitleVar = projectTitleVar
        
        let clientName : NumberVideoController = segue.destinationViewController as! NumberVideoController
        clientName.clientNameVar = clientNameVar
        
        let videoType : NumberVideoController = segue.destinationViewController as! NumberVideoController
        videoType.videoTypeVar = videoTypeVar
        } 
        
    }
}
