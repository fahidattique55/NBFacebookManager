[![Swift version](https://img.shields.io/badge/swift-3.0-orange.svg?style=flat.svg)](https://img.shields.io/badge/swift-3.0-orange.svg?style=flat.svg)
[![Support Dependecy Manager](https://img.shields.io/badge/support-CocoaPods-red.svg?style=flat.svg)](https://img.shields.io/badge/support-CocoaPods-red.svg?style=flat.svg)
[![Version](https://img.shields.io/cocoapods/v/NBFacebookManager.svg?style=flat)](http://cocoapods.org/pods/NBFacebookManager)
[![License](https://img.shields.io/badge/License-MIT-brightgreen.svg?style=flat.svg)](https://img.shields.io/badge/License-MIT-brightgreen.svg?style=flat.svg)
[![Platform](https://img.shields.io/cocoapods/p/NBFacebookManager.svg?style=flat)](http://cocoapods.org/pods/NBFacebookManager)




## Features

* Integrate facebook login in your application with only two steps.


## Installation
 

### CocoaPods
 
 [CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:
 
 ```bash
 $ gem install cocoapods
 ```
 
 
 To integrate NBFacebookManager into your Xcode project using CocoaPods, specify it in your `Podfile`:
 
 ```ruby
 source 'https://github.com/CocoaPods/Specs.git'
 platform :ios, '9.0'
 use_frameworks!
 
 target '<Your Target Name>' do
 pod 'NBFacebookManager'
 end
 ```
 
 Then, run the following command:
 
 ```bash
 $ pod install
 ```

 
 
 
## Pre-Requisite

* Create a new facebook application with your facebook developer account. Please visit [Facebook Developer Site](https://developers.facebook.com) to create a new application and follow the instructions to get App-ID setup in your Xcode project's .plist file.

 
 
 
## Usage

#### Step 1

* Install the NBFacebookManager pod.
* Add following code in your  ``` Appdelegate.swift ``` file,

 
```swift 

func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

    FBSDKApplicationDelegate.sharedInstance().application(application, didFinishLaunchingWithOptions: launchOptions)
    return true
}


func application(_ application: UIApplication, open url: URL, sourceApplication: String?, annotation: Any) -> Bool {

    return FBSDKApplicationDelegate.sharedInstance().application(application, open: url, sourceApplication: sourceApplication, annotation: annotation)
}

 
@available(iOS 9.0, *)
func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any]) -> Bool {

    return FBSDKApplicationDelegate.sharedInstance().application(app, open: url, sourceApplication: options[UIApplicationOpenURLOptionsKey.sourceApplication] as? String, annotation: options[UIApplicationOpenURLOptionsKey.annotation])
}


```

 
#### Step 2

* Create the FacebookManager instance in your controller to authenticate user and get its facebook profile.

``` fileprivate let facebookManager = FacebookManager() ```

* Authenticate the user using 'facebookManager' as given below 

```swift 

 
facebookManager.tryAuthenticate(fromViewController: self, success:{ facebookToken in

    self.getProfileIfNeeded()

}) { error in

    print("Error: \(String(describing: error?.localizedDescription))")
}


private func getProfileIfNeeded(){

    facebookManager.fetchLoggedUserInfo(successBlock: { (userInfo) in

        print("\(String(describing: userInfo))")

    }) { (error) in
        print("Error: \(String(describing: error?.localizedDescription))")
    }
}

 
```

 
* Congratulations! You have successfully integrated facebook login in your application. 
 
 
 
 
## License

NBFacebookManager is available under the MIT license. See the LICENSE file for more info.

 

## Author

**Fahid Attique** - (https://github.com/fahidattique55)
