class SelectionItem {
  SelectionItem(
      {required this.name, this.isRequired=true, required this.list});
  String name;
  bool isRequired;
  List<SelectionListItem> list;
}

class SelectionListItem {
  SelectionListItem({required this.name,this.price,this.isExtra=false});
  String name;
  double? price;
  bool isExtra;
}
