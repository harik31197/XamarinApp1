
using FFImageLoading.Forms;
using Plugin.Media;
using Plugin.Media.Abstractions;
using Plugin.Permissions;
using Plugin.Permissions.Abstractions;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;


namespace XamarinApp1
{
  // Learn more about making custom code visible in the Xamarin.Forms previewer
  // by visiting https://aka.ms/xamarinforms-previewer
  [DesignTimeVisible(false)]
  [XamlCompilation(XamlCompilationOptions.Compile)]
  public partial class MainPage : ContentPage
  {
    ObservableCollection<MediaFile> files = new ObservableCollection<MediaFile>();

    public MainPage()
    {
      InitializeComponent();
    
      files.CollectionChanged += Files_CollectionChanged;
      Camera.Clicked += async (sender, args) =>
      {
        await CrossMedia.Current.Initialize();
        files.Clear();
        if (!CrossMedia.Current.IsCameraAvailable || !CrossMedia.Current.IsTakePhotoSupported)
        {
          await DisplayAlert("Camera not supported", "Unable to take picture", "OK");
          return;
        }
        try
        {
          var cameraStatus = await CrossPermissions.Current.CheckPermissionStatusAsync(Permission.Camera);
          var storageStatus = await CrossPermissions.Current.CheckPermissionStatusAsync(Permission.Storage);

          if (cameraStatus != PermissionStatus.Granted || storageStatus != PermissionStatus.Granted)
          {
            var results = await CrossPermissions.Current.RequestPermissionsAsync(new[] { Permission.Camera, Permission.Storage });
            cameraStatus = results[Permission.Camera];
            storageStatus = results[Permission.Storage];
          }
          if (cameraStatus == PermissionStatus.Granted && storageStatus == PermissionStatus.Granted)
          {
            var file = await CrossMedia.Current.TakePhotoAsync(new StoreCameraMediaOptions
            {
              Directory = "SampleApp",              
              SaveToAlbum = true,
              PhotoSize = PhotoSize.Small
            });

            if (file == null)
              return;
            files.Add(file);
            //var albumpath = file.AlbumPath;
            //var ppath = file.Path;
          }
          else
          {
            await DisplayAlert("Permissions Denied", storageStatus.ToString(), "OK");

            CrossPermissions.Current.OpenAppSettings();
          }

        }
        catch (Exception error)
        {
          await DisplayAlert("Alert!", error.ToString(), "OK");
          throw error;
        }
      };


      Pick.Clicked += async (sender, args) =>
      {

        await CrossMedia.Current.Initialize();
        files.Clear();
        if (!CrossMedia.Current.IsPickPhotoSupported)
        {
          await DisplayAlert("Photos Not Supported", ":( Permission not granted to pick photos.", "OK");
          return;
        }
        var file = await CrossMedia.Current.PickPhotoAsync(new PickMediaOptions
        {
          
          PhotoSize = PhotoSize.Small,
          CompressionQuality = 96,
          CustomPhotoSize = 80         
        });
        if (file == null)
          return;    
        
        files.Add(file);
        
      };



    }

   /* private async void Camera_Clicked(object sender, EventArgs e)
    {
      await CrossMedia.Current.Initialize();
      if (!CrossMedia.Current.IsCameraAvailable || !CrossMedia.Current.IsTakePhotoSupported)
      {

        await DisplayAlert("Camera not supported", "Unable to take picture", "OK");
        return;
      }

      try
      {
        var cameraStatus = await CrossPermissions.Current.CheckPermissionStatusAsync(Permission.Camera);
        var storageStatus = await CrossPermissions.Current.CheckPermissionStatusAsync(Permission.Storage);

        if (cameraStatus != PermissionStatus.Granted || storageStatus != PermissionStatus.Granted)
        {
          var results = await CrossPermissions.Current.RequestPermissionsAsync(new[] { Permission.Camera, Permission.Storage });
          cameraStatus = results[Permission.Camera];
          storageStatus = results[Permission.Storage];
        }
        if (cameraStatus == PermissionStatus.Granted && storageStatus == PermissionStatus.Granted)
        {
          var file = await CrossMedia.Current.TakePhotoAsync(new StoreCameraMediaOptions
          {
            SaveToAlbum = true,
            PhotoSize = PhotoSize.Small
          });

          if (file == null)
            return;
          ImagePath.Text = file.AlbumPath;
          MainImage.Source = ImageSource.FromStream(() =>
          {
            var stream = file.GetStream();
            // file.Dispose();
            return stream;
          });
        }
        else
        {
          await DisplayAlert("Permissions Denied", storageStatus.ToString(), "OK");

          CrossPermissions.Current.OpenAppSettings();
        }

      }
      catch (Exception error)
      {
        await DisplayAlert("Alert!", error.ToString(), "OK");
        throw error;
      }*/

      private void Files_CollectionChanged(object sender, System.Collections.Specialized.NotifyCollectionChangedEventArgs e)
      {
        if (files.Count == 0)
        {
          ImageList.Children.Clear();
          return;
        }
        if (e.NewItems.Count == 0)
          return;

        var file = e.NewItems[0] as MediaFile;
        var image = new Image { WidthRequest = 300, HeightRequest = 300, Aspect = Aspect.AspectFit };
        image.Source = ImageSource.FromFile(file.Path);
        image.Source = ImageSource.FromStream(() =>
        {
          var stream = file.GetStream();
          return stream;
        });
        ImageList.Children.Add(image);

        /*var image2 = new CachedImage { WidthRequest = 300, HeightRequest = 300, Aspect = Aspect.AspectFit };
        image2.Source = ImageSource.FromFile(file.Path);
        ImageList.Children.Add(image2);*/
      }
     
    }
  }

  

