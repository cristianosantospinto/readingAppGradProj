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
        let reveal = SKTransition.doorsOpenHorizontalWithDuration(0.8)
        self.view?.presentScene(myScene, transition: reveal)

    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        sceneTapped()
    }
    

}

   