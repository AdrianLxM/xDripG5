# xDripG5

[![CI Status](http://img.shields.io/travis/loudnate/xDripG5.svg?style=flat)](https://travis-ci.org/loudnate/xDripG5)
[![Version](https://img.shields.io/cocoapods/v/xDripG5.svg?style=flat)](http://cocoapods.org/pods/xDripG5)
[![License](https://img.shields.io/cocoapods/l/xDripG5.svg?style=flat)](http://cocoapods.org/pods/xDripG5)
[![Platform](https://img.shields.io/cocoapods/p/xDripG5.svg?style=flat)](http://cocoapods.org/pods/xDripG5)

A iOS framework providing an interface for communicating with the G5 glucose transmitter over Bluetooth. The name and inspiration comes from [xDrip](http://stephenblackwasalreadytaken.github.io/xDrip/), a breakthrough application for connecting to the G4 system.

*Please note this project is neither created nor backed by Dexcom, Inc. This software is not intended for use in therapy.*

## Usage

The quickest way to run the example project is via [CocoaPods](http://cocoapods.org). Run `pod try xDripG5` in the terminal. 
Since Bluetooth LE is required, you will need to build and run on a real device.

If you plan to run your app alongside the G5 Mobile application, make sure to set `passiveModeEnabled` to true.

### Examples

[glucose-badge](https://github.com/dennisgove/glucose-badge) – Display the latest glucose values as an app icon badge

## Requirements

This framework connects to a G5 Mobile Transmitter via Bluetooth LE. It does not connect to the G4 Share Receiver or any earlier CGM products.

## Installation

### Carthage

Carthage support is coming soon.

### Cocoapods

xDripG5 is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "xDripG5"
```

## Author

Nathan Racklyeft, loudnate@gmail.com

## License

xDripG5 is available under the MIT license. See the LICENSE file for more info.
