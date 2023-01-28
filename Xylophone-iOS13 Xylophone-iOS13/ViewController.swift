//
//  ViewController.swift
//  Xylophone-iOS13 Xylophone-iOS13
//
//  Created by Sonata Girl on 24.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.backgroundColor = .clear
        stackView.spacing = 5
        return stackView
    }()
    
    private var buttonsArray = [UIButton]()
    
    private var buttonViewC: UIView = ButtonView()
    private var buttonViewD: UIView = ButtonView()
    private var buttonViewE: UIView = ButtonView()
    private var buttonViewF: UIView = ButtonView()
    private var buttonViewG: UIView = ButtonView()
    private var buttonViewA: UIView = ButtonView()
    private var buttonViewB: UIView = ButtonView()
   
    private var buttonC: UIButton = Button(buttonName: "C", buttonColor: .systemRed)
    private var buttonD: UIButton = Button(buttonName: "D", buttonColor: .systemOrange)
    private var buttonE: UIButton = Button(buttonName: "E", buttonColor: .systemYellow)
    private var buttonF: UIButton = Button(buttonName: "F", buttonColor: .systemGreen)
    private var buttonG: UIButton = Button(buttonName: "G", buttonColor: .blue)
    private var buttonA: UIButton = Button(buttonName: "A", buttonColor: .systemBlue)
    private var buttonB: UIButton = Button(buttonName: "B", buttonColor: .purple)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        setupUI()
    }

    private func setupUI() {
        
        buttonsArray.append(buttonC)
        buttonsArray.append(buttonD)
        buttonsArray.append(buttonE)
        buttonsArray.append(buttonF)
        buttonsArray.append(buttonG)
        buttonsArray.append(buttonA)
        buttonsArray.append(buttonB)
        
        for button in buttonsArray {
            button.addTarget(self, action: #selector(actionButton), for: .touchUpInside)
        }
        
        view.addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
        stackView.addArrangedSubview(buttonViewC)
        stackView.addArrangedSubview(buttonViewD)
        stackView.addArrangedSubview(buttonViewE)
        stackView.addArrangedSubview(buttonViewF)
        stackView.addArrangedSubview(buttonViewG)
        stackView.addArrangedSubview(buttonViewA)
        stackView.addArrangedSubview(buttonViewB)
        
        var sideConstraint: CGFloat = 5
        
        buttonViewC.addSubview(buttonC)
        NSLayoutConstraint.activate([
            buttonC.topAnchor.constraint(equalTo: buttonViewC.topAnchor),
            buttonC.leadingAnchor.constraint(equalTo: buttonViewC.leadingAnchor, constant: sideConstraint),
            buttonViewC.trailingAnchor.constraint(equalTo: buttonC.trailingAnchor, constant: sideConstraint),
            buttonViewC.bottomAnchor.constraint(equalTo: buttonC.bottomAnchor)
        ])

        sideConstraint += 10
        buttonViewD.addSubview(buttonD)
        NSLayoutConstraint.activate([
            buttonD.topAnchor.constraint(equalTo: buttonViewD.topAnchor),
            buttonD.leadingAnchor.constraint(equalTo: buttonViewD.leadingAnchor, constant: sideConstraint),
            buttonViewD.trailingAnchor.constraint(equalTo: buttonD.trailingAnchor, constant: sideConstraint),
            buttonViewD.bottomAnchor.constraint(equalTo: buttonD.bottomAnchor)
        ])
        
        sideConstraint += 10
        buttonViewE.addSubview(buttonE)
        NSLayoutConstraint.activate([
            buttonE.topAnchor.constraint(equalTo: buttonViewE.topAnchor),
            buttonE.leadingAnchor.constraint(equalTo: buttonViewE.leadingAnchor, constant: sideConstraint),
            buttonViewE.trailingAnchor.constraint(equalTo: buttonE.trailingAnchor, constant: sideConstraint),
            buttonViewE.bottomAnchor.constraint(equalTo: buttonE.bottomAnchor)
        ])
        
        sideConstraint += 10
        buttonViewF.addSubview(buttonF)
        NSLayoutConstraint.activate([
            buttonF.topAnchor.constraint(equalTo: buttonViewF.topAnchor),
            buttonF.leadingAnchor.constraint(equalTo: buttonViewF.leadingAnchor, constant: sideConstraint),
            buttonViewF.trailingAnchor.constraint(equalTo: buttonF.trailingAnchor, constant: sideConstraint),
            buttonViewF.bottomAnchor.constraint(equalTo: buttonF.bottomAnchor)
        ])
        
        sideConstraint += 10
        buttonViewG.addSubview(buttonG)
        NSLayoutConstraint.activate([
            buttonG.topAnchor.constraint(equalTo: buttonViewG.topAnchor),
            buttonG.leadingAnchor.constraint(equalTo: buttonViewG.leadingAnchor, constant: sideConstraint),
            buttonViewG.trailingAnchor.constraint(equalTo: buttonG.trailingAnchor, constant: sideConstraint),
            buttonViewG.bottomAnchor.constraint(equalTo: buttonG.bottomAnchor)
        ])
        
        sideConstraint += 10
        buttonViewA.addSubview(buttonA)
        NSLayoutConstraint.activate([
            buttonA.topAnchor.constraint(equalTo: buttonViewA.topAnchor),
            buttonA.leadingAnchor.constraint(equalTo: buttonViewA.leadingAnchor, constant: sideConstraint),
            buttonViewA.trailingAnchor.constraint(equalTo: buttonA.trailingAnchor, constant: sideConstraint),
            buttonViewA.bottomAnchor.constraint(equalTo: buttonA.bottomAnchor)
        ])
        
        sideConstraint += 10
        buttonViewB.addSubview(buttonB)
        NSLayoutConstraint.activate([
            buttonB.topAnchor.constraint(equalTo: buttonViewB.topAnchor),
            buttonB.leadingAnchor.constraint(equalTo: buttonViewB.leadingAnchor, constant: sideConstraint),
            buttonViewB.trailingAnchor.constraint(equalTo: buttonB.trailingAnchor, constant: sideConstraint),
            buttonViewB.bottomAnchor.constraint(equalTo: buttonB.bottomAnchor)
        ])

    }
   
    @objc private func actionButton(sender: Button) {
        sender.playSound(nameSound: sender.buttonName)
    }
    
}



