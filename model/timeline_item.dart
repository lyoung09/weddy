class TimelineItem {
  int itemId;
  String title;
  String desc;
  String assetIconName;
  bool isMandatory;
  bool checked;

  TimelineItem({
    required this.itemId,
    required this.title,
    required this.desc,
    required this.checked,
    required this.assetIconName,
    required this.isMandatory,
  });
}
