class NavigationModel {
  String? unselectedPath;
  String? selectedPath;
  String? text;

  NavigationModel({this.unselectedPath, this.text, String? selectedPath})
    : selectedPath = selectedPath ?? unselectedPath {
    assert(
      unselectedPath != null || text != null,
      "Icon or IconPath must be set",
    );
  }
}
