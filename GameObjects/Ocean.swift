//
//  Ocean.swift
//  MAPD724-ICE-1A
//
//  Created by Man Nok Pun on 2023-01-16.
//

import GameplayKit
import SpriteKit

class Ocean : GameObject{
    
    init(){
        super.init(imageString: "ocean", initScale: 2)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder){
        fatalError("init(")
    }
    
    override func Start(){
        Reset()
        zPosition = 0
        verticalSpeed = 5.0
    }
    override func Update(){
        Move()
        CheckBounds()
    }
    override func CheckBounds(){
        if(position.y <= -773) {
            Reset()
        }
    }
    override func Reset(){
        position.y = 773
    }
    func Move(){
        position.y -= verticalSpeed!
    }
}
