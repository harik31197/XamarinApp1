func @_XamarinApp1.iOS.Application.Main$string$$$(none) -> () loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.iOS\\Main.cs" :12 :8) {
^entry (%_args : none):
%0 = cbde.alloca none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.iOS\\Main.cs" :12 :25)
cbde.store %_args, %0 : memref<none> loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.iOS\\Main.cs" :12 :25)
br ^0

^0: // SimpleBlock
// Entity from another assembly: UIApplication
%1 = cbde.unknown : none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.iOS\\Main.cs" :16 :31) // Not a variable of known type: args
%2 = cbde.unknown : none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.iOS\\Main.cs" :16 :37) // null (NullLiteralExpression)
%3 = cbde.unknown : none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.iOS\\Main.cs" :16 :43) // "AppDelegate" (StringLiteralExpression)
%4 = cbde.unknown : none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.iOS\\Main.cs" :16 :12) // UIApplication.Main(args, null, "AppDelegate") (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
