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
    XCTAssertNil(game.activePlayer)
    XCTAssertTrue(game.gameIsOver)
    XCTAssertFalse(game.winningPlayer == .o)
}
    
    
    func testIncompleteGame() {
        /*
         x o o
         o x x
         - x o
         */
        var game = Game()
        
         try! game.makeMark(at: (0, 0))
         try! game.makeMark(at: (1, 0))
         try! game.makeMark(at: (1, 1))
         try! game.makeMark(at: (2, 0))
         try! game.makeMark(at: (2, 1))
         try! game.makeMark(at: (0, 1))
 
        XCTAssertFalse(game.gameIsOver)
        XCTAssertFalse(game.winningPlayer == .x )
        XCTAssertFalse(game.winningPlayer == .o)
        XCTAssertTrue(game.activePlayer == .x)
        
 
        
    }
    
    
    func testWinGame() {
        var game = Game()
        /*
         0 - -
         - 0 -
         x x x
         */
        
        try! game.makeMark(at: (0, 2))
         try! game.makeMark(at: (0, 0))
         try! game.makeMark(at: (1, 2))
         try! game.makeMark(at: (1, 1))
         try! game.makeMark(at: (2, 2))
   
        XCTAssertTrue(game.gameIsOver)
        XCTAssertTrue(game.winningPlayer == .x)
        XCTAssertFalse(game.winningPlayer == .o )
        XCTAssertNil(game.activePlayer)
    }
    
    func testRestart() {
        var game = Game()
        
         game.restart()
        
        XCTAssertNil(game.winningPlayer)
        XCTAssertTrue(game.activePlayer == .x )
        XCTAssertFalse(game.board.isFull)
    }
    func testPlayerChange(){
        
        var game = Game()
        try! game.makeMark(at: (0, 0))
        
        XCTAssertTrue(game.activePlayer == .o)
        XCTAssertFalse(game.activePlayer == .x)
    }
}
