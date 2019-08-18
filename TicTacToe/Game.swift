//
//  Game.swift
//  TicTacToe
//
//  Created by Stephanie Bowles on 8/18/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation


struct Game {
    
    init() {
        self.board = GameBoard()
        self.gameIsOver = false
        self.winningPlayer = nil
        self.activePlayer  = .x
        
    }
    mutating internal func restart() {
//        Restarts the game to a fresh state with an empty board, and player X starting.
        self.board = GameBoard()
        self.winningPlayer = nil
        self.activePlayer = .x 
    }
    mutating internal func makeMark(at coordinate: Coordinate) throws {
//        : adds a mark for the currently active player at the given coordinate. Updates game state.
        guard let player = self.activePlayer else {return}
            
            try self.board.place(mark: player, on: coordinate)
        if game(board: self.board, isWonBy: player) {
            self.gameIsOver = true
            self.activePlayer = nil
            self.winningPlayer = player
        } else if self.board.isFull {
            self.gameIsOver = true
            self.activePlayer = nil
            self.winningPlayer  = nil
        } else {
            self.gameIsOver = false
            
            if self.activePlayer == .x {
                self.activePlayer = .o
            } else {
                self.activePlayer = .x 
            }
        }
        
 
    }
    
    private(set) var board: GameBoard
    
    internal var activePlayer: GameBoard.Mark?
    internal var gameIsOver: Bool
    internal var winningPlayer: GameBoard.Mark?
}
