# Smartdigimkt CN Domain Switch Adapter

An optional iOS domain switch adapter distributed through Swift Package Manager.
The adapter package depends on the matching `SmartdigimktCNSDK` product from
`SmartdigimktCNSDK_SPM` version `6.5.80`.

## Requirements

- iOS 12.0 or later
- Xcode 15.0 or later

## Installation

### Xcode

1. Choose **File > Add Package Dependencies...**.
2. Enter:

   ```text
   https://github.com/TakuMediation-packages/SmartdigimktCNDomainSwitchAdapter_SPM.git
   ```

3. Select the exact version `6.5.80`.
4. Add the `SmartdigimktCNDomainSwitchAdapter` product to the app target.
5. Add `-ObjC` to the app target's **Other Linker Flags**.

The package resolves `SmartdigimktCNSDK_SPM` at the exact `6.5.80` version and
uses its `SmartdigimktCNSDK` product as the adapter dependency.

### Package.swift

```swift
dependencies: [
    .package(
        url: "https://github.com/TakuMediation-packages/SmartdigimktCNDomainSwitchAdapter_SPM.git",
        exact: "6.5.80"
    )
]
```

Add the `SmartdigimktCNDomainSwitchAdapter` product to the application target.

## Package structure

The public product contains the Adapter binary and a support target. The
support target connects the Adapter binary to the `SmartdigimktCNSDK` product.

```text
SmartdigimktCNDomainSwitchAdapter
├── SmartdigimktCNDomainSwitchAdapter.xcframework
└── SmartdigimktCNSDK
    └── SmartdigimktSDK.xcframework
```

## Release checklist

Before tagging version `6.5.80`:

1. Upload `SmartdigimktCNDomainSwitchAdapter.zip` to the URL configured in
   `Package.swift`.
2. Calculate its checksum:

   ```bash
   swift package compute-checksum SmartdigimktCNDomainSwitchAdapter.zip
   ```

3. Replace `REPLACE_WITH_SMARTDIGIMKT_CN_DOMAIN_SWITCH_ADAPTER_SHA256` in
   `Package.swift` with the calculated value.

The zip must contain the `SmartdigimktDomainSwitchAdapter.xcframework` binary
used by the `SmartdigimktCNDomainSwitchAdapter` binary target.
