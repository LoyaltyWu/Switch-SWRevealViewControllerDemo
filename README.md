# Switch-SWRevealViewControllerDemo
There're 2 sets of view controllers in the demo.They are both embed in navigation controller.
Here's a struct of them:
navi1->viewRed1->viewRed2
navi2->viewBlue1->viewBlue2

In the demo, I switch from viewRed2 to viewBlue2 by the function ```setFront```. Below are the steps:

1. set a status number in AppDelegate which is 0.
2. in the ```viewWillAppear```, check the status,    
  2.1 if it is still 0 then do nothing.   
  2.2 if it is 1, then ```performSegue``` to next viewController. (In my case, it's viewBlue2. Actually,you can use the same trick until you segue to your destination view controller. You can use it once, twice or even more.)
