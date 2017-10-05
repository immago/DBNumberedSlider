# DBNumberedSlider
[![pod_ver](https://img.shields.io/cocoapods/v/DBNumberedSlider.png)](https://cocoapods.org/pods/DBNumberedSlider) [![pod_platform](https://img.shields.io/cocoapods/p/DBNumberedSlider.png)](https://cocoapods.org/pods/DBNumberedSlider) [![pod_license](https://img.shields.io/cocoapods/l/DBNumberedSlider.png)](https://cocoapods.org/pods/DBNumberedSlider)

IB_Designable UISlider with number inside thumb

![dbnumberedslider](https://user-images.githubusercontent.com/5740772/31226020-4c63b638-a9dd-11e7-8cf2-c07b588c40b6.gif)

## Installation
#### CocoaPods
```
pod 'DBNumberedSlider'
```
If you have IB Designables render error add use_frameworks! to your pod file.
![err](https://user-images.githubusercontent.com/5740772/31226023-4eeea1ec-a9dd-11e7-8d1f-e9edacb401e4.png)

#### Manual
Copy DBNumberedSlider.h and DBNumberedSlider.m from Classes directory to your project.

## Usage
Create DBNumberedSlider slider (subclass of UISlider) in storyboard or programmatically. No additional configuration needed.

## Properties
```
NSString *labelFormat - Label format string (stringWithFormat:labelFormat). Default: %.0f
UIColor  *textColor - Color of label
CGFloat  fontSize - Size of font (above 0)
NSString *fontName - Name of font (fontWithName:fontName) Example: Menlo-BoldItalic List: http://iosfonts.com/
UIFont *font - Set font directly
```
