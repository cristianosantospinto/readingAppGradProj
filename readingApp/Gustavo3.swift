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
        
        let swipeRight:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedRight:"))
        let swipeLeft:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: Selector("swipedLeft:"))
        swipeRight.direction = .Left
        view.addGestureRecognizer(swipeLeft)
        
        
    }
    
    
    func swipedLeft(sender:UISwipeGestureRecognizer){
        
        let Scene = Gustavo2(size:self.size)
        Scene.scaleMode = scaleMode
        let reveal = SKTransition.revealWithDirection(SKTransitionDirection.Right, duration: 1.0)
        self.view?.presentScene(Scene, transition: reveal)
    }
    
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        var touch = touches.first as? UITouch
        var location = touch!.locationInNode(self)
        var node = self.nodeAtPoint(location)
        
        if (node.name == "train") {
            var mainMenu = Gustavo4(size: self.size)
            var transition = SKTransition.revealWithDirection(SKTransitionDirection.Left, duration: 1.0)
            mainMenu.scaleMode = SKSceneScaleMode.AspectFill
            self.scene!.view?.presentScene(mainMenu, transition: transition)
    
        
        }   else if (node.name == "taxi") {
                var mainMenu = Gustavo6(size: self.size)
                var transition = SKTransition.revealWithDirection(SKTransitionDirection.Left, duration: 1.0)
                mainMenu.scaleMode = SKSceneScaleMode.AspectFill
                self.scene!.view?.presentScene(mainMenu, transition: transition)
            
        }   else if (node.name == "bus") {
            var mainMenu = Gustavo5(size: self.size)
            var transition = SKTransition.revealWithDirection(SKTransitionDirection.Left, duration: 1.0)
            mainMenu.scaleMode = SKSceneScaleMode.AspectFill
            self.scene!.view?.presentScene(mainMenu, transition: transition)
    }

    
    }


    override func update(currentTime: CFTimeInterval) {
        
    }
    
}




