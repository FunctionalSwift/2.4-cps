//: Playground - Continuation Passing Style

import Foundation

class Model {
    func count(f: @escaping (Int) -> Void) {
        DispatchQueue.main.async {
            f(0)
        }
    }
}

let model = Model()

model.count { count in
    if count == 0 {
        //no data
    } else {
        //we have data
    }
}
