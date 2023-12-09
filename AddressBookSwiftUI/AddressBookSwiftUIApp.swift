import SwiftUI

@main
struct AddressBookSwiftUIApp: App {
    
    var rootComponent: RootComponent?
    
    init() {
        registerProviderFactories()
        rootComponent = RootComponent()
    }
    
    var body: some Scene {
        WindowGroup {
            rootComponent?.addressView
        }
    }
}
