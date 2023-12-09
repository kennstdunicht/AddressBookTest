//
//  AddressDetailViewModel.swift
//  AddressBookSwiftUI
//
//  Created by Marcel Derks on 29.11.23.
//

import Foundation
import Combine

class AddressDetailViewModel: ObservableObject {
    
    @Published var address: Address = Address()
    
    var repository: AddressRepository
    
    var selectedId: UUID
    
    init(repository: AddressRepository, selectedId: UUID) {
        self.repository = repository
        self.selectedId = selectedId
        
        if let address = repository.fetchAddresses().first(where: { $0.id == selectedId }) {
            self.address = address
        }
    }
}
