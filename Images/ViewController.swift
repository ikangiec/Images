//
//  ViewController.swift
//  Images
//
//  Created by K C on 1/25/15.
//  Copyright (c) 2015 K C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()

    @IBOutlet weak var alien: UIImageView!
    
    var counter = 1
    
    @IBAction func buttonPressed(sender: AnyObject) {
//      let frame2 = UIImage(named: "a27-2.png")
        counter++
        if (counter == 6) {
            counter = 1
        }
        alien.image = UIImage(named: "a27-\(counter).png")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
    }
    
    func result() {
        counter++
        if (counter == 6) {
            counter = 1
        }
        alien.image = UIImage(named: "a27-\(counter).png")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
//      alien.center = CGPointMake(alien.center.x - 400, alien.center.y)
//      alien.alpha = 0
        alien.frame = CGRectMake(80, 50, 0, 0)
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1, animations: {
//          self.alien.center = CGPointMake(self.alien.center.x + 400, self.alien.center.y)
//          self.alien.alpha = 1
            self.alien.frame = CGRectMake(80, 50, 232, 232)
        })
    }

}

