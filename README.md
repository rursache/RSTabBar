# RSTabBar
![](https://img.shields.io/badge/platform-iOS-lightgrey)
![](https://img.shields.io/badge/iOS-13.0%2B-blue)
![](https://img.shields.io/badge/Swift-5-orange?logo=Swift&logoColor=white)

`SwiftUI`'s standard `TabView` component lacks basic functionality from `UIKit` like hiding the `TabBar` in specific screens.
`RSTabBar` aims to fix that while keeping the default look and feel of the OG `TabBar`

## Requirements
- SwiftUI
- iOS 15.0 or newer

## Installation
**RSTabBar** is available through [Swift Package Manager](https://github.com/apple/swift-package-manager)

Xcode > File > Swift Packages > Add Package Dependency > https://github.com/rursache/RSTabBar

## Usage
The following view will have 2 custom tabs, each with their `Text` view:

```swift
import SwiftUI
import RSTabBar

struct DemoView: View {
    static let tabs = [
        TabItem(index: 0, title: "Home", icon: "house", iconSelected: "house.fill"),
        TabItem(index: 1, title: "More", icon: "bolt.car")
    ]
    
    @State var tabBarVisible: Bool = true
    @State var tabs = DemoView.tabs
    @State var selectedTab: TabItem = DemoView.tabs.first!
    
    var body: some View {
        RSTabBar(tabs: $tabs, selectedTab: $selectedTab, tabBarVisible: $tabBarVisible) {
            Text("First view")
                .font(.title).bold()
                .padding()
                .tag(self.tabs[0])
                
            Text("Second view")
                .font(.title).bold()
                .padding()
                .tag(self.tabs[1])
        }
    }
}

```

Hiding the tabbar is easy! Just `tabBarVisible = false` anywhere

Check out the more advanced [example](https://github.com/rursache/RSTabBar/blob/master/ExampleView.swift) to understand how to further customize `RSTabBar`

## Known issues
- The safe area of the OG transparent `TabBar` is there and this is on purpose. However there are cases where you don't want that padding. Something like `.padding(.bottom, -40)` will adjust or remove that padding. I'm not sure what I can do about this.

## Contribution
If you struggle with something feel free to [open an issue](https://github.com/rursache/RSTabBar/issues/new). 
Pull requests are also appreciated as I still learn SwiftUI.

## License
**RSTabBar** is under the terms and conditions of the [MIT license](https://en.wikipedia.org/wiki/MIT_License).
