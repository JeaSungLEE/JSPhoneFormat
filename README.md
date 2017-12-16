# JSPhoneFormat
한국전화번호 체계에 맞는 구분자 추가

[![Version](https://img.shields.io/cocoapods/v/JSPhoneFormat.svg?style=flat)](http://cocoapods.org/pods/JSPhoneFormat)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)](https://github.com/jeasungLEE/JSPhoneFormat/blob/master/LICENSE)
[![Platform](https://img.shields.io/cocoapods/p/JSPhoneFormat.svg?style=flat)](http://cocoapods.org/pods/JSPhoneFormat)
[![Swift 4.0](https://img.shields.io/badge/Swift-4.0-orange.svg?style=flat)](https://developer.apple.com/swift/)
## Introduce
![demo3](https://github.com/JeaSungLEE/JSPhoneFormat/blob/master/Demo/demo3.gif)
![demo1](https://github.com/JeaSungLEE/JSPhoneFormat/blob/master/Demo/demo1.gif)
![demo2](https://github.com/JeaSungLEE/JSPhoneFormat/blob/master/Demo/demo2.gif)

* 15##-####
* 02-###-####
* 010-####-####
* 외 국제전화를 제외한 다양한 국내용 포맷 지원
* 형식이 맞지않는경우는 구분자가 추가되지않고 그대로 반환됩니다. 예) 010123456789


## Requirements
* iOS9.0이상
* Swift4


## Installation
### Cocoapods

JSPhoneFormat는 코코아팟으로 가능합니다. [CocoaPods](http://cocoapods.org).

```ruby
pod 'JSPhoneFormat'
```

## Usage

```ruby
import JSPhoneFormat
```
### Programmatically
```ruby
let phoneFormat = JSPhoneFormat.init(appenCharacter: "-")   //구분자로 사용하고싶은 캐릭터를 넣어주시면 됩니다.

@objc func textFieldDidChange(_ textField: UITextField) {
    guard let text = textField.text else { return }
    textField.text = phoneFormat.addCharacter(at: text)
}   // phoneFormat.addCharacter에 텍스트를 넣어주면 init시 넣은 character가 구분자로 들어간 값이 반환됩니다.

getDigitsWithouthCharacter()로 구분자가 없는 텍스트만도 받을수 있습니다.
```

Example 프로젝트를 참고해주세요

## Author
[jeasungLEE](https://github.com/jeasungLEE)

## License
JSPhoneFormat is available under the MIT license.
