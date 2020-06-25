func @_XamarinApp1.iOS.AppDelegate.FinishedLaunching$UIKit.UIApplication.Foundation.NSDictionary$(none, none) -> i1 loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.iOS\\AppDelegate.cs" :22 :8) {
^entry (%_app : none, %_options : none):
%0 = cbde.alloca none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.iOS\\AppDelegate.cs" :22 :47)
cbde.store %_app, %0 : memref<none> loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.iOS\\AppDelegate.cs" :22 :47)
%1 = cbde.alloca none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.iOS\\AppDelegate.cs" :22 :66)
cbde.store %_options, %1 : memref<none> loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.iOS\\AppDelegate.cs" :22 :66)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.iOS\\AppDelegate.cs" :24 :12) // global::Xamarin.Forms.Forms (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.iOS\\AppDelegate.cs" :24 :12) // global::Xamarin.Forms.Forms.Init() (InvocationExpression)
// Entity from another assembly: LoadApplication
%4 = cbde.unknown : none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.iOS\\AppDelegate.cs" :25 :28) // new App() (ObjectCreationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.iOS\\AppDelegate.cs" :25 :12) // LoadApplication(new App()) (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.iOS\\AppDelegate.cs" :27 :19) // base (BaseExpression)
%7 = cbde.unknown : none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.iOS\\AppDelegate.cs" :27 :42) // Not a variable of known type: app
%8 = cbde.unknown : none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.iOS\\AppDelegate.cs" :27 :47) // Not a variable of known type: options
%9 = cbde.unknown : i1 loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.iOS\\AppDelegate.cs" :27 :19) // base.FinishedLaunching(app, options) (InvocationExpression)
return %9 : i1 loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.iOS\\AppDelegate.cs" :27 :12)

^1: // ExitBlock
cbde.unreachable

}
