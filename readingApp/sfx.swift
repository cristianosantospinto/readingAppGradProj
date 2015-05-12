//
//  sfx.swift
//  readingApp
//
//  Created by Cristiano Santos-Pinto on 01/05/2015.
//  Copyright (c) 2015 Cristiano Santos-Pinto. All rights reserved.
//

import AVFoundation

var sfx: AVAudioPlayer!

func sfx(filename: String) {
    let url = NSBundle.mainBundle().URLForResource(
        filename, withExtension: nil)
    if (url == nil) {
        println("Could not find file: \(filename)")
        return
    }
    
    var error: NSError? = nil
    sfx =
        AVAudioPlayer(contentsOfURL: url, error: &error)
    if sfx == nil {
        println("Could not create audio player: \(error!)")
        return
    }
    
    sfx.numberOfLoops = 0
    sfx.prepareToPlay()
    sfx.play()
}