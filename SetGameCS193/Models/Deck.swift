//
//  Deck.swift
//  SetGameCS193
//
//  Created by Kailash on 7/22/18.
//  Copyright © 2018 Kailash. All rights reserved.
//

import Foundation

struct SetDeck{
    var deck = [SetCard]()
    lazy var count = deck.count;
    init(){
        for color in SetCard.SetColor.all{
            for shape in SetCard.SetShape.all{
                for shading in SetCard.SetShading.all{
                    for number in SetCard.SetNumber.all{
                        deck.append(SetCard(shape: shape, shading: shading, number: number, color: color, isFaceUp: true, isMatched: false));
                    }
                }
            }
        }
    }
    
    mutating func getOneRandomCard() -> SetCard? {
        if deck.count > 0{
            return deck.remove(at:deck.count.arc4random);
        }
        return nil
    }
}

extension Int{
    var arc4random: Int {
        if self > 0 {
            return Int(arc4random_uniform(UInt32(self)))
        }else if self < 0 {
            return -Int(arc4random_uniform(UInt32(self)))
        }else{
            return 0
        }
    }
}
