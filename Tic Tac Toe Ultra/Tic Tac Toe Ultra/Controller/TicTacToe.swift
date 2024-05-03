//
//  TicTacToe.swift
//  Tic Tac Toe Ultra
//
//  Created by Pavel Lukoyanov on 24.04.2024.
//

import Foundation

class TicTacToe {
    var arrayXO: [XO] = []
    var counter = 0
    var gameMode: String?
    
    let winCombination = [
        [0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6],
        [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]
    ]
    
    init() {
        for _ in 0...8 {
            arrayXO.append(XO())
        }
    }
    
    func choiceXO(for index: Int) {
        counter += 1
        arrayXO[index].label = counter % 2 != 0 ? "❌" : "⭕️"
        if counter == 9 {
            return
        }
        if gameMode == "Bot" {
            counter += 1
            var freeInicies: [Int] = []
            
            for i in arrayXO.indices {
                if arrayXO[i].label == nil {
                    freeInicies.append(i)
                }
            }

            for i in freeInicies {
                var testArrayXO: [XO] = []
                for i in arrayXO {
                    testArrayXO.append(i)
                }
                testArrayXO[i].label = counter % 2 != 0 ? "❌" : "⭕️"
                if win(testArrayXO) != "Draw" && win(testArrayXO) != nil {
                    arrayXO[i].label = counter % 2 != 0 ? "❌" : "⭕️"
                    return
                }
            }
            
            arrayXO[freeInicies[Int.random(in: 0..<freeInicies.count)]].label = counter % 2 != 0 ? "❌" : "⭕️"
        }
    }
    
    func win(_ array: [XO]) -> String? {
        for i in winCombination {
            if array[i[0]].label == array[i[1]].label && array[i[1]].label == array[i[2]].label && array[i[0]].label != nil
            {
                return array[i[0]].label
            }
        }
        if counter == 9 {
            return "Draw"
        }
        
        return nil
    }
}
