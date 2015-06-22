# ViewModelExtensions

[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage) [![Version status](https://img.shields.io/cocoapods/v/ViewModelExtensions.svg)][docLink] [![license MIT](http://img.shields.io/badge/license-MIT-orange.png)][mitLink]

A convenience library to inject view models into view controllers defined in Interface Builder.

### Usage

First, mark your classes as view models by conforming to the `ViewModelType` protocol.

```swift
struct ExampleViewModel: ViewModelType {
    // Your implementation
}
```

To support view model injection, your view controller class must conform to `ViewControllerInitializable`:

```swift
extension ExampleViewController: ViewControllerInitializable {
    
    static func instanceWithViewModel(viewModel: ExampleViewModel) -> MainViewController? {
        if let instance = self.instance() as? ExampleViewController {
            instance.viewModel = viewModel
            return instance
        }
        
        return nil
    }
}
```

Important:

1. Currently nibs are not supported. Your view controllers must be defined in a storyboard file.
2. The view controller's storyboard ID must match the class name.

After these steps, you can initialize a view controller:

```swift
let exampleViewController = ExampleViewController.instanceWithViewModel(ExampleViewModel())
```

### Installation

#### Carthage

````bash
github "jozsef-vesza/ViewModelExtensions"
````

#### CocoaPods

````ruby
use_frameworks!

pod 'ViewModelExtensions'
````

[mitLink]: http://opensource.org/licenses/MIT
[docLink]: http://cocoadocs.org/docsets/ViewModelExtensions/1.0
