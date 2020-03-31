//
//  TestViewController.swift
//  TesseractKZ
//
//  Created by Zhenis Mutan on 3/31/20.
//  Copyright © 2020 Zhenis Mutan. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {
    
    private var rootView: RootView { return self.view as! RootView }
    
    override func loadView() {
        self.view = RootView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    
}
