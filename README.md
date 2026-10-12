# Taku (AnyThink) - iOS Smartdigimkt ADX SDK

The Taku (AnyThink) Smartdigimkt ADX SDK for iOS, distributed via Swift Package Manager.

## Requirements

- iOS 12.0+
- Xcode 15.0+

## Installation

### Xcode

1. In Xcode, choose **File > Add Package Dependencies…**
2. Enter the repository URL:
   ```
   https://github.com/TakuMediation-packages/SmartdigimktCNSDK_SPM
   ```
3. Select **Exact Version** and enter the target version (e.g. `6.5.80`).
4. Add the `SmartdigimktCNSDK` product to your app target.
5. In your target's **Build Settings**, add `-ObjC` to **Other Linker Flags**.

### Package.swift

```swift
dependencies: [
    .package(
        url: "https://github.com/TakuMediation-packages/SmartdigimktCNSDK_SPM.git",
        exact: "6.5.80"
    )
]
```

## More information

- [Taku (AnyThink) iOS Integration Guide](https://help.takuad.com)
