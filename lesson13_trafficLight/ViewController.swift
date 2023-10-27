//
//  ViewController.swift
//  lesson13_trafficLight
//
//  Created by Le Thanh Son on 27/10/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lightView: UIView!
    @IBOutlet weak var controlPanel: UIView!
    @IBOutlet weak var redLight: lightCustomView!
    @IBOutlet weak var yellowLight: lightCustomView!
    @IBOutlet weak var greenLight: lightCustomView!
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var yellowButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    
    @IBOutlet weak var timeLabel: UILabel!
    var timer: Timer?
    var timeLeft = 30
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupRedButton()
        setupYellowButton()
        setupGreenButton()
        startTimer()
    }
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerFired), userInfo: nil, repeats: true)
        
    }
    @objc func timerFired() {
        timeLeft -= 1
        timeLabel.text = String(timeLeft)
        if timeLeft == 20 {
            yellowIsOn()
        }
        if timeLeft == 10 {
            greenIsOn()
        }
        if timeLeft == 00 {
            stopTimer()
        }
    }
    func stopTimer() {
        timer?.invalidate()
        timer = nil
    }
    
    func setupRedButton() {
        redButton.layer.cornerRadius = 10
    }
    func setupYellowButton() {
        redButton.layer.cornerRadius = 10
    }
    func setupGreenButton() {
        redButton.layer.cornerRadius = 10
    }
    func greenIsOn() {
        greenLight.lightCView.backgroundColor = .systemGreen
        redLight.lightCView.backgroundColor = .gray
        yellowLight.lightCView.backgroundColor = .gray
        
    }
    func yellowIsOn() {
        yellowLight.lightCView.backgroundColor = .systemYellow
        redLight.lightCView.backgroundColor = .gray
        greenLight.lightCView.backgroundColor = .gray
        
    }
    func redIsOn() {
        redLight.lightCView.backgroundColor = .systemRed
        yellowLight.lightCView.backgroundColor = .gray
        greenLight.lightCView.backgroundColor = .gray
        
    }
    @IBAction func onPressRed(_ sender: Any) {
        redIsOn()
    }
    
    @IBAction func onPressYellow(_ sender: Any) {
        yellowIsOn()
    }
    
    @IBAction func onPressGreen(_ sender: Any) {
        greenIsOn()
    }
}

