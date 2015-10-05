# QuramiLink 🔗


[![Version](https://img.shields.io/cocoapods/v/QuramiLink.svg?style=flat)](http://cocoapods.org/pods/QuramiLink)
[![License](https://img.shields.io/cocoapods/l/QuramiLink.svg?style=flat)](http://cocoapods.org/pods/QuramiLink)
[![Platform](https://img.shields.io/cocoapods/p/QuramiLink.svg?style=flat)](http://cocoapods.org/pods/QuramiLink)

## Description

QuramiLink is a convenient class that you can use to open an office page of Qurami directly from your app.  
It checks the availability of Qurami Client on the destination device and, if present, opens the office page.   
All you need to do is to provide a valid office link.   
We will update this class to ensure that any integration with the Qurami iOS client will be seamlessly supported.

## Usage 📖

The usage is trivial, simply import `QuramiLink.h` in your implementation file and call:

```
[QuramiLink openQuramiOfficeWithOfficeLink: @"yourOfficeLink"];
```

Browse our sample code for any doubts 😉!


## Installation 🔨

QuramiLink is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```
pod "QuramiLink"
```
and then execute

```
pod install
```



## License 📃

QuramiLink is available under the MIT license. See the LICENSE file for more info.
