//
//  AddressRepository.swift
//  AddressBookSwiftUI
//
//  Created by Marcel Derks on 27.11.23.
//

import Foundation

class AddressRepository {
    
    let addresses = [
        Address(name: "John Doe", street: "123 Main St", city: "Cityville"),
        Address(name: "Jane Smith", street: "456 Oak St", city: "Townsville"),
    ]
    
    func fetchAddresses() -> [Address] {
        addresses
    }
}
