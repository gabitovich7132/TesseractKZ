//
//  TestViewController.swift
//  TesseractKZ
//
//  Created by Zhenis Mutan on 3/31/20.
//  Copyright © 2020 Zhenis Mutan. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureView()
        configureNavigation()
    }
    
    private func configureView() {
        view.backgroundColor = UIColor.white
    }
    
    private func configureNavigation() {
        navigationItem.title = "Tesseract Test Data"
    }
    
}
