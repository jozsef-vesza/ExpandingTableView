# ExpandingTableView

[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage) [![Version status](https://img.shields.io/cocoapods/v/ExpandingTableView.svg)][docLink] [![license MIT](http://img.shields.io/badge/license-MIT-orange.png)][mitLink]

Framework for expanding table view cells.

![][working gif]

## What is this?

Table view infrastructure supporting expanding cells.

## Installation

### Carthage

````bash
github "jozsef-vesza/ExpandingTableView"
````

### CocoaPods

````ruby
use_frameworks!

pod 'ExpandingTableView'
````

## Usage

### Basics

Supporting expanding cells is really simple, just follow these two steps:

1. Your table view cell has to be a sublass of `ExpandingTableViewCell`. Additionally you must connect the following outlets:

	* mainContainerView: will contain your primary view, which is always visible.
	* detailContainerView: the expanding part of your cell.
	* detailViewHeightConstraint: the height constraint of the expanding part.

2. Your table view controller has to be a subclass of `ExpandingTableViewController`, which will handle the initial setup, and manage the expanding behavior by default.

You can dequeue cells the following way:

```swift
override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    let cell = super.tableView(tableView, cellForRowAtIndexPath: indexPath) as! ExampleCell
    
    // customize cell here.
    
    return cell
}
```

### Further details

For a complete walkthrough, see the included example project.

## Internals

For the details, see the [original project][example project].

[working gif]: https://camo.githubusercontent.com/9493a28fa722a6bd6a64d24189be10d0d1d9bff4/687474703a2f2f692e696d6775722e636f6d2f333154565172392e676966

[example project]: https://github.com/jozsef-vesza/ExpandableTableView

[mitLink]: http://opensource.org/licenses/MIT

[docLink]: http://cocoadocs.org/docsets/ExpandingTableView/1.0/
