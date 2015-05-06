//
//  Gustavo11.swift
//  readingApp
//
//  Created by Cristiano Santos-Pinto on 16/04/2015.
//  Copyright (c) 2015 Cristiano Santos-Pinto. All rights reserved.
//

import SpriteKit

class Gustavo11: SKScene {
    
    override func didMoveToView(view: SKView) {
        
        playBackgroundMusic("8gustavo.wav")
        
        let background = SKSpriteNode(imageNamed: "11Gustavo")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(background)
        
        let swipeRight:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedRight:"))
        swipeRight.direction = .Right
        view.addGestureRecognizer(swipeRight)
        
        let swipeLeft:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedLeft:"))
        swipeLeft.direction = .Left
        view.addGestureRecognizer(swipeLeft)
        
        let boat1 = SKSpriteNode(imageNamed: "winBoat1")
        boat1.position = CGPoint(x: size.width/2 - 353, y: size.height/2 + 158)
        boat1.name = "winBoat1"
        addChild(boat1)
        
        let boat2 = SKSpriteNode(imageNamed: "winBoat2")
        boat2.position = CGPoint(x: size.width/2 + 277, y: size.height/2 + 165)
        boat2.name = "winBoat2"
        addChild(boat2)
        
        
    }
    
    func swipedLeft(sender:UISwipeGestureRecognizer){
        
        let Scene = Gustavo12(size:self.size)
        Scene.scaleMode = scaleMode
        let reveal = SKTransition.revealWithDirection(SKTransitionDirection.Left, duration: 1.0)
        backgroundMusicPlayer.stop()
        self.view?.presentScene(Scene, transition: reveal)
    }
    
    func swipedRight(sender:UISwipeGestureRecognizer){
        
        let Scene = Gustavo10(size:self.size)
        Scene.scaleMode = scaleMode
        let reveal = SKTransition.revealWithDirection(SKTransitionDirection.Right, duration: 1.0)
        backgroundMusicPlayer.stop()
        self.view?.presentScene(Scene, transition: reveal)
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        var touch = touches.first as? UITouch
        var location = touch!.locationInNode(self)
        var node = self.nodeAtPoint(location)
        
        if (node.name == "winBoat1") {
            sfx("boat.wav")
            
            
        }   else if (node.name == "winBoat2") {
            sfx("boat.wav")
            
            
        }
    
    }
    
    
}

