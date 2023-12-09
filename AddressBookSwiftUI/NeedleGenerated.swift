

import Foundation
import NeedleFoundation
import SwiftUI

// swiftlint:disable unused_declaration
private let needleDependenciesHash : String? = nil

// MARK: - Traversal Helpers

private func parent1(_ component: NeedleFoundation.Scope) -> NeedleFoundation.Scope {
    return component.parent
}

// MARK: - Providers

#if !NEEDLE_DYNAMIC

private class AddressDetailDependencya436f3b34d55a5888036Provider: AddressDetailDependency {
    var addressRepository: AddressRepository {
        return rootComponent.addressRepository
    }
    private let rootComponent: RootComponent
    init(rootComponent: RootComponent) {
        self.rootComponent = rootComponent
    }
}
/// ^->RootComponent->AddressDetailComponent
private func factoryc4242de79ab1ac52dea7b3a8f24c1d289f2c0f2e(_ component: NeedleFoundation.Scope) -> AnyObject {
    return AddressDetailDependencya436f3b34d55a5888036Provider(rootComponent: parent1(component) as! RootComponent)
}

#else
extension AddressDetailComponent: Registration {
    public func registerItems() {
        keyPathToName[\AddressDetailDependency.addressRepository] = "addressRepository-AddressRepository"
    }
}
extension RootComponent: Registration {
    public func registerItems() {

        localTable["addressRepository-AddressRepository"] = { [unowned self] in self.addressRepository as Any }
    }
}


#endif

private func factoryEmptyDependencyProvider(_ component: NeedleFoundation.Scope) -> AnyObject {
    return EmptyDependencyProvider(component: component)
}

// MARK: - Registration
private func registerProviderFactory(_ componentPath: String, _ factory: @escaping (NeedleFoundation.Scope) -> AnyObject) {
    __DependencyProviderRegistry.instance.registerDependencyProviderFactory(for: componentPath, factory)
}

#if !NEEDLE_DYNAMIC

@inline(never) private func register1() {
    registerProviderFactory("^->RootComponent->AddressDetailComponent", factoryc4242de79ab1ac52dea7b3a8f24c1d289f2c0f2e)
    registerProviderFactory("^->RootComponent", factoryEmptyDependencyProvider)
}
#endif

public func registerProviderFactories() {
#if !NEEDLE_DYNAMIC
    register1()
#endif
}
