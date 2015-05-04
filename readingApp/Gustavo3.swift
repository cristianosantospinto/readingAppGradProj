//
//  Gustavo3.swift
//  readingApp
//
//  Created by Cristiano Santos-Pinto on 16/04/2015.
//  Copyright (c) 2015 Cristiano Santos-Pinto. All rights reserved.
//

import SpriteKit

class Gustavo3: SKScene {
    
    override func didMoveToView(view: SKView) {
        
        playBackgroundMusic("2gustavo.wav")
        
        let background = SKSpriteNode(imageNamed: "3Gustavo")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(background)
        
        var buttonTrain = SKSpriteNode(imageNamed: "train")
        buttonTrain.position = CGPoint(x: size.width/2 + -340, y: size.height/2 + 110)
        buttonTrain.name = "train"
        addChild(buttonTrain)
        
        var buttonTaxi = SKSpriteNode(imageNamed: "taxi")
        buttonTaxi.position = CGPoint(x: size.width/2, y: size.height/2 + 110)
        buttonTaxi.name = "taxi"
        addChild(buttonTaxi)
        
        var buttonBus = SKSpriteNode(imageNamed: "bus")
        buttonBus.position = CGPoint(x: size.width/2 + 340, y: size.height/2 + 110)
        buttonBus.name = "bus"
        addChild(buttonBus)
        
        let rotateR = SKAction.rotateByAngle(0.05, duration: 1)
        let rotateL = SKAction.rotateByAngle(-0.05, duration: 1)
        let cycle = SKAction.sequence([rotateR, rotateL, rotateL, rotateR])
        let wiggle = SKAction.repeatActionForever(cycle)
        buttonTrain.runAction(wiggle)
        buttonTaxi.runAction(wiggle)
        buttonBus.runAction(wiggle)
        
        
        let swipedRight:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedRight:"))
        //swipeRight.direction = .Right
        view.addGestureRecognizer(swipedRight)
        
        
    }
    
    
    func swipedRight(sender:UISwipeGestureRecognizer){
        let Scene = Gustavo2(size:self.size)
        Scene.scaleMode = scaleMode
        let reveal = SKTransition.revealWithDirection(SKTransitionDirection.Right, duration: 1.0)
        backgroundMusicPlayer.stop()
        self.view?.presentScene(Scene, transition: reveal)
    }
    
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        var touch = touches.first as? UITouch
        var location = touch!.locationInNode(self)
        var node = self.nodeAtPoint(location)
        
        if (node.name == "train") {
            sfx("train.wav")
            var mainMenu = Gustavo4(size: self.size)
            var transition = SKTransition.revealWithDirection(SKTransitionDirection.Left, duration: 2.0)
            mainMenu.scaleMode = SKSceneScaleMode.AspectFill
            backgroundMusicPlayer.stop()
            self.scene!.view?.presentScene(mainMenu, transition: transition)
    
        
        }   else if (node.name == "taxi") {
            sfx("horn.wav")
                var mainMenu = Gustavo6(size: self.size)
                var transition = SKTransition.revealWithDirection(SKTransitionDirection.Left, duration: 2.0)
                mainMenu.scaleMode = SKSceneScaleMode.AspectFill
                backgroundMusicPlayer.stop()
                self.scene!.view?.presentScene(mainMenu, transition: transition)
            
        }   else if (node.name == "bus") {
            sfx("bus.wav")
            var mainMenu = Gustavo5(size: self.size)
            var transition = SKTransition.revealWithDirection(SKTransitionDirection.Left, duration: 2.0)
            mainMenu.scaleMode = SKSceneScaleMode.AspectFill
            backgroundMusicPlayer.stop()
            self.scene!.view?.presentScene(mainMenu, transition: transition)
    }

    
    }


    override func update(currentTime: CFTimeInterval) {
        
    }
    
}




