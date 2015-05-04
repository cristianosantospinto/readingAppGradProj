//
//  Monkey8F.swift
//  readingApp
//
//  Created by Cristiano Santos-Pinto on 18/04/2015.
//  Copyright (c) 2015 Cristiano Santos-Pinto. All rights reserved.
//
import SpriteKit

class Monkey8F: SKScene {
    
    override func didMoveToView(view: SKView) {
        
        playBackgroundMusic("7matt.wav")
        
        let background = SKSpriteNode(imageNamed: "11Monkey")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(background)
                
        var croissant = SKSpriteNode(imageNamed: "croissant")
        croissant.position = CGPoint(x: size.width/2 + 270, y: size.height/2 + 220)
        croissant.name = "croissant"
        addChild(croissant)
                
        var baguette = SKSpriteNode(imageNamed: "baguette")
        baguette.position = CGPoint(x: size.width/2 + 270, y: size.height/2 + 60)
        baguette.name = "baguette"
        addChild(baguette)
        
        let rotateR = SKAction.rotateByAngle(0.06, duration: 1)
        let rotateL = SKAction.rotateByAngle(-0.06, duration: 1)
        let cycle = SKAction.sequence([rotateR, rotateL, rotateL, rotateR])
        let wiggle = SKAction.repeatActionForever(cycle)
        croissant.runAction(wiggle)
        baguette.runAction(wiggle)
                
                
        let swipeRight:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedRight:"))
        let swipeLeft:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedLeft:"))
        swipeRight.direction = .Left
        view.addGestureRecognizer(swipeLeft)
                
                
            }
            
            
            func swipedLeft(sender:UISwipeGestureRecognizer){
                
                let Scene = Monkey7F(size:self.size)
                Scene.scaleMode = scaleMode
                let reveal = SKTransition.revealWithDirection(SKTransitionDirection.Right, duration: 1.0)
                self.view?.presentScene(Scene, transition: reveal)
            }
            
            
            override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
                var touch = touches.first as? UITouch
                var location = touch!.locationInNode(self)
                var node = self.nodeAtPoint(location)
                
                if (node.name == "croissant") {
                    var mainMenu = Monkey9Fc(size: self.size)
                    var transition = SKTransition.revealWithDirection(SKTransitionDirection.Left, duration: 1.0)
                    mainMenu.scaleMode = SKSceneScaleMode.AspectFill
                    backgroundMusicPlayer.stop()
                    self.scene!.view?.presentScene(mainMenu, transition: transition)
                    
                }   else if (node.name == "baguette") {
                    var mainMenu = Monkey9Fb(size: self.size)
                    var transition = SKTransition.revealWithDirection(SKTransitionDirection.Left, duration: 1.0)
                    mainMenu.scaleMode = SKSceneScaleMode.AspectFill
                    backgroundMusicPlayer.stop()
                    self.scene!.view?.presentScene(mainMenu, transition: transition)
                    
                }
                
                
            }
            
            override func update(currentTime: CFTimeInterval) {
                
            }
            
}

