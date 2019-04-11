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
        setAudioPlayer(soundName: "natsu", type: "mp3")
        audioPlayer.play()
    }
    @IBAction func rain() {
        setAudioPlayer(soundName: "ame", type: "mp3")
        audioPlayer.play()
    }
    
    @IBAction func autum() {
        setAudioPlayer(soundName: "aki", type: "mp3")
        audioPlayer.play()
    }
    
    
    var audioPlayer: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    
    
    


}

