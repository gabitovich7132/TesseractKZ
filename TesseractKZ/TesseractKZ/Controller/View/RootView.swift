//
//  RootView.swift
//  TesseractKZ
//
//  Created by Zhenis Mutan on 3/31/20.
//  Copyright © 2020 Zhenis Mutan. All rights reserved.
//

import UIKit
import SnapKit
import TesseractOCR

class RootView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureView() {
        backgroundColor = UIColor.white
    }
    
    private func setupViews() {
        addSubview(translateButton)
        translateButton.snp.makeConstraints { (make) in
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(16)
            make.left.equalTo(16)
            make.right.equalTo(-16)
            make.height.equalTo(58)
        }
        
        addSubview(textView)
        textView.snp.makeConstraints { (make) in
            make.top.equalTo(translateButton.snp.bottom).offset(20)
            make.left.right.equalTo(translateButton)
            make.bottom.equalTo(safeAreaLayoutGuide.snp.bottom).offset(-20)
        }
    }
    
    private lazy var translateButton: UIButton = {
        let translateButton = UIButton(frame: .zero)
        translateButton.translatesAutoresizingMaskIntoConstraints = false
        translateButton.setTitle("Convert Text", for: .normal)
        translateButton.setTitleColor(UIColor.white, for: .normal)
        translateButton.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        translateButton.clipsToBounds = true
        translateButton.layer.cornerRadius = 4
        translateButton.backgroundColor = UIColor(displayP3Red: 0/255, green: 207/255, blue: 145/255, alpha: 1.0)
        translateButton.addTarget(self, action: #selector(handleConverter(_:)), for: .touchUpInside)
        return translateButton
    }()
    
    private let textView: UITextView = {
        let textView = UITextView(frame: .zero)
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()

    private func recognizeImageWithTesseract(with image: UIImage) {
        guard let tesseract = G8Tesseract(language: "kaz") else {
            return
        }
        
        tesseract.delegate = self
        tesseract.image = image
        tesseract.maximumRecognitionTime = 10.0
        tesseract.recognize()
        
        textView.text = tesseract.recognizedText
    }
    
    @objc func handleConverter(_ sender: UIButton) {
        recognizeImageWithTesseract(with: UIImage(named: "image")!)
    }

    
    
}

extension RootView: G8TesseractDelegate {
    
}
