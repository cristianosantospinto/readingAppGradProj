//
//  Monkey9Ip.swift
//  readingApp
//
//  Created by Cristiano Santos-Pinto on 18/04/2015.
//  Copyright (c) 2015 Cristiano Santos-Pinto. All rights reserved.
//
import SpriteKit

class Monkey9Ip: SKScene {
    
    override func didMoveToView(view: SKView) {
        
        playBackgroundMusic("10mattPizza.wav")
        
        let background = SKSpriteNode(imageNamed: "12.2Monkey")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(background)
        
        let swipeRight:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedRight:"))
        swipeRight.direction = .Right
        view.addGestureRecognizer(swipeRight)
        
        let swipeLeft:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedLeft:"))
        swipeRight.direction = .Left
        view.addGestureRecognizer(swipeLeft)
        
        let matt = SKSpriteNode(imageNamed: "mattFace")
        matt.position = CGPoint(x: size.width/2 - 343, y: size.height/2 + 310)
        matt.name = "mattFace"
        addChild(matt)
        
    }
    
    func swipedRight(sender:UISwipeGestureRecognizer){
        
        let Scene = Monkey10I(size:self.size)
        Scene.scaleMode = scaleMode
        let reveal = SKTransition.revealWithDirection(SKTransitionDirection.Left, duration: 1.0)
        backgroundMusicPlayer.stop()
        self.view?.presentScene(Scene, transition: reveal)
    }
    
    func swipedLeft(sender:UISwipeGestureRecognizer){
        
        let Scene = Monkey8I(size:self.size)
        Scene.scaleMode = scaleMode
        let reveal = SKTransition.revealWithDirection(SKTransitionDirection.Right, duration: 1.0)
        backgroundMusicPlayer.stop()
        self.view?.presentScene(Scene, transition: reveal)
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        var touch = touches.first as? UITouch
        var location = touch!.locationInNode(self)
        var node = self.nodeAtPoint(location)
        
        if (node.name == "mattFace") {
            sfx("train.wav")
            
            
        }   else if (node.name == "") {
            sfx("")
            
            
        }
        
        
    }
    
    
}

