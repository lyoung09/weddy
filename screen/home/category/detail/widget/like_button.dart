import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../resources/Images.dart';
import '../../weddinghall/weddinghall_detail/bloc/weddinghall_bloc.dart';
import '../../weddinghall/weddinghall_detail/bloc/weddinghall_event.dart';
import '../../weddinghall/weddinghall_detail/bloc/weddinghall_state.dart';
import '../bloc/detail_bloc.dart';
import '../bloc/detail_event.dart';
import '../bloc/detail_state.dart';

class LikeButtonWidget extends StatefulWidget {
  const LikeButtonWidget({super.key, required this.isLiked});
  final bool isLiked;
  @override
  State<LikeButtonWidget> createState() => _LikeButtonWidgetState();
}

class _LikeButtonWidgetState extends State<LikeButtonWidget> {
  bool? isLiked;

  @override
  initState() {
    super.initState();
    isLiked = widget.isLiked;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VendorDetailBloc, VendorDetailState>(
        builder: (context, state) {
      return IconButton(
        icon: state.isLiked == true
            ? Images.getIcon(
                'Icon_vendors_like.png',
              )
            : Images.getIcon(
                'Icon_vendors_like_inactive.png',
              ),
        onPressed: () {
          setState(() {
            isLiked = !isLiked!;
            context.read<VendorDetailBloc>().add(IsLikedEvent(
                state.getVendorInfoResponse!.searchVendorProfile.id.toInt(),
                isLiked!));
          });
        },
      );
    });
  }
}

class LikeWeddingHallButtonWidget extends StatefulWidget {
  const LikeWeddingHallButtonWidget({super.key, required this.isLiked});
  final bool isLiked;
  @override
  State<LikeWeddingHallButtonWidget> createState() =>
      _LikeWeddingHallButtonWidgetState();
}

class _LikeWeddingHallButtonWidgetState
    extends State<LikeWeddingHallButtonWidget> {
  bool? isLiked;

  @override
  initState() {
    super.initState();
    isLiked = widget.isLiked;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeddingHallDetailBloc, WeddingHallDetailState>(
        builder: (context, state) {
      return IconButton(
        icon: state.isLiked == true
            ? Images.getIcon(
                'Icon_vendors_like.png',
              )
            : Images.getIcon(
                'Icon_vendors_like_inactive.png',
              ),
        onPressed: () {
          setState(() {
            isLiked = !isLiked!;
            context.read<WeddingHallDetailBloc>().add(IsLikedWeddingDetailEvent(
                  isLiked: isLiked!,
                  vendorProfileId: state
                      .weddinghallHallResponse!.searchVendorProfile.id
                      .toInt(),
                ));
          });
        },
      );
    });
  }
}
