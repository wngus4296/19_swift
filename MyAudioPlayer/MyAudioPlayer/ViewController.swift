//
//  ViewController.swift
//  MyAudioPlayer
//
//  Created by dm01 on 18/07/2019.
//  Copyright © 2019 dm01. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var player: AVAudioPlayer!
    var timer: Timer?
    
    @IBOutlet var playPauseButton: UIButton!
    @IBOutlet var slider: UISlider!
    
    @IBAction func touchUpPlayPauseButton(_ sender: UIButton) {
        sender.isSelected.toggle()
        
        print("버튼이 눌렸습니다.")
        // 만약에 sender의 isSelected가 true면
        // makeAndFireTimer() 함수를 호출하고,
        // player 객체의 play() 함수를 호출합니다.
        
        // 만약에 sender의 isSelected가 false면,
        // invalidateTimer() 함수를 호출하고,
        // player 객체의 pause() 함수를 호출합니다.
        
        if sender.isSelected == true {
            makeAndFireTimer()
            player.play()
        } else if sender.isSelected == false {
            invalidateTimer()
            player.pause()
        }
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print("슬라이더가 움직이고 있습니다.")
        let timeToChange: TimeInterval = TimeInterval(sender.value)
        self.player.currentTime = timeToChange
    }
    
    func makeAndFireTimer() {
        self.timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: {(timer: Timer) in
            
            if self.slider.isTracking {return}
            self.slider.value = Float(self.player.currentTime)
            
        })
        
        self.timer?.fire()
    }
    
    func invalidateTimer() {
        self.timer?.invalidate()
        self.timer = nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        guard let asset: NSDataAsset = NSDataAsset(name: "sound")
            else {
                print("sound 로드 실패")
                return
        }
        
        do {
            self.player = try AVAudioPlayer(data: asset.data)
            self.player.delegate = self
            self.slider.value = 0
            self.slider.minimumValue = 0
            self.slider.maximumValue = Float(self.player.duration)
        } catch {
            print("player 초기화 실패: \(error.localizedDescription)")
        }
    }
    
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        self.playPauseButton.isSelected = false
        self.invalidateTimer()
        self.player.currentTime = 0
        self.slider.value = 0
    }
}

