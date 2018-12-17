import UIKit
import Foundation


var pings = [String]()
var pinged = [String]()

var numOfAddresses = 0

while numOfAddresses<256{
    pings.append("192.168.1.\(numOfAddresses+1)")
    numOfAddresses+=1
}

var x = 0
var z = 9

func performTaskInConcurrent(with completion: @escaping () -> ()){
    
    let group = DispatchGroup()
    let concurrentQueue = DispatchQueue.init(label: "Concurrent", attributes: .concurrent)
    
    while z < 252{
        for i in x...z{
            concurrentQueue.async {
                group.enter()
                print(pings[i])
                group.leave()
            }
        }
        z+=10
        x+=10
    }
    
//    for i in 0...10{
//        concurrentQueue.async {
//            group.enter()
//            print(pings[i])
//            group.leave()
//        }
//    }
//    for i in 11...21{
//        ConcurrentQueue.async {
//            group.enter()
//            print(pings[i])
//            group.leave()
//        }
//    }
//    for i in 22...32{
//        ConcurrentQueue.async {
//            group.enter()
//            print(pings[i])
//            group.leave()
//        }
//    }
//    for i in 33...43{
//        ConcurrentQueue.async {
//            group.enter()
//            print(pings[i])
//            group.leave()
//        }
//    }
//    for i in 44...54{
//        ConcurrentQueue.async {
//            group.enter()
//            print(pings[i])
//            group.leave()
//        }
//    }
//    for i in 55...65{
//        ConcurrentQueue.async {
//            group.enter()
//            print(pings[i])
//            group.leave()
//        }
//    }
//    for i in 66...76{
//        ConcurrentQueue.async {
//            group.enter()
//            print(pings[i])
//            group.leave()
//        }
//    }
//
    
    group.notify(queue: DispatchQueue.main) {
        completion()
    }
}

performTaskInConcurrent(with: {
    print("###### All hosts pinged")
})
