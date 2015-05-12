//
//  MainMenu.swift
//  readingApp
//
//  Created by Cristiano Santos-Pinto on 07/03/2015.
//  Copyright (c) 2015 Cristiano Santos-Pinto. All rights reserved.
//

import SpriteKit

class SplashScreen: SKScene {
    
    var currentTime = 0.0
    var startTime = 0.0
    var elapsedTime = 0.0
    
    override func didMoveToView(view: SKView) {
        
     // SKTAudio.sharedInstance().
        playBackgroundMusic("1DV.mp3")
        
        let background = SKSpriteNode(imageNamed: "1SplashScreen")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(background)

        let animatingSS = SKSpriteNode(imageNamed: "SSanimating")
        animatingSS.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(animatingSS)
    
        animatingSS.setScale(0)
        let popAction = SKAction.scaleTo(1, duration: 3, delay: 2.5, usingSpringWithDamping: 0.5, initialSpringVelocity: 0)
        animatingSS.runAction(popAction)
        
        let animatingPlane = SKSpriteNode(imageNamed: "animatingPlane")
        animatingPlane.position = CGPoint(x: size.width/2 - 1000, y: size.height/2)
        addChild(animatingPlane)
        
        let moveRight = SKAction.moveByX(3000, y:0, duration: 3.0)
        animatingPlane.runAction(moveRight)
        
        let YourDecisions = SKSpriteNode(imageNamed: "YourDecisions")
        YourDecisions.position = CGPoint(x: size.width/2, y: size.height/2 - 500)
            YourDecisions.runAction(SKAction.fadeOutWithDuration(4, delay: 7, usingSpringWithDamping: 2, initialSpringVelocity: 2))
            addChild(YourDecisions)
        
        let clickAny = SKSpriteNode(imageNamed: "clickAny")
        clickAny.position = CGPoint(x: size.width/2, y: size.height/2 - 1000)
        addChild(clickAny)
        
        let moveClick = SKAction.moveByX(0, y: 500,
            duration: 5, delay: 8.5,
            usingSpringWithDamping: 0.2, initialSpringVelocity: 0)
        clickAny.runAction(moveClick)
        
    }
    
    
    func sceneTouched() {
        let scene = GameScene(size:self.size)
        scene.scaleMode = scaleMode
        let reveal = SKTransition.crossFadeWithDuration(1.0)
        backgroundMusicPlayer.stop()
        self.view?.presentScene(scene, transition: reveal)
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        sceneTouched()
    }
    
    /*
    func sceneFade() {
        let scene = GameScene(size:self.size)
        scene.scaleMode = scaleMode
        let reveal = SKTransition.fadeWithDuration(3.0)
        self.view?.presentScene(scene, transition: reveal)
        
        startTime = currentTime
    }
    
   
    
    override func update(currentTime: CFTimeInterval) {
        self.currentTime = currentTime
        elapsedTime = currentTime - startTime
       
        
        if elapsedTime >= 3.0 {
            let pause = dispatch_time(DISPATCH_TIME_NOW, Int64(NSEC_PER_SEC * 1))   //delay before fading
            dispatch_after(pause, dispatch_get_main_queue()){
            backgroundMusicPlayer.stop()
            self.sceneFade()
            }
    
        }

    }
    
    */
    
    

    }


