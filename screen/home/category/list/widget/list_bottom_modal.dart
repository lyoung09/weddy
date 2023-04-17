import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../resources/Colors.dart';
import '../../../../../resources/Images.dart';
import '../../../../../resources/Text.dart';
import '../bloc/vendor_list_bloc.dart';
import '../bloc/vendor_list_event.dart';
import '../bloc/vendor_list_state.dart';

class ListBottomModal extends StatefulWidget {
  final int index;
  final int code;
  const ListBottomModal({super.key, required this.index, required this.code});

  @override
  State<ListBottomModal> createState() => _ListBottomModalState();
}

class _ListBottomModalState extends State<ListBottomModal> {
  late int index;

  @override
  void initState() {
    index = widget.index;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VendorListBloc, VendorListState>(
        builder: (context, state) {
      return Container(
        height: MediaQuery.of(context).size.height * 0.4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              '필터',
              style: TextItems.title3.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: ColorItems.spaceCadet),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18, bottom: 10),
              child: Images.getIcon('Divider.png'),
            ),
            Container(
              padding: const EdgeInsets.only(left: 18.0, right: 18),
              alignment: Alignment.centerLeft,
              child: Text('정렬',
                  style: TextItems.title8.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: ColorItems.spaceCadet)),
            ),
            ListTile(
              title: Text('전체보기',
                  style: index == 0
                      ? TextItems.title8.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: ColorItems.spaceCadet)
                      : TextItems.title5.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: ColorItems.spaceCadet)),
              trailing:
                  index == 0 ? Images.getIcon('Icon_filter_check.png') : null,
              onTap: () {
                setState(() => index = 0);
                context.read<VendorListBloc>().add(FilterNumEvent(
                    vendorServiceCode: widget.code, filternum: index));
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('좋아요 많은 순',
                  style: index == 1
                      ? TextItems.title8.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: ColorItems.spaceCadet)
                      : TextItems.title5.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: ColorItems.spaceCadet)),
              trailing:
                  index == 1 ? Images.getIcon('Icon_filter_check.png') : null,
              onTap: () {
                setState(() => index = 1);
                context.read<VendorListBloc>().add(FilterNumEvent(
                    vendorServiceCode: widget.code, filternum: index));
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('가나다순',
                  style: index == 2
                      ? TextItems.title8.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: ColorItems.spaceCadet)
                      : TextItems.title5.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: ColorItems.spaceCadet)),
              trailing:
                  index == 2 ? Images.getIcon('Icon_filter_check.png') : null,
              onTap: () {
                setState(() => index = 2);
                context.read<VendorListBloc>().add(FilterNumEvent(
                    vendorServiceCode: widget.code, filternum: index));
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
    });
  }
}
