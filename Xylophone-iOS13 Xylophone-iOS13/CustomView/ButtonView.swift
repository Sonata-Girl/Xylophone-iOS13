//
//  ButtonView.swift
//  Xylophone-iOS13 Xylophone-iOS13
//
//  Created by Sonata Girl on 26.01.2023.
//
//
import UIKit

class ButtonView: UIView {
    
    init() {
        super.init(frame: .zero)
        setupButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupButton() {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .clear
    }
}
