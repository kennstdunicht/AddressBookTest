import SwiftUI

struct AddressesView<ViewModel>: View where ViewModel: AddressesViewModelProtocol {
    @ObservedObject var viewModel: ViewModel

    var detailBuilder: AddressDetailBuilder
    
    var body: some View {
        NavigationView {
            ZStack {
                List(viewModel.addresses) { address in
                    NavigationLink(destination:
                                    detailBuilder.addressDetailView(selectedId: address.id)) {
                        AddressRow(address: address)
                    }
                }
                .navigationTitle("Address List")
                
                Color.clear
                    .overlay(alignment: .bottomTrailing) {
                        Button("Tap me") {
                            // Handle button tap action
                            print("Button tapped!")
                        }
                        .padding([.trailing, .bottom], 20)
                    }
            }
  
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
