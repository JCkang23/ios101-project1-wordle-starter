//
//  ViewController.swift
//  Wordle
//
//  Created by Mari Batilando on 2/12/23.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var wordsCollectionView: UICollectionView!
  @IBOutlet weak var keyboardCollectionView: UICollectionView!

  private var boardController: BoardController!
  private var keyboardController: KeyboardController!

  override func viewDidLoad() {
    super.viewDidLoad()

    setupNavigationBar()

    boardController = BoardController(collectionView: wordsCollectionView)
    keyboardController = KeyboardController(collectionView: keyboardCollectionView)
      
    /*  Assign a closure to the `didSelectString` property of `keyboardController`
        The closure takes in a string selected from the keyboard
        Implement a condition for the `DELETE_KEY` constant
            - If the string is equal to this given constant, then call the `deleteLastCharacter` method of `boardController`
            - If it's not call the `enter` method of `boardController` to pass in the selected string as the argument
     */
      
      keyboardController.didSelectString = { (string) in
          if string == DELETE_KEY {
              return self.boardController.deleteLastCharacter()
          } else {
              return self.boardController.enter(string)
          }
      }
  }
}
