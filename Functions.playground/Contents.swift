//func getMilk(){//function instructing robot to get milk
//
//    print("Go to the shops")
//    print("Buy 2 litres of milk")
//    print("Pay 2 euros")
//    print("Go home")
//}

//func getMilk(HowManyMilkCartons : Int){
//    print("Go to the shops")
//    print("Buy \(HowManyMilkCartons) litres of milk")
//
//    let priceToPay = HowManyMilkCartons * 2
//
//    print("Pay \(priceToPay) euros")
//    print("Go home")
//}

func getMilk(HowManyMilkCartons : Int, howMuchMoneyGot : Int) -> Int {
    print("Go to the shops")
    print("Buy \(HowManyMilkCartons) litres of milk")
    
    let priceToPay = HowManyMilkCartons * 2

    print("Pay \(priceToPay) euros")
    print("Go home")
    
    let change = howMuchMoneyGot - priceToPay
    
    return change
}

var amountOfChange = getMilk(HowManyMilkCartons: 3, howMuchMoneyGot: 10)

print("Hello master, here's your $\(amountOfChange) change")






