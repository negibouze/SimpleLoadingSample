//
//  ViewController.swift
//  SimpleLoadingSample
//
//  Created by Yoshiaki Itakura on 2015/12/22.
//  Copyright © 2015年 personal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func touchUpShow(sender: UIButton) {
        LoadingView.show()
        let delay = 1.5 * Double(NSEC_PER_SEC)
        let time  = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
        dispatch_after(time, dispatch_get_main_queue(), {
            LoadingView.hide()
        })
    }
}

