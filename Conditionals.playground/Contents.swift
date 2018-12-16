import UIKit

func loveCalculator() -> String{
    
    let loveScore = arc4random_uniform(101)
    
    if loveScore > 80 {
        return "Your love score is\(loveScore). You love each other"
    }
    else if loveScore > 40 && loveScore <= 80 {
        return "Your love score is\(loveScore). You love each other a bit"
    }
        
    else {
        return "Your love score is\(loveScore). No love possible"
    }
}

print(loveCalculator)
