//
//  ButtonStateViewController.swift
//  ButtonSelf
//
//  Created by David Hultgren on 2016-03-17.
//  Copyright © 2016 ThePainSquad. All rights reserved.
//

import UIKit

class ButtonStateViewController: UIViewController {

    @IBOutlet weak var rushLabel: UILabel!
    @IBOutlet weak var painLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if NSUserDefaults.standardUserDefaults().boolForKey("Rush") == true {
            rushLabel.text = "There is rash!"
        } else {
            rushLabel.text = ""
        }
        
        if NSUserDefaults.standardUserDefaults().boolForKey("Pain") == true {
            painLabel.text = "There is pain!"
        } else {
            painLabel.text = ""
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
