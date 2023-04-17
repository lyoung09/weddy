import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weddynew/provider/boolean_provider.dart';
import 'package:weddynew/screen/home/category/list/bloc/vendor_list_bloc.dart';
import 'package:weddynew/screen/home/category/list/bloc/vendor_list_event.dart';

import 'bloc/vendor_list_state.dart';

class VendorListAppbar extends StatefulWidget {
  final int index;

  final VendorListState state;
  final BuildContext blocContext;
  const VendorListAppbar(
      {super.key,
      required this.state,
      required this.blocContext,
      required this.index});

  @override
  _VendorListAppbarState createState() => _VendorListAppbarState();
}

int toggle = 0;

class _VendorListAppbarState extends State<VendorListAppbar>
    with SingleTickerProviderStateMixin {
  late AnimationController _con;
  final TextEditingController _textEditingController = TextEditingController();
  String text = '';
  FocusNode focusnode = FocusNode();

  @override
  void initState() {
    super.initState();

    text = _textEditingController.text;
    _con = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 375),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100.0,
        width: (widget.state.toggle == 0)
            ? 48.0
            : MediaQuery.of(context).size.width * 0.8,
        alignment: const Alignment(1.0, 0.0),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 375),
          height: 48.0,
          width: (widget.state.toggle == 0)
              ? 48.0
              : MediaQuery.of(context).size.width * 0.8,
          curve: Curves.easeOut,
          decoration: (widget.state.toggle == 1)
              ? BoxDecoration(
                  color: Colors.white,
                  //borderRadius: BorderRadius.circular(30.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      spreadRadius: -10.0,
                      blurRadius: 10.0,
                      offset: Offset(0.0, 10.0),
                    ),
                  ],
                )
              : null,
          child: Stack(
            children: [
              AnimatedPositioned(
                duration: const Duration(milliseconds: 375),
                right: (widget.state.toggle == 0) ? 20.0 : 40.0,
                curve: Curves.easeOut,
                top: 5.0,
                child: AnimatedOpacity(
                  opacity: (widget.state.toggle == 0) ? 0.0 : 1.0,
                  duration: const Duration(milliseconds: 200),
                  child: SizedBox(
                    height: 48.0,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: TextFormField(
                      controller: _textEditingController,

                      focusNode: focusnode,
                      //cursorRadius: const Radius.circular(10.0),
                      autofocus: widget.state.toggle == 0 ? false : true,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        hintText: 'Search...',
                        hintStyle: const TextStyle(
                          color: Color(0xff5B5B5B),
                          fontSize: 17.0,
                          fontWeight: FontWeight.w500,
                        ),
                        suffixIcon: text.isNotEmpty
                            ? IconButton(
                                onPressed: () {
                                  text = '';
                                  _textEditingController.text = '';
                                  setState(() {});
                                },
                                icon: const Icon(Icons.close))
                            : null,
                        alignLabelWithHint: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      onChanged: (value) {
                        text = value;
                        // _textEditingController.text = text;
                        setState(() {});
                      },
                      textInputAction: TextInputAction.search,
                      onFieldSubmitted: (value) {
                        _textEditingController.text = value;
                        context.read<VendorListBloc>().add(
                            SearchVendorListEvent(
                                vendorServiceCode: widget.index,
                                searchText: _textEditingController.text));
                      },
                    ),
                  ),
                ),
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 375),
                right: 7,
                top: 4,
                child: IconButton(
                  splashRadius: 19.0,
                  icon: const Icon(
                    Icons.search,
                    size: 24.0,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    final bloc = widget.blocContext.read<VendorListBloc>();

                    bloc.state.toggle == 0
                        ? widget.blocContext.read<VendorListBloc>().add(
                            ToggleEvent(
                                vendorServiceCode: widget.index, toggle: 1))
                        : widget.blocContext.read<VendorListBloc>().add(
                            ToggleEvent(
                                vendorServiceCode: widget.index, toggle: 0));

                    if (text.isEmpty) {
                      // widget.blocContext.read<VendorListBloc>().add(
                      //     ToggleEvent(
                      //         vendorServiceCode: widget.index,
                      //         toggle: toggle));
                      //   widget.blocContext.read<VendorListBloc>().add(
                      //         InitVendorListEvent(
                      //           vendorServiceCode: widget.index,
                      //         ),
                      //       );
                    } else {
                      // widget.blocContext.read<VendorListBloc>().add(
                      //     ToggleEvent(
                      //         vendorServiceCode: widget.index,
                      //         toggle: toggle));
                      widget.blocContext.read<VendorListBloc>().add(
                            SearchVendorListEvent(
                                vendorServiceCode: widget.index,
                                searchText: text),
                          );
                    }
                    _con.reverse();
                    focusnode.unfocus();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
