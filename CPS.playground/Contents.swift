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

func isEmpty(model: Model, onTrue: @escaping () -> Void, onFalse: @escaping (Int) -> Void) {
    model.count { count in
        if count == 0 {
            onTrue()
        } else {
            onFalse(count)
        }
    }
}


isEmpty(model: model,
        onTrue: {
            //no data
        },
        onFalse: { count in
            //we have data
        }
)

