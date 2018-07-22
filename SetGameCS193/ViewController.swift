//
//  ViewController.swift
//  SetGameCS193
//
//  Created by Kailash on 7/22/18.
//  Copyright © 2018 Kailash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cardView: CardView!
    var myDeck = SetDeck();
    let min_cards = 12;
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        cardView.card = myDeck.getOneRandomCard();
    }
    
}

