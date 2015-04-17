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
        let background = SKSpriteNode(imageNamed: "SplashScreen")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(background)
        
    }
    
    
    func sceneFade() {
        let scene = GameScene(size:self.size)
        scene.scaleMode = scaleMode
        let reveal = SKTransition.fadeWithDuration(3.0)
        self.view?.presentScene(scene, transition: reveal)
        
        startTime = currentTime
    }
    
    //override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
    
   
    
    override func update(currentTime: CFTimeInterval) {
        self.currentTime = currentTime
        elapsedTime = currentTime - startTime
       
        
        if elapsedTime >= 3.0 {
            let pause = dispatch_time(DISPATCH_TIME_NOW, Int64(NSEC_PER_SEC * 1))   //delay before fading
            dispatch_after(pause, dispatch_get_main_queue()){
            
            self.sceneFade()
            }
    
        }
    

    }


}