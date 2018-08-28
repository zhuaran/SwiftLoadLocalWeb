//
//  MyWebQViewController.swift
//  ChickFred
//
//  Created by macbook on 2018/4/20.
//  Copyright © 2018年 macbook. All rights reserved.
//

import UIKit
class MyWebQViewController: UIViewController,UIWebViewDelegate {
let ISiPhoneX = max(UIScreen.main.bounds.size.width,UIScreen.main.bounds.height) == 812.0 ? true:false
    override func viewDidLoad() {
        super.viewDidLoad()
        let applegate = UIApplication.shared.delegate as! AppDelegate

        applegate.screenRotate = .ScreenHorizon
//        UIDevice.current.setValue(UIInterfaceOrientation.landscapeLeft.rawValue, forKey: "orientation")
        UIDevice.current.setValue(UIInterfaceOrientation.landscapeRight.rawValue, forKey: "orientation")
        
//        loadLocalWeb()
        if ISiPhoneX {
            loadLocalWeb()
            
        }else{
            loadMyData()
        }
        checkNetWork()
        // Do any additional setup after loading the view.
    }
    func checkNetWork(){
        let networkManager = NetworkReachabilityManager(host:"www.baidu.com")
        networkManager!.listener = {status in
            switch status {
            case .notReachable:
                print("")
            case .unknown:
                print("")
            case .reachable(.ethernetOrWiFi):
                print("")
            case .reachable(.wwan):
                print("")
                //            default:
                //                print("")
                //            }
            }
        }
        networkManager!.startListening()
    }
    func loadLocalWeb() {
        let web = UIWebView.init(frame: CGRect.init(x: 0, y: 0, width: KScreen_Width, height: KScreen_Height))
        web.delegate = self
        web.allowsInlineMediaPlayback = true
        web.scalesPageToFit = true
        let path = Bundle.main.path(forResource: "index", ofType: "html", inDirectory: "Blackj")
        web.loadRequest(URLRequest.init(url: URL.init(fileURLWithPath: path!)))
        self.view.addSubview(web)
        if #available(iOS 11.0, *){
            web.scrollView.contentInsetAdjustmentBehavior = .never
        }else{
            automaticallyAdjustsScrollViewInsets = false
        }
    }
    func loadMyData(){
        let web = UIWebView.init(frame: CGRect.init(x: 0, y: 0, width: KScreen_Width, height: KScreen_Height))
        web.delegate = self
        web.allowsInlineMediaPlayback = true
        web.loadRequest(URLRequest.init(url: URL.init(string: "https://m.baidu.com")!))
        self.view.addSubview(web)
        if #available(iOS 11.0, *){
            web.scrollView.contentInsetAdjustmentBehavior = .never
        }else{
            automaticallyAdjustsScrollViewInsets = false
        }
        
    }
    override var prefersStatusBarHidden: Bool{
        return true
    }
//    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation{
//        return .landscapeLeft
//    }
//    override var shouldAutorotate: Bool{
//        return true
//    }
//    override var supportedInterfaceOrientations: UIInterfaceOrientationMask{
//        return .all
//    }
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
