//
//  GameScene.swift
//  MAPD724-ICE-1A
//
//  Created by Man Nok Pun on 2023-01-16.
//
import UIKit
import AVFoundation
import SpriteKit
import GameplayKit


class GameScene: SKScene {
    
    // instance variables
    var ocean1: Ocean?
    var ocean2: Ocean?
    var player: Player?
    
    var screenSize = UIScreen.main.bounds
    var screenHeight: CGFloat?
    var screenWidth: CGFloat?
    
    override func sceneDidLoad() {
      name = "GAME"
        screenHeight = screenSize.height
        screenWidth = screenSize.width
        
        //add ocean to scene
        ocean1 = Ocean()  // instantiate new Ocean allocate memory
        ocean1?.Start()
        ocean1?.Reset()
        addChild(ocean1!)
        
        ocean2 = Ocean()  // instantiate new Ocean allocate memory
        ocean2?.Start()
        ocean2?.position.y = -773
        addChild(ocean2!)
        
        player = Player()  // instantiate new Player allocate memory
        player?.Start()
        addChild(player!)
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        player?.TouchMove(newPos: CGPoint(x: pos.x, y: -495))
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        player?.TouchMove(newPos: CGPoint(x: pos.x, y: -495))
    }
    
    func touchUp(atPoint pos : CGPoint) {
        player?.TouchMove(newPos: CGPoint(x: pos.x, y: -495))
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    // triggered every frame (about 60 frames/sec
    override func update(_ currentTime: TimeInterval) {
        ocean1?.Update()
        ocean2?.Update()
        player?.Update()
    }
}
