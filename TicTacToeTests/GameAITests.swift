//
//  GameAITests.swift
//  TicTacToeTests
//
//  Created by Stephanie Bowles on 8/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import TicTacToe

class GameAITests: XCTestCase {
    func testWinCheckingVertical1(){
        /*
         x o -
         x o -
         x - -
        */
        /*
         
         (0, 0)  (1, 0)  (2, 0)
         (0, 1)  (1, 1)  (2, 1)
         (0, 2)  (1, 2)  (2, 2)
         
         */
        var board = GameBoard()
        try! board.place(mark: .x, on: (0, 0))
        try! board.place(mark: .o, on: (1, 0))
        try! board.place(mark: .x, on: (0, 1))
        try! board.place(mark: .o, on: (1, 1))
        try! board.place(mark: .x, on: (0, 2))
        XCTAssertTrue(game(board: board, isWonBy: .x))
        XCTAssertFalse(game(board: board, isWonBy: .o))
    }
    
    func testWinCheckingVertical2() {
        
        var board = GameBoard()
        try! board.place(mark: .x, on: (1, 0))
        try! board.place(mark: .o, on: (0, 0))
        try! board.place(mark: .x, on: (1, 1))
        try! board.place(mark: .o, on: (2, 2))
        try! board.place(mark: .x, on: (1, 2))
        XCTAssertTrue(game(board: board, isWonBy: .x))
        XCTAssertFalse(game(board: board, isWonBy: .o))
    }
    
    func testWinCheckingVertical3(){
        
        var board = GameBoard()
        try! board.place(mark: .x, on: (2, 0))
        try! board.place(mark: .o, on: (1, 0))
        try! board.place(mark: .x, on: (2, 1))
        try! board.place(mark: .o, on: (1, 1))
        try! board.place(mark: .x, on: (2, 2))
        XCTAssertTrue(game(board: board, isWonBy: .x))
        XCTAssertFalse(game(board: board, isWonBy: .o))
    }
    
    /*
     
     (0, 0)  (1, 0)  (2, 0)
     (0, 1)  (1, 1)  (2, 1)
     (0, 2)  (1, 2)  (2, 2)
     
     */
    func testWinCheckingHorizontal1() {
        
        var board = GameBoard()
        try! board.place(mark: .x, on: (0, 0))
        try! board.place(mark: .o, on: (1, 2))
        try! board.place(mark: .x, on: (1, 0))
        try! board.place(mark: .o, on: (1, 1))
        try! board.place(mark: .x, on: (2, 0))
        XCTAssertTrue(game(board: board, isWonBy: .x))
        XCTAssertFalse(game(board: board, isWonBy: .o))
    }
    
    func testWinCheckingHorizontal2() {
        
        var board = GameBoard()
        try! board.place(mark: .x, on: (0, 1))
        try! board.place(mark: .o, on: (1, 0))
        try! board.place(mark: .x, on: (1, 1))
        try! board.place(mark: .o, on: (0, 2))
        try! board.place(mark: .x, on: (2, 1))
        XCTAssertTrue(game(board: board, isWonBy: .x))
        XCTAssertFalse(game(board: board, isWonBy: .o))
    }
    func testWinCheckingHorizontal3() {
        
        var board = GameBoard()
        try! board.place(mark: .x, on: (0, 2))
        try! board.place(mark: .o, on: (1, 0))
        try! board.place(mark: .x, on: (1, 2))
        try! board.place(mark: .o, on: (1, 1))
        try! board.place(mark: .x, on: (2, 2))
        XCTAssertTrue(game(board: board, isWonBy: .x))
        XCTAssertFalse(game(board: board, isWonBy: .o))
    }
    

func testWinCheckingDiagonal1() {
    var board = GameBoard()
    
    /*
     
     x - -
     - x -
     o o x
    */
    
    try! board.place(mark: .x, on: (0, 0))
    try! board.place(mark: .o, on: (0, 2))
    try! board.place(mark: .x, on: (1, 1))
    try! board.place(mark: .o, on: (1, 2))
    try! board.place(mark: .x, on: (2, 2))
    XCTAssertTrue(game(board: board, isWonBy: .x))
    XCTAssertFalse(game(board: board, isWonBy: .o))
    
}
    
func testWinCheckingDiagonal2() {
        var board = GameBoard()
        
        /*
         
         - 0 x
         0 x -
         x o -
         */
         
        try! board.place(mark: .x, on: (2, 0))
        try! board.place(mark: .o, on: (1, 0))
        try! board.place(mark: .x, on: (1, 1))
        try! board.place(mark: .o, on: (0, 1))
        try! board.place(mark: .x, on: (0, 2))
        XCTAssertTrue(game(board: board, isWonBy: .x))
        XCTAssertFalse(game(board: board, isWonBy: .o))
        
    }

}

//write the two other vertical win check tests
//horizontal win checking in GameAI.swift
// at least one horizontal win test
