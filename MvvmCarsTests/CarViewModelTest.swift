import XCTest
@testable import MvvmCars

class CarViewModelTest: XCTestCase {

    func testCarViewModelWithFerrariF12() {
        let ferrari = Car(model: "F12", automaker: "Ferrari", horsepower: 730, photoURL: "http://auto.ferrari.com/en_EN/wp-content/uploads/sites/5/2013/07/Ferrari-F12berlinetta.jpg")
        let ferrariViewModel = CarViewModel(car: ferrari)
        XCTAssertEqual(ferrariViewModel.modelText, "F12")
        XCTAssertEqual(ferrariViewModel.automakerText, "Ferrari")
        XCTAssertEqual(ferrariViewModel.horsepowerText, "730 HP")
        XCTAssertEqual(ferrariViewModel.photoURL, NSURL(string: ferrari.photoURL!))
        XCTAssertEqual(ferrariViewModel.titleText, "Ferrari F12")
    }
}
