import NeedleFoundation
import SwiftUI

protocol AddressDetailDependency: Dependency {
    var addressRepository: AddressRepository { get }
}

class AddressDetailComponent: Component<AddressDetailDependency>, AddressDetailBuilder {
    
    func addressDetailViewModel(selectedId: UUID) -> AddressDetailViewModel {
        AddressDetailViewModel(repository: dependency.addressRepository, selectedId: selectedId)
    }
    
    func addressDetailView(selectedId: UUID) -> AnyView {
        AnyView(
            AddressDetailView(viewModel: addressDetailViewModel(selectedId: selectedId))
        )
    }
}

protocol AddressDetailBuilder {
    func addressDetailView(selectedId: UUID) -> AnyView
}
