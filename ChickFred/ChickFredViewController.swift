//
//  ChickFredViewController.swift
//  ChickFred
//
//  Created by macbook on 2018/5/3.
//  Copyright © 2018年 macbook. All rights reserved.
//

import UIKit

class ChickFredViewController: UIViewController,UIWebViewDelegate,UIAlertViewDelegate {
    let StatusB = 24.0
    let BottomB = 34.0
    
    
    let IOS11 = NSString.init(string: UIDevice.current.systemVersion).floatValue>=11.0
    let ISiPhoneX = max(UIScreen.main.bounds.size.width,UIScreen.main.bounds.height) == 812.0 ? true:false
    @IBOutlet weak var bottomBarConstr: NSLayoutConstraint!
    @IBOutlet weak var activityIndicatorView: UIActivityIndicatorView!
    @IBOutlet weak var bottomBarView: UIView!
    @IBOutlet weak var noNetView: UIView!
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var topConstr: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func JumpToFun(_ sender: UIButton) {
        
    }
    @IBAction func againBTAction(_ sender: UIButton) {
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
