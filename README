# EmergentViewController

'EmergentViewController' is a view controller container for iOS that can present any number of child views from any side of the screen. 

## Requirements

* iOS5+
* ARC

## Getting Started

This section will explain how to setup your own project with 'EmergentViewController'. You can see also the example app included in this repo.

### Include EmergentViewController into your project

You will need these two files:

* EmergentViewController.h
* EmergentViewController.m

### Setup storybord or xib

Make the desired ViewController to target EmergentViewController class or create your own subclass of EmergentViewController. Then you only have to insert a new view inside your view controller, customize it and reference it to its outlet. EmergentViewController use the view's tag to determine whether or not the view is hidden so its initial value should be 0.

### Initialize the view's position

In your view controller's viewDidLoad call the method [self initializeViewPosition:view position:x]; where the view is the emergent view and x = {0 = top, 1 = bottom, 2 = left, 3 = right}

### Set a trigger to execute the show/hide action

Create an IBAction and associate it to a 'touch up inside' button's action, a Gesture or whatever you want, and call [self togglePopUp:view position:x]; to show/hide your customized view. 

## MIT License

Copyright (C) 2013 Miquel Alvarado

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
