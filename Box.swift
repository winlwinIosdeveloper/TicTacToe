//
//  Box.swift
//  TicTacToe
//
//  Created by Win Lwin on 22/09/2022.
//

import Foundation

struct Box {
	var isPressed = false
	var isMatched = false
	
	var location : Int = 0
	
	static var getLocaton = 0
	static func getLocation() -> Int {
		getLocaton += 1
		return getLocaton
	}
	
	init() {
		self.location = Box.getLocation()
	}
}
