//
//  Sound.swift
//  readingApp
//
//  Created by Cristiano Santos-Pinto on 21/04/2015.
//  Copyright (c) 2015 Cristiano Santos-Pinto. All rights reserved.
//


/*
import AVFoundation

class SKTAudio {
    var backgroundMusicPlayer: AVAudioPlayer?
    var soundEffectPlayer: AVAudioPlayer?
    
    class func sharedInstance() -> SKTAudio {
        return SKTAudioInstance
    }
    
    func playBackgroundMusic(filename: String) {
        let url = NSBundle.mainBundle().URLForResource(filename, withExtension: nil)
        if (url == nil) {
            println("Could not find file: \(filename)")
            return
        }
        
        var error: NSError? = nil
        backgroundMusicPlayer = AVAudioPlayer(contentsOfURL: url, error: &error)
        if let player = backgroundMusicPlayer {
            player.numberOfLoops = 0
            player.prepareToPlay()
            player.play()
        } else {
            println("Could not create audio player: \(error!)")
        }
    }
    
    func pauseBackgroundMusic() {
        if let player = backgroundMusicPlayer {
            if player.playing {
                player.pause()
            }
        }
    }
    
    func resumeBackgroundMusic() {
        if let player = backgroundMusicPlayer {
            if !player.playing {
                player.play()
            }
        }
    }
    
    func playSoundEffect(filename: String) {
        let url = NSBundle.mainBundle().URLForResource(filename, withExtension: nil)
        if (url == nil) {
            println("Could not find file: \(filename)")
            return
        }
        
        var error: NSError? = nil
        soundEffectPlayer = AVAudioPlayer(contentsOfURL: url, error: &error)
        if let player = soundEffectPlayer {
            player.numberOfLoops = 0
            player.prepareToPlay()
            player.play()
        } else {
            println("Could not create audio player: \(error!)")
        }
    }
}

let SKTAudioInstance = SKTAudio()

*/


import AVFoundation

var backgroundMusicPlayer: AVAudioPlayer!

func playBackgroundMusic(filename: String) {
    let url = NSBundle.mainBundle().URLForResource(
        filename, withExtension: nil)
    if (url == nil) {
        println("Could not find file: \(filename)")
        return
    }
    
    var error: NSError? = nil
    backgroundMusicPlayer =
        AVAudioPlayer(contentsOfURL: url, error: &error)
    if backgroundMusicPlayer == nil {
        println("Could not create audio player: \(error!)")
        return
    }
    
    backgroundMusicPlayer.numberOfLoops = 0
    backgroundMusicPlayer.prepareToPlay()
    backgroundMusicPlayer.play()
}
