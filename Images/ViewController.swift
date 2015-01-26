//
//  ViewController.swift
//  Images
//
//  Created by K C on 1/25/15.
//  Copyright (c) 2015 K C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

