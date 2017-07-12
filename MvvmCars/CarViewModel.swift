import Foundation

class CarViewModel {
    private var car: Car?

    var modelText: String? {
        return car?.model
    }

    var automakerText: String? {
        return car?.automaker
    }

    var horsepowerText: String? {
        guard let horsepower = car?.horsepower else {
            return nil
        }
        return "\(horsepower) HP"
    }

    var titleText: String? {
        guard let make = car?.automaker, let model = car?.model else {
            return nil
        }
        return "\(make) \(model)"
    }

    var photoURL: NSURL? {
        guard let photoURL = car?.photoURL else {
            return nil
        }
        return NSURL(string: photoURL)
    }

    init(car: Car) {
        self.car = car
    }
}
