//
//  MainMenu.swift
//  readingApp
//
//  Created by Cristiano Santos-Pinto on 07/03/2015.
//  Copyright (c) 2015 Cristiano Santos-Pinto. All rights reserved.
//

import SpriteKit

class MainMenu: SKScene {
    override func didMoveToView(view: SKView) {
        let background = SKSpriteNode(imageNamed: "mainMenu")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(background)
    }
    
    
    func sceneTapped() {
        let myScene = GameScene(size:self.size)
        myScene.scaleMode = scaleMode
        let reveal = SKTransition.doorsOpenHorizontalWithDuration(1.0) // SKTransition.fadeWithDuration(1.0),
        self.view?.presentScene(myScene, transition: reveal)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
    
    sceneTapped()
    
    }
    
    // page 466 - set up then do an override func update and call 'sceneTapped'. Need to have the math etc. 
    

}

   