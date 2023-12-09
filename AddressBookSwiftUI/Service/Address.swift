import Foundation

struct Address: Identifiable {
    
    init() {
        self.id = UUID()
        self.name = ""
        self.street = ""
        self.city = ""
    }
    
    init(id: UUID = UUID(), name: String, street: String, city: String) {
        self.id = id
        self.name = name
        self.street = street
        self.city = city
    }
    
    var id = UUID()
    var name: String
    var street: String
    var city: String
}
