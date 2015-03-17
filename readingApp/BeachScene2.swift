//
//  BeachScene2.swift
//  readingApp
//
//  Created by Cristiano Santos-Pinto on 17/03/2015.
//  Copyright (c) 2015 Cristiano Santos-Pinto. All rights reserved.
//

import SpriteKit

class BeachScene2: SKScene {
    override func didMoveToView(view: SKView) {
        
        let background = SKSpriteNode(imageNamed: "scene2")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        var button = SKSpriteNode(imageNamed: "mainMenuButton")
        button.position = CGPoint(x: size.width/2, y: size.height/2)
        button.name = "MenuButton"
        
        addChild(background)
        addChild(button)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        var touch: UITouch = touches.anyObject() as UITouch
        var location = touch.locationInNode(self)
        var node = self.nodeAtPoint(location)
        
        // If previous button is touched, start transition to previous scene
        if (node.name == "MenuButton") {
            var mainMenu = GameScene(size: self.size)
            var transition = SKTransition.doorsCloseHorizontalWithDuration(0.5)
            mainMenu.scaleMode = SKSceneScaleMode.AspectFill
            self.scene!.view?.presentScene(mainMenu, transition: transition)
        }
    }
    
    override func update(currentTime: CFTimeInterval) {
        
    }
    
}

