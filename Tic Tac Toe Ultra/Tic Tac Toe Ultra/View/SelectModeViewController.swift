//
//  SelectModeViewController.swift
//  Tic Tac Toe Ultra
//
//  Created by Pavel Lukoyanov on 28.04.2024.
//

import UIKit

class SelectModeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func startNewGame(_ gameMode: String) {
        let newGame = storyboard?.instantiateViewController(withIdentifier: "GameViewController") as! GameViewController
        newGame.gameMode = gameMode
        navigationController?.pushViewController(newGame, animated: true)
    }
    
    @IBAction func playWithFriend(_ sender: UIButton) {
        startNewGame("Friend")
    }
    
    @IBAction func playWithBot(_ sender: UIButton) {
        startNewGame("Bot")
    }
}
