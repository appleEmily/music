//
//  ViewController.swift
//  music
//
//  Created by 野崎絵未里 on 2019/04/11.
//  Copyright © 2019年 野崎絵未里. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var play:Bool = true
    
    func setAudioPlayer(soundName: String, type: String) {
        let soundFilePath = Bundle.main.path(forResource: soundName, ofType: type)!
        let fileURL = URL(fileURLWithPath: soundFilePath)
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: fileURL)
        } catch {
            print("音楽ファイルが読み込めませんでした")
        }
    }
    
    @IBAction func summer() {
        play = false
        if play == false {
        setAudioPlayer(soundName: "humpBack", type: "mp3")
        audioPlayer.play()
        } else {
        }
    }
    @IBAction func rain() {
        setAudioPlayer(soundName: "wanima", type: "mp3")
        audioPlayer.play()
    }
    
    @IBAction func autum() {
        setAudioPlayer(soundName: "shishamo", type: "mp3")
        audioPlayer.play()
    }
    
    @IBAction func pause(_ sender: Any) {
        audioPlayer.pause()
        
    }
    
    
    
    var audioPlayer: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    

    


}

