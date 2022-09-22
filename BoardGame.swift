//
//  BoardGame.swift
//  TicTacToe
//
//  Created by Win Lwin on 22/09/2022.
//

import Foundation

class BoardGame {
	
	var Board = [Box]()
	
	var playerOne : Bool = false
	var playerTwo : Bool = false
	
	var turn : Int = 0 {
		didSet {
			playerOne = turn % 2 != 0
			playerTwo = turn % 2 == 0
		}
	}
	
	func playerChooseLocation(at index : Int) -> Int {
		turn += 1
		return Board[index].location
	}
	
	init() {
		for _ in 0..<9 {
			let box = Box()
			Board.append(box)
		}
	}
}
