# FullScreenPopGesture

[![CI Status](https://img.shields.io/travis/booniez/FullScreenPopGesture.svg?style=flat)](https://travis-ci.org/booniez/FullScreenPopGesture)
[![Version](https://img.shields.io/cocoapods/v/FullScreenPopGesture.svg?style=flat)](https://cocoapods.org/pods/FullScreenPopGesture)
[![License](https://img.shields.io/cocoapods/l/FullScreenPopGesture.svg?style=flat)](https://cocoapods.org/pods/FullScreenPopGesture)
[![Platform](https://img.shields.io/cocoapods/p/FullScreenPopGesture.svg?style=flat)](https://cocoapods.org/pods/FullScreenPopGesture)

## Example

fullscreen pop gesture in an iOS14+ system style with AOP.

整体实现参照 ``FDFullscreenPopGesture``

对外暴露属性保持一致
```
public protocol PopGestureRecognizable: AnyObject {
    var interactivePopDisabled: Bool { get set }
    var prefersNavigationBarHidden: Bool { get set }
    var interactivePopMaxAllowedInitialDistanceToLeftEdge: CGFloat { get set }
    var willAppearInjectBlock: ((_ viewController: UIViewController, _ animated: Bool) -> Void)? { get set }

    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool
}
```


# Usage

**AOP**, just add 2 files and **no need** for any setups, all navigation controllers will be able to use fullscreen pop gesture automatically.  

To disable this pop gesture of a navigation controller:  

``` Swift
navigationController?.fullscreenPopGestureRecognizer.isEnabled = false
```

To disable this pop gesture of a view controller:  

``` Swift
interactivePopDisabled = false
```


## Installation

FullScreenPopGesture is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'FullScreenPopGesture'
```

## Author

booniez, booniezbox@gmail.com

## License

FullScreenPopGesture is available under the MIT license. See the LICENSE file for more info.
