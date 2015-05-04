//
//  Monkey7F.swift
//  readingApp
//
//  Created by Cristiano Santos-Pinto on 18/04/2015.
//  Copyright (c) 2015 Cristiano Santos-Pinto. All rights reserved.
//

import SpriteKit

class Monkey7F: SKScene {
    
    override func didMoveToView(view: SKView) {
        
        playBackgroundMusic("6matt.wav")
        
        let background = SKSpriteNode(imageNamed: "9Monkey")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(background)
        
        let swipeRight:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedRight:"))
        swipeRight.direction = .Right
        view.addGestureRecognizer(swipeRight)
        
        let swipeLeft:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedLeft:"))
        swipeRight.direction = .Left
        view.addGestureRecognizer(swipeLeft)
        
        let birds = SKSpriteNode(imageNamed: "birds")
        birds.position = CGPoint(x: size.width/2 + 700, y: size.height/2 + 300)
        birds.name = "birds"
        addChild(birds)
        
        let camera = SKSpriteNode(imageNamed: "cam")
        camera.position = CGPoint(x: size.width/2 + 23, y: size.height/2 - 300)
        camera.name = "cam"
        addChild(camera)
        
        
    }
    
    func swipedRight(sender:UISwipeGestureRecognizer){
        
        let Scene = Monkey8F(size:self.size)
        Scene.scaleMode = scaleMode
        let reveal = SKTransition.revealWithDirection(SKTransitionDirection.Left, duration: 1.0)
        backgroundMusicPlayer.stop()
        self.view?.presentScene(Scene, transition: reveal)
    }
    
    func swipedLeft(sender:UISwipeGestureRecognizer){
        
        let Scene = Monkey6F(size:self.size)
        Scene.scaleMode = scaleMode
        let reveal = SKTransition.revealWithDirection(SKTransitionDirection.Right, duration: 1.0)
        backgroundMusicPlayer.stop()
        self.view?.presentScene(Scene, transition: reveal)
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        var touch = touches.first as? UITouch
        var location = touch!.locationInNode(self)
        var node = self.nodeAtPoint(location)
        
        if (node.name == "birds") {
            sfx("birds.wav")
            
            
        }   else if (node.name == "cam") {
            sfx("camera.wav")
            
            
        }
        
        
    }
    
}


