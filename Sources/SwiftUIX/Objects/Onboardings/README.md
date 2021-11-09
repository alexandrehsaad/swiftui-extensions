# swiftui-extensions

## Tutorial

1. import SwiftUI and SwiftUIX.

```swift
import SwiftUI
import SwiftUIX
```

2. Implement MyApp:

```swift
@main struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
```

3. Implement ContentView with onboardable properties:

```swift
struct ContentView {
    @State var isOnboardable = true
	
    let items = [
        OnboardingItem(symbol: "circle", title: "My title", subtitle: "My subtitle.")
    ]
	
    let terms = "My terms"
}
```

4. Extend ContentView with onboardable modifier:

```swift
extension ContentView: View {
    var body: some View {
        NavigationView {
            Text("Hello, World!")
        }
        .onboardable($isOnboardable, items: items, terms: terms)
    }
}
```
