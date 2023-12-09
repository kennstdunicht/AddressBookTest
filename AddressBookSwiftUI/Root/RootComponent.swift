import NeedleFoundation
import SwiftUI

/// Root Scope
class RootComponent: BootstrapComponent {
    
    var addressView: some View {
        AddressesView(viewModel: AddressesViewModel(repo: addressRepository),
                      detailBuilder: detailComponent)
    }
    
    public var addressRepository: AddressRepository {
        return shared { AddressRepository() }
    }
    
    var detailComponent: AddressDetailComponent {
        AddressDetailComponent(parent: self)
    }
}
