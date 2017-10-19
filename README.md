# Custom-Tabbar-Cetner-Button

## Intention
This is a simple project intended to show how to implement a task that iOS developers sometimes face with. This is a tabbar with a big custom button on it's center. A part of the button is out of tabbar view but it still handles touches thanks to a custom class `MainMenuTabbar`.
The main idea is to create a custom class for `UITabBar` and override `func point(inside point: CGPoint, with _: UIEvent?) -> Bool` method. `centerButton` is a simple `UIButton` placed in the storyboard out of `MainViewController` root view.

## Do it in your project
1. Create `UITabBarController` in your storyboard.
2. Create a custom class inherited from `UITabBarController` and name it say `MainViewController`.
3. Set tab bar controller's class in the storyboard `MainViewController`.
4. Create a `UIButton` in the storyboard and place it in your `UITabBarController` out of root view.
5. Add an image in your project and set it to the button created in the previous point.
6. Pull outlet from the storyboard to `MainViewController` class and name it say `centerButton`.
7. Add a method
```fileprivate func setupCenterButton() {
tabBar.addSubview(centerButton)
centerButton.translatesAutoresizingMaskIntoConstraints = false
centerButton.centerYAnchor.constraint(equalTo: tabBar.topAnchor).isActive = true
centerButton.centerXAnchor.constraint(equalTo: tabBar.centerXAnchor).isActive = true

let customTabbar = tabBar as! MainMenuTabbar
customTabbar.centerButton = centerButton
}
```
8. Call the method created in the previous point in `viewDidLoad`.
9. Create a new class inherited from `UITabBar` and name it say `MainMenuTabbar`.
10. Put the code to the class created in the previous point
```
var centerButton: UIButton?

override func point(inside point: CGPoint, with _: UIEvent?) -> Bool {
if let centerButton = centerButton {
if centerButton.frame.contains(point) {
return true
}
}

return self.bounds.contains(point)
}
```
11. Enjoy, now you have tab bar with a custom button on the center of it. The button is completely tappable.
