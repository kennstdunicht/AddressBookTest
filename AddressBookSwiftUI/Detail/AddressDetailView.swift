import SwiftUI

struct AddressDetailView: View {
    
    var viewModel: AddressDetailViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Name: \(viewModel.address.name)")
            Text("Street: \(viewModel.address.street)")
            Text("City: \(viewModel.address.city)")
        }
        .padding()
        .navigationTitle("Address Detail")
    }
}
