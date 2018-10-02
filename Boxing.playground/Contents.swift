//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class ViewModel<T> {
    typealias Listner = (T, T) -> Void
    
    var listner: Listner?
    
    
    var value: T {
        // property observer
        didSet {
            listner?(value, value)
        }
        
    }
    
    init(_ value: T) {
        self.value = value
    }
    
    func update(listner: Listner?) {
        self.listner = listner
        listner?(value, value)
    }
    
    
}

let viewModel = ViewModel("string Generic")
viewModel.update { (val, val2) in
    print("\(val) and \(val2)")
}





