//
//  GameViewController.swift
//  Tic Tac Toe Ultra
//
//  Created by Pavel Lukoyanov on 28.04.2024.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet var arrayButton: [UIButton]!
    @IBOutlet weak var label_1: UILabel!
    @IBOutlet weak var navigatorHeader: UINavigationItem!
    
    var gameMode: String = ""
    let game = TicTacToe()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        game.gameMode = gameMode
        navigatorHeader.title = "\(gameMode) mode"
        updateView()
    }
    
    @IBAction func gameButtons(_ sender: UIButton) {
        guard let index = arrayButton.firstIndex(of: sender) else {
            return
        }
        game.choiceXO(for: index)
        updateView()
    }
    
    @IBAction func restart(_ sender: UIButton) {
        game.arrayXO = []
        for _ in 0...8 {
            game.arrayXO.append(XO())
        }
        game.counter = 0
        for i in arrayButton {
            i.setTitle("", for: .normal)
            i.isEnabled = true
        }
        updateView()
    }
    
    func updateView() {
        label_1.text = "Now goes \(game.counter % 2 == 0 ? "❌" : "⭕️")"
        for i in arrayButton.indices {
            let button = arrayButton[i]
            let XO = game.arrayXO[i]
            if let label = XO.label {
                button.setTitle(label, for: .normal)
                button.isEnabled = false
            }
        }
        if let win = game.win(game.arrayXO) {
            label_1.text = "Winner \(win)"
            for i in arrayButton {
                i.isEnabled = false
            }
        }
    }
    @IBAction func mAction(_ sender: UIButton) {
        
    }
    
}
