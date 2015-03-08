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
}
