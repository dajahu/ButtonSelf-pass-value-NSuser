//
//  ViewController.swift
//  ButtonSelf
//
//  Created by David Hultgren on 2016-03-15.
//  Copyright © 2016 ThePainSquad. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var btn1:UIButtonTouched?
    @IBOutlet weak var btn2:UIButtonTouched?
    
   
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btn1?.enabledState = true
        btn2?.enabledState = false
        // Do any additional setup after loading the view, typically from a nib.
        //make multi touch avalible
       
        // Double tap
//        let doubleTapRecognizer = UITapGestureRecognizer(target: self, action: "onClick:")
//        doubleTapRecognizer.numberOfTapsRequired = 1
//        doubleTapRecognizer.numberOfTouchesRequired = 1
//        btn1?.addGestureRecognizer(doubleTapRecognizer)
//        btn2?.addGestureRecognizer(doubleTapRecognizer)

        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        saveButtonStates()
    }
    
    private func saveButtonStates() {
        if btn1 != nil {
            NSUserDefaults.standardUserDefaults().setBool(btn1!.enabledState, forKey: "Rush")
        }
        if btn2 != nil {
            NSUserDefaults.standardUserDefaults().setBool(btn2!.enabledState, forKey: "Pain")
        }
    }
    
    // seque - prepera for segue
    //nsuser default its    safe value for boolean
    
    
//    func onClick(recognizer: UITapGestureRecognizer) {
//        print("HEJ")
//        btn1!.onTap(recognizer)
//        btn2?.onTap(recognizer)
//        
//    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
 
    
    
    

}

