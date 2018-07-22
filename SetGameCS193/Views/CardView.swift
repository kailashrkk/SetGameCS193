//
//  CardView.swift
//  SetGameCS193
//
//  Created by Kailash on 7/22/18.
//  Copyright © 2018 Kailash. All rights reserved.
//

import UIKit

class CardView: UIView {
    var card: SetCard? {
        didSet{
            setNeedsDisplay()
        }
    }
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: bounds.midX, y: bounds.midY * 0.5));
        path.addLine(to: CGPoint(x: bounds.maxX * 0.75, y: bounds.maxY * 0.75));
        path.addLine(to:  CGPoint(x: bounds.maxX * 0.25, y: bounds.maxY * 0.75));
        path.addLine(to:  CGPoint(x: bounds.midX, y: bounds.midY * 0.5));
        UIColor.black.setStroke();
        print("\(card)");
        if let colorVal = card?.color.rawValue {
            if(colorVal == "green"){
                UIColor.green.setFill();
            }else if (colorVal == "purple"){
                UIColor.purple.setFill();
            }else{
                UIColor.red.setFill();
            }
        }
        path.stroke();
        path.fill();
        path.close();
    }
}
