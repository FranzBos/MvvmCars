class Car {
    var model: String?
    var automaker: String?
    var horsepower: Int?
    var photoURL: String?

    init(model: String, automaker: String, horsepower: Int, photoURL: String) {
        self.model = model
        self.automaker = automaker
        self.horsepower = horsepower
        self.photoURL = photoURL
    }
}
