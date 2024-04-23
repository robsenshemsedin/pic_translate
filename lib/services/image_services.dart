import 'package:image_picker/image_picker.dart';
import 'package:pic_translate/main.dart';
import 'package:pic_translate/models/models.dart';
import 'package:pic_translate/services/services.dart';

class ImageService {
  final ImagePicker _picker = ImagePicker();

  Future<Item?> takeImage(Function callbackAction) async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      callbackAction();
      appData.imageData = await image.readAsBytes();
      return await GeminiServices.getItem();
    }
    return null;
  }
}
