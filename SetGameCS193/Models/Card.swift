//
//  Card.swift
//  SetGameCS193
//
//  Created by Kailash on 7/22/18.
//  Copyright © 2018 Kailash. All rights reserved.
//

import Foundation

struct SetCard {
    var shape:SetShape
    var shading: SetShading
    var number: SetNumber
    var color: SetColor
    
    private(set) var isFaceUp = false;
    private(set) var isMatched = false;
    
    enum SetShape {
        case diamonds
        case ovals
        case squiggles
        
        static var all: [SetShape] =  [SetShape.diamonds, .ovals, .squiggles]
    }
    
    enum SetShading{
        case solid
        case open
        case striped
        
        static var all: [SetShading]{
            return [SetShading.solid, .open, .striped]
        }
    }
    
    enum SetNumber: Int{
        case one
        case two
        case three
        
        static var all: [SetNumber]{
            return [SetNumber.one, .two, .three]
        }
    }
    
    enum SetColor: String{
        case red
        case green
        case purple
        
        static var all: [SetColor] = [SetColor.red, .green, .purple]
    }
    
}
