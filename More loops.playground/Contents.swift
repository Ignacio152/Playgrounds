//: Playground - noun: a place where people can play

import UIKit

func beerSong(_ totalNumberOfBottles : Int) -> String{

    var lyrics: String = ""
    
    for number in (1...totalNumberOfBottles).reversed() {
        
        if number > 1 {
            let newLyrics : String = "\n\(number) bottles of beer on the wall, \(number) bottles of beer.\nTake one down and pass it around, \(number-1) bottles of beer on the wall."
            lyrics += newLyrics
        }
        else {
            let newLyrics : String = "\n\(number) bottle of beer on the wall, \(number) bottles of beer.\nTake one down and pass it around, no more beer on the wall."
            lyrics += newLyrics
        }
    }
    
    return lyrics
}

print(beerSong(25))
