//
//  WordGenerator.swift
//  Wordle
//
//  Created by Mari Batilando on 2/20/23.
//

import Foundation

class WordGenerator {
    
    // Exercise 8:
    /*  Set 11 possible words
        Return a **random** string every time `generateRandomWord` is called
     */

    static let possibleWords = ["ABCDE", "ADULT", "BEACH", "BLACK", "CRAFT", "GRASP", "FRAME", "FORCE", "ENTER", "NURSE", "LAYER"]
  static func generateRandomWord() -> String? {
    
      let words = possibleWords.randomElement()!
      print(words)
      return words
    
  }
}

