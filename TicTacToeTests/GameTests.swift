//
//  GameTests.swift
//  TicTacToeTests
//
//  Created by Stephanie Bowles on 8/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import TicTacToe


class GameTests: XCTestCase {

    func testCatsGame() {
    var game = Game()
    /*
     x o o
     o x x
     x x o
     */
    try! game.makeMark(at: (0, 0))
    try! game.makeMark(at: (1, 0))
        try! game.makeMark(at: (1, 1))
        try! game.makeMark(at: (2, 0))
        try! game.makeMark(at: (2, 1))
        try! game.makeMark(at: (0, 1))
        try! game.makeMark(at: (0, 2))
        try! game.makeMark(at: (2, 2))
        try! game.makeMark(at: (1, 2))
        
 
    
    XCTAssertFalse(game.winningPlayer == .x )
    XCTAssertTrue(game.activePlayer == nil)
    XCTAssertTrue(game.gameIsOver)
    XCTAssertFalse(game.winningPlayer == .o)
}
}
