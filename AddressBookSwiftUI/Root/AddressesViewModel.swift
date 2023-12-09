import Foundation
import Combine

protocol AddressesViewModelProtocol: ObservableObject {
    var addresses: [Address] { get }
    
    func didSelectAddress(address: Address)
}

class AddressesViewModel: AddressesViewModelProtocol {
    
    var repo: AddressRepository
    
    @Published var addresses: [Address] = []
    
    init(repo: AddressRepository) {
        self.repo = repo
        fetchData()
    }
    
    func fetchData() {
        addresses = repo.fetchAddresses()
    }
    
    func didSelectAddress(address: Address) {
        print("address: \(address)")
    }
}
