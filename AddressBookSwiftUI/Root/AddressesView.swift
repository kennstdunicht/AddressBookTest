import SwiftUI

struct AddressesView<ViewModel>: View where ViewModel: AddressesViewModelProtocol {
    @ObservedObject var viewModel: ViewModel

    var detailBuilder: AddressDetailBuilder
    
    var body: some View {
        NavigationView {
            List(viewModel.addresses) { address in
                NavigationLink(destination: 
                                detailBuilder.addressDetailView(selectedId: address.id)) {
                    AddressRow(address: address)
                }
            }
            .navigationTitle("Address List")
        }
    }
}

struct AddressRow: View {
    var address: Address

    var body: some View {
        VStack(alignment: .leading) {
            Text(address.name)
                .font(.headline)
            Text(address.street)
                .foregroundColor(.gray)
            Text(address.city)
                .foregroundColor(.gray)
        }
    }
}
