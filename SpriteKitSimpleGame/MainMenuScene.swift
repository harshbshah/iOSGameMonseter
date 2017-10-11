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
let easy = SKSpriteNode(imageNamed:"slow")
let hard = SKSpriteNode(imageNamed:"fast")
var no_player = 1
let t_play = SKSpriteNode(imageNamed:"M_play")
var level = "NA"
class MainMenuScene: SKScene {
    override init(size: CGSize){
    super.init(size:size)
    backgroundColor = SKColor.white
    
        img.position=CGPoint(x:frame.midX,y:frame.midY)
        img.size=CGSize(width: 100, height: 100)
        easy.position=CGPoint(x:frame.midX-100,y:frame.midY-150)
        hard.position=CGPoint(x:frame.midX+200,y:frame.midY-150)
        t_play.position = CGPoint(x:frame.midX,y:frame.midY+150)
   addChild(img)
   addChild(easy)
        addChild(hard)
        addChild(t_play)
        
        
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
        if easy.contains(touch.location(in: self)){
            let scene = GameScene(size: (view?.bounds.size)!)
            let skView = view as! SKView?
            skView?.showsFPS = true
            skView?.showsNodeCount = true
            skView?.ignoresSiblingOrder = true
            scene.scaleMode = .resizeFill
            level = "easy"
            skView?.presentScene(scene)
            print("from easy")
        }
        if hard.contains(touch.location(in: self)){
            let scene = GameScene(size: (view?.bounds.size)!)
            let skView = view as! SKView?
            skView?.showsFPS = true
            skView?.showsNodeCount = true
            skView?.ignoresSiblingOrder = true
            scene.scaleMode = .resizeFill
            level="hard"
            skView?.presentScene(scene)
            print("from Hard")
        }
        if t_play.contains(touch.location(in: self)){
            let scene = GameScene(size: (view?.bounds.size)!)
            let skView = view as! SKView?
            skView?.showsFPS = true
            skView?.showsNodeCount = true
            skView?.ignoresSiblingOrder = true
            scene.scaleMode = .resizeFill
            level="easy"
            no_player = 2
            skView?.presentScene(scene)
            print("M_play")
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


