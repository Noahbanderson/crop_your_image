part of crop_your_image;

/// Controller to control crop actions.
class CropController {
  late CropControllerDelegate _delegate;

  /// setter for [CropControllerDelegate]
  set delegate(CropControllerDelegate value) => _delegate = value;

  /// crop given image with current configuration
  void crop() => _delegate.onCrop();

  /// change fixed aspect ratio
  /// if [value] is null, cropping area can be moved without fixed aspect ratio.
  set aspectRatio(double? value) => _delegate.onChangeAspectRatio(value);
}

/// Delegate of actions from [CropController]
class CropControllerDelegate {
  /// callback that [CropController.crop] is called.
  late VoidCallback onCrop;

  /// callback that [CropController.aspectRatio] is set.
  late ValueChanged<double?> onChangeAspectRatio;
}
