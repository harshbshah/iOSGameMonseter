//
//  GameOverScene.swift
//  SpriteKitSimpleGame
//
//  Created by Main Account on 9/30/16.
//  Copyright © 2016 Razeware LLC. All rights reserved.
//

import Foundation
import SpriteKit

class GameOverScene: SKScene {
 
    init(size: CGSize, won:Bool , score: Int) {
 
    super.init(size: size)
 
    // 1
    backgroundColor = SKColor.white
 
    // 2
    let message = won ? "You Won!" : "You Lose :["
   
    // 3
    let label = SKLabelNode(fontNamed: "Chalkduster")
        label.text = message+"current Score\(score)\n Player_1:\(player_score[0]) \nPlayer_1:\(player_score[1])"
    label.fontSize = 20
    label.fontColor = SKColor.black
    label.position = CGPoint(x: size.width/2, y: size.height/2)
    addChild(label)
        if current_player == 1
        {
            current_player = 2
        }
        else{
            current_player = 1
        }
    // 4
    run(SKAction.sequence([
      SKAction.wait(forDuration: 3.0),
      SKAction.run() {
        // 5
        let reveal = SKTransition.flipHorizontal(withDuration: 0.5)
        let scene = GameScene(size: size)
        self.view?.presentScene(scene, transition:reveal)
      }
    ]))
 
  }
 
  // 6
  required init(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
