//
//  ViewController.swift
//  meme maker
//
//  Created by 5e on 11/13/23.
//

import UIKit

class ViewController: UIViewController {

    var topArray: [CaptionOption] = [CaptionOption(emoji: "😎", caption: "You know what's not cool?"), CaptionOption(emoji: "💥", caption: "You know what makes me mad?"), CaptionOption(emoji: "❤️", caption: "You know what I love?")]
    
    var bottomArray: [CaptionOption] = [CaptionOption(emoji: "😻", caption:"Mrs.Antigua not letting us have a party"), CaptionOption(emoji: "🐶", caption: "Dogs carrying logs"), CaptionOption(emoji: "🐇", caption: "Bunnies being jumpy")]
    
    @IBOutlet weak var topSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var topLabel: UILabel!
    
    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var bottomSegmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        topSegmentedControl.removeAllSegments()
        bottomSegmentedControl.removeAllSegments()

     
        for choice in topArray{
            topSegmentedControl.insertSegment(withTitle: choice.emoji, at: topArray.count, animated: false)
            
        }
        
        for choice in bottomArray{
            bottomSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomArray.count, animated: false)
        }
        
        topSegmentedControl.selectedSegmentIndex = 0
        bottomSegmentedControl.selectedSegmentIndex = 0
    }

    
    @IBAction func changeOption(_ sender: UISegmentedControl) {
        
        topLabel.text = topArray[topSegmentedControl.selectedSegmentIndex].caption
        
        bottomLabel.text = bottomArray[bottomSegmentedControl.selectedSegmentIndex].caption
        
       // imageView.image = image[bottomSegmentedControl.selectedSegmentIndex]
        
    }
    

    @IBAction func dragTopLabel(_ sender: UIPanGestureRecognizer) {
        
        if sender.state == .changed{
            topLabel.center = sender.location(in: view)
        }
    }
    
    @IBAction func dragBottomLabel(_ sender: UIPanGestureRecognizer) {
        if sender.state == .changed
        {
            bottomLabel.center = sender.location(in: view)
        }
    }
    
    
    
}

