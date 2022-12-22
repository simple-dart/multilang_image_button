import 'package:simple_dart_image_button/simple_dart_image_button.dart';
import 'package:simple_dart_multilang_controller/simple_dart_multilang_controller.dart';

class MultilangImageButton extends ImageButton {
  String _tooltipLangKey = '';

  set tooltipLangKey(String value) {
    _tooltipLangKey = value;
    reRender();
  }

  String get tooltipLangKey => _tooltipLangKey;

  @override
  void reRender() {
    if (tooltipLangKey.isNotEmpty) {
      tooltip = multilangController.translate(_tooltipLangKey);
    }
  }
}
