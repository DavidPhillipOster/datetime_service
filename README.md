# ![](images/icon_128.png) datetime_service
Insert Date - macOS service to  insert the date at the cursor.

## To Build:

* Open the Xcode project and in the Info panel of the DateTime target change the prefix of the bundle Identifier from `com.example.${PRODUCT_NAME:rfc1034identifier}`  to a domain you control.

* You may choose to adjust how the code is signed, but that isn't necessary.

* **Build** from the **Product** menu

## To Install:

* from the **Products** group in Xcode's **Product Navigator** select ![]([images/icon_64.png) `DateTime.service` and right-click to **Show in Finder** In the Finder, put ![](images/icon_64.png)  `DateTime.service` in your `Library/Services` directory.

## To Use:

In any program that uses Apple's text system, place the cursor anywhere you can enter text. Choose **Insert Date** from **Services** submenu.


## Notes:

I bind this to ⌘⇧D so in a single compound keystroke I can enter the date.

The date format is controlled by the **NSUserData** in the Info.plist. As shipped, it is set to the American-style 7/11/2021, but any format string that is compatible with `NSDateFormatter` may be used.
 
