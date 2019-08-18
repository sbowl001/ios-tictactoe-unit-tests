//
//  GameBoardTests.swift
//  TicTacToeTests
//
//  Created by Stephanie Bowles on 8/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import TicTacToe


class GameBoardTests: XCTestCase {

    /*
     
     (0, 0)  (1, 0)  (2, 0)
     (0, 1)  (1, 1)  (2, 1)
     (0, 2)  (1, 2)  (2, 2)
     
 */
    func testCreatingEmptyBoard() {
        let board = GameBoard()
        
        for x in 0..<3 {
            for y in 0..<3 {
                XCTAssertNil(board[(x, y)], "If failed, squares are not empty")  //want to make sure the coordinates are nil
            }
        }
    }
    
    func testPlacingMarks(){
        var board = GameBoard()
        XCTAssertNoThrow(try board.place(mark: .o, on: (0, 0)))
        XCTAssertEqual(board[(0, 0)], .o)
        XCTAssertNoThrow(try board.place(mark: .x, on: (2, 2)))
        XCTAssertEqual(board[(2,2)], .x)
        
        for x in 0..<3 {
            for y in 0..<3 {
                if x == 0 && y == 0 {
                    continue
                }
                if x == 2 && y == 2 {
                    continue
                }
                XCTAssertNil(board[(x, y)])  /// checking all others besides 0,0 & 2,2
            }
        }
        
        //Make sure can't change and already marked square
        XCTAssertThrowsError(try board.place(mark: .x, on: (0, 0))) {
            (error) in
            XCTAssertEqual(error as? GameBoardError, GameBoardError.invalidSquare)
        }
    }

    
    func testIsFull() {
        var board = GameBoard()
        
        try! board.place(mark: .x, on: (0, 0))
        try! board.place(mark: .o, on: (0, 1))
        try! board.place(mark: .x, on: (1, 0))
        try! board.place(mark: .o, on: (2, 0))
        try! board.place(mark: .x, on: (0, 2))
        try! board.place(mark: .o, on: (1, 1))
        try! board.place(mark: .x, on: (2, 1))
        try! board.place(mark: .o, on: (1, 2))
        XCTAssertFalse(board.isFull)
       
        try! board.place(mark: .x, on: (2,2))
        XCTAssertTrue(board.isFull)
    }
}
