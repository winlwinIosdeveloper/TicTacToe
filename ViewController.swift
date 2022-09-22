//
//  ViewController.swift
//  TicTacToe
//
//  Created by Win Lwin on 22/09/2022.
//

import UIKit

class ViewController: UIViewController {
	
	var game = BoardGame()
	
	@IBOutlet var button: [UIButton]!
	
	
	@IBAction func playerPressed(_ sender: UIButton) {
		if let locationNumber = button.firstIndex(of: sender) {
			_ = game.playerChooseLocation(at: locationNumber)
			if(game.playerOne) {
				button[locationNumber].setTitle("X", for: UIControl.State.normal)
			} else if(game.playerTwo) {
				button[locationNumber].setTitle("O", for: UIControl.State.normal)
			}
		}
	}
}
