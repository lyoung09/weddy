import 'package:weddynew/apis/weddinghall/weddinghall_model.dart';

class WeddinghallList {
  static List<WeddinghallModel> getWeddinghall() {
    List<WeddinghallModel> weddingList = [];

    weddingList.add(WeddinghallModel(
        weddinghallItemcode: 1,
        image:
            'assets/weddinghallService/WeddingHall_icon_flower_decoration.png'));
    weddingList.add(WeddinghallModel(
        weddinghallItemcode: 2,
        image: 'assets/weddinghallService/WeddingHall_icon_mealTable.png'));
    weddingList.add(WeddinghallModel(
        weddinghallItemcode: 3,
        image: 'assets/weddinghallService/WeddingHall_icon_drinks.png'));
    weddingList.add(WeddinghallModel(
        weddinghallItemcode: 4,
        image:
            'assets/weddinghallService/WeddingHall_icon_return_present.png'));
    weddingList.add(WeddinghallModel(
        weddinghallItemcode: 5,
        image: 'assets/weddinghallService/WeddingHall_icon_mealTable.png'));
    weddingList.add(WeddinghallModel(
        weddinghallItemcode: 6,
        image: 'assets/weddinghallService/WeddingHall_icon_host.png'));
    weddingList.add(WeddinghallModel(
        weddinghallItemcode: 7,
        image: 'assets/weddinghallService/WeddingHall_icon_performance.png'));
    weddingList.add(WeddinghallModel(
        weddinghallItemcode: 8,
        image: 'assets/weddinghallService/WeddingHall_icon_party_popper.png'));
    weddingList.add(WeddinghallModel(
        weddinghallItemcode: 9,
        image: 'assets/weddinghallService/WeddingHall_icon_parking.png'));

    return weddingList;
  }

  static List<WeddinghallMinorModel> getWeddinghallExtar() {
    List<WeddinghallMinorModel> weddingList = [];

    weddingList.add(WeddinghallMinorModel(
        weddinghallAdditionItemCode: 1,
        image: 'assets/weddinghallService/Icon_sound_equipment.png'));

    weddingList.add(WeddinghallMinorModel(
        weddinghallAdditionItemCode: 2,
        image: 'assets/weddinghallService/Icon_vendors_video.png'));

    return weddingList;
  }
}
