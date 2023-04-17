import 'package:flutter/material.dart';
import 'package:weddynew/apis/category/category_model.dart';
import 'package:weddynew/screen/home/category/list/bloc/vendor_list_state.dart';

import '../../../../../apis/biz/app_biz.pb.dart';
import '../vendor_list_item.dart';

class PagnationWidget extends StatefulWidget {
  final VendorListState state;
  final CategoryModel vendorCategory;
  final BuildContext context;
  const PagnationWidget(
      {Key? key,
      required this.state,
      required this.vendorCategory,
      required this.context})
      : super(key: key);

  @override
  _PagnationWidgetState createState() => _PagnationWidgetState();
}

class _PagnationWidgetState extends State<PagnationWidget> {
  final ScrollController _controller = ScrollController();

  bool _isLoading = false;

  late List<SearchVendorProfile> _dummy;

  @override
  void initState() {
    // _dummy = List.generate(6, (index) => widget.state.searchVendorProfileList.);
    _controller.addListener(_onScroll);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  _onScroll() {
    if (_controller.offset >= _controller.position.maxScrollExtent &&
        !_controller.position.outOfRange) {
      setState(() {
        _isLoading = true;
      });
      _fetchData();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: _controller,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: _isLoading
          ? widget.state.searchVendorProfileList.length + 1
          : widget.state.searchVendorProfileList.length,
      //itemCount: _isLoading ? _dummy.length + 1 : _dummy.length,
      itemBuilder: (context, index) {
        if (_dummy.length == index)
          return const Center(child: CircularProgressIndicator());
        return VendorListItem(
            vendorCategory: widget.vendorCategory,
            searchVendorProfile: widget.state.searchVendorProfileList[index],
            blocContext: widget.context);
      },
    );
  }

  Future _fetchData() async {
    await new Future.delayed(new Duration(seconds: 2));
    int lastIndex = _dummy.length;

    setState(() {
      // _dummy
      //     .addAll(List.generate(6, (index) => "New Item ${lastIndex + index}"));
      _isLoading = false;
    });
  }
}
