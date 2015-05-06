//
//  Monkey1.swift
//  readingApp
//
//  Created by Cristiano Santos-Pinto on 16/04/2015.
//  Copyright (c) 2015 Cristiano Santos-Pinto. All rights reserved.
//


import SpriteKit

class Monkey1: SKScene {
    
    var currentTime = 0.0
    var startTime = 0.0
    var elapsedTime = 0.0
    
    override func didMoveToView(view: SKView) {
        
        playBackgroundMusic("mattIntro.wav")
        
        let background = SKSpriteNode(imageNamed: "1Monkey")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(background)
        
        
        let swipeRight:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedRight:"))
        swipeRight.direction = .Right
        view.addGestureRecognizer(swipeRight)
        
        let swipeLeft:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedLeft:"))
        swipeLeft.direction = .Left
        view.addGestureRecognizer(swipeLeft)
        
        
    }
    
    func swipedRight(sender:UISwipeGestureRecognizer){
        println("swiped right")
    }
    
    func swipedLeft(sender:UISwipeGestureRecognizer){
        println("swiped left")
    }
    
    func sceneFade() {
        let scene = Monkey2(size:self.size)
        scene.scaleMode = scaleMode
        let reveal = SKTransition.fadeWithDuration(3.0)
        backgroundMusicPlayer.stop()
        self.view?.presentScene(scene, transition: reveal)
        
        startTime = currentTime
    }
    
    //override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
    
    
    
    override func update(currentTime: CFTimeInterval) {
        self.currentTime = currentTime
        elapsedTime = currentTime - startTime
        
        
        if elapsedTime >= 3.0 {
            let pause = dispatch_time(DISPATCH_TIME_NOW, Int64(NSEC_PER_SEC * 2))   //delay before fading
            dispatch_after(pause, dispatch_get_main_queue()){
                
                self.sceneFade()
            }
            
        }
        
        
    }
    
    
}

    

    

    
    
 