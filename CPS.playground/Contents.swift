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

func whenEmpty(model: Model, _ onTrue: @escaping () -> Void, otherwise onFalse: @escaping (Int) -> Void) {
    model.count { count in
        if count == 0 {
            onTrue()
        } else {
            onFalse(count)
        }
    }
}

whenEmpty(model: model, {
    //no data
}, otherwise: { _ in
    //we have data
})



