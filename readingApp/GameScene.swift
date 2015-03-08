//
//  GameScene.swift
//  readingApp
//
//  Created by Cristiano Santos-Pinto on 07/03/2015.
//  Copyright (c) 2015 Cristiano Santos-Pinto. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {          //scene setup
    override func didMoveToView(view: SKView) {
        backgroundColor = SKColor.whiteColor()
        let background = SKSpriteNode(imageNamed: "scene1") //grab image 'scene1'
        background.position = CGPoint(x: size.width/2, y: size.height/2)  //centralise image
        addChild(background)                                            //display image
    }
}

