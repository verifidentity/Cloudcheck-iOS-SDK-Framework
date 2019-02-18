# CloudcheckSDK

[![Version](https://img.shields.io/cocoapods/v/CloudcheckSDK.svg?style=flat)](https://cocoapods.org/pods/CloudcheckSDK)
[![License](https://img.shields.io/cocoapods/l/CloudcheckSDK.svg?style=flat)](https://cocoapods.org/pods/CloudcheckSDK)
[![Platform](https://img.shields.io/cocoapods/p/CloudcheckSDK.svg?style=flat)](https://cocoapods.org/pods/CloudcheckSDK)


## Installation

CloudcheckSDK is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'CloudcheckSDK'
```

Alternatively, you can download the latest release tag and drop in the framework to your Xcode project

## Instructions

Import the module

```swift
import CloudcheckSDK
```

First initialize the SDK with the key and secret provided to you. Contact support@verifidentity.com if you haven't got one.

```swift
CloudcheckAPI.loadAPI(key: "my_cloudcheck_key", secret: "my_cloudcheck_secret")
```

### Cloudcheck UI

The simplest way to perform a verification is to use the provided verification workflow

```swift
let controller = CloudcheckViewController(mode: .live, reference: NSUUID().uuidString, delegate: self)
present(controller, animated: true, completion: nil)
```

The available modes for verification are `.live` and `.verify`.
Use the mode that best suits your requirements.

### Cloudcheck API

You can access the API via this SDK.

To make a verify request you will have to construct a `CloudcheckSDK.CCVerifyRequest` instance.
Once all of the details are loaded into the request object, simply call:

```swift
let request = CCVerifyRequest(…)

CloudcheckAPI.verify(request, completion: { result in
  // Handle the result
  switch result {
    case .error(let error):
      // Handle the error
    case .response(let response):
      // Handle the response
  }
})
```

### Cloudcheck Live

A Cloudcheck Live request must use our supplied view controllers. To start a Live request with a Capture Reference you can do so like this:

```swift
let controller = CloudcheckViewController(mode: .live, reference: myCaptureReference, delegate: self)
present(controller, animated: true, completion: nil)
```

## Author

Verifidentity, support@verifidentity.com

## License

CloudcheckSDK is available under the MIT license. See the LICENSE file for more info.
