//
//  MainMenuScene.swift
//  SpriteKitSimpleGame
//
//  Created by Harsh Shah on 2017-10-04.
//  Copyright © 2017 Razeware LLC. All rights reserved.
//
import Foundation
import SpriteKit
let img = SKSpriteNode(imageNamed: "play_btn")
class MainMenuScene: SKScene {
    override init(size: CGSize){
    super.init(size:size)
    backgroundColor = SKColor.white
    
        img.position=CGPoint(x:frame.midX,y:frame.midY)
        img.size=CGSize(width: 100, height: 100)
   addChild(img)
        
        
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        let touch:UITouch = touches.anyObject() as! UITouch
//        let positionInScene = touch.location(in: self)
//        let touchedNode = self.atPoint(positionInScene)
        let touch = touches.first!
        if img.contains(touch.location(in: self)) {
            let scene = GameScene(size: (view?.bounds.size)!)
            let skView = view as! SKView?
            skView?.showsFPS = true
            skView?.showsNodeCount = true
            skView?.ignoresSiblingOrder = true
            scene.scaleMode = .resizeFill
            
            skView?.presentScene(scene)
            print("Touched")
        }
       
    }}
//    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
//        let touch:UITouch = touches.first as! UITouch
//        let positionInScene = touch.location(in: self)
//        let touchedNode = self.atPoint(positionInScene)
//
//        if let name = touchedNode.name
//        {
//            if name == "img"
//            {
//                print("Touched")
//            }
//        }
//}
//Delete the GameScene.sks file from the project...


