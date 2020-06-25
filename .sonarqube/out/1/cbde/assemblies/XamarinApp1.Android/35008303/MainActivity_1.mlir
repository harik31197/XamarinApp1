func @_XamarinApp1.Droid.MainActivity.OnCreate$Android.OS.Bundle$(none) -> () loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :15 :8) {
^entry (%_savedInstanceState : none):
%0 = cbde.alloca none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :15 :41)
cbde.store %_savedInstanceState, %0 : memref<none> loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :15 :41)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resource
%1 = cbde.unknown : none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :17 :32) // Resource.Layout (SimpleMemberAccessExpression)
%2 = cbde.unknown : i32 loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :17 :32) // Resource.Layout.Tabbar (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Resource
%3 = cbde.unknown : none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :18 :30) // Resource.Layout (SimpleMemberAccessExpression)
%4 = cbde.unknown : i32 loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :18 :30) // Resource.Layout.Toolbar (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :20 :12) // base (BaseExpression)
%6 = cbde.unknown : none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :20 :26) // Not a variable of known type: savedInstanceState
%7 = cbde.unknown : none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :20 :12) // base.OnCreate(savedInstanceState) (InvocationExpression)
// Entity from another assembly: Xamarin
%8 = cbde.unknown : none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :22 :12) // Xamarin.Essentials.Platform (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :22 :45) // this (ThisExpression)
%10 = cbde.unknown : none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :22 :51) // Not a variable of known type: savedInstanceState
%11 = cbde.unknown : none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :22 :12) // Xamarin.Essentials.Platform.Init(this, savedInstanceState) (InvocationExpression)
%12 = cbde.unknown : none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :23 :12) // global::Xamarin.Forms.Forms (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :23 :45) // this (ThisExpression)
%14 = cbde.unknown : none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :23 :51) // Not a variable of known type: savedInstanceState
%15 = cbde.unknown : none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :23 :12) // global::Xamarin.Forms.Forms.Init(this, savedInstanceState) (InvocationExpression)
// Entity from another assembly: LoadApplication
%16 = cbde.unknown : none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :24 :28) // new App() (ObjectCreationExpression)
%17 = cbde.unknown : none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :24 :12) // LoadApplication(new App()) (InvocationExpression)
// Entity from another assembly: CrossMedia
%18 = cbde.unknown : none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :25 :12) // CrossMedia.Current (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :25 :12) // CrossMedia.Current.Initialize() (InvocationExpression)
// Entity from another assembly: FFImageLoading
%20 = cbde.unknown : none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :26 :6) // FFImageLoading.Forms.Platform.CachedImageRenderer (SimpleMemberAccessExpression)
%21 = constant 1 : i1 loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :26 :81) // true
%22 = cbde.unknown : none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :26 :6) // FFImageLoading.Forms.Platform.CachedImageRenderer.Init(enableFastRenderer: true) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_XamarinApp1.Droid.MainActivity.OnRequestPermissionsResult$int.string$$.Android.Content.PM.Permission$$$(i32, none, none) -> () loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :28 :8) {
^entry (%_requestCode : i32, %_permissions : none, %_grantResults : none):
%0 = cbde.alloca i32 loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :28 :56)
cbde.store %_requestCode, %0 : memref<i32> loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :28 :56)
%1 = cbde.alloca none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :28 :73)
cbde.store %_permissions, %1 : memref<none> loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :28 :73)
%2 = cbde.alloca none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :28 :95)
cbde.store %_grantResults, %2 : memref<none> loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :28 :95)
br ^0

^0: // SimpleBlock
// Entity from another assembly: Xamarin
%3 = cbde.unknown : none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :30 :12) // Xamarin.Essentials.Platform (SimpleMemberAccessExpression)
%4 = cbde.load %0 : memref<i32> loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :30 :67)
%5 = cbde.unknown : none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :30 :80) // Not a variable of known type: permissions
%6 = cbde.unknown : none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :30 :93) // Not a variable of known type: grantResults
%7 = cbde.unknown : none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :30 :12) // Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults) (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :32 :12) // base (BaseExpression)
%9 = cbde.load %0 : memref<i32> loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :32 :44)
%10 = cbde.unknown : none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :32 :57) // Not a variable of known type: permissions
%11 = cbde.unknown : none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :32 :70) // Not a variable of known type: grantResults
%12 = cbde.unknown : none loc("C:\\Users\\harikrishnan.a\\source\\repos\\XamarinApp1\\XamarinApp1\\XamarinApp1.Android\\MainActivity.cs" :32 :12) // base.OnRequestPermissionsResult(requestCode, permissions, grantResults) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
