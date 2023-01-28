//
//  button.swift
//  Xylophone-iOS13 Xylophone-iOS13
//
//  Created by Sonata Girl on 26.01.2023.
//
import UIKit
import AVFoundation

class Button: UIButton {
    
    var buttonName: String = ""
    var buttonColor: UIColor = .gray
    var player : AVAudioPlayer?
    
    init(buttonName: String, buttonColor: UIColor) {
        super.init(frame: .zero)
        self.buttonName = buttonName
        self.buttonColor = buttonColor
        
        setupButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupButton() {
        translatesAutoresizingMaskIntoConstraints = false
        setTitleColor(.white, for: .normal)
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 40)
        setTitle(buttonName, for: .normal)
        
        backgroundColor = buttonColor
    }
    
    func playSound(nameSound: String) {
        guard let url = Bundle.main.url(forResource: nameSound, withExtension: "wav") else {return}

        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
            guard let player = player else {return}
            player.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }

}
