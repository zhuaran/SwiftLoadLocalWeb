//
//  Utils.swift
//  ChickFred
//
//  Created by macbook on 2018/4/28.
//  Copyright © 2018年 macbook. All rights reserved.
//

import Foundation
import UIKit
func forceOrientation(orientation:UIInterfaceOrientation) -> Void {
//    if UIDevice.current.responds(to: Selector.init("orientation:")){
//        let selector = #selector(orientation(_:))
//        
//    }
}

func isOrientationLandscape() -> Bool {
    if UIInterfaceOrientationIsLandscape(UIApplication.shared.statusBarOrientation) {
        return true
    }else{
        return false
    }
}
