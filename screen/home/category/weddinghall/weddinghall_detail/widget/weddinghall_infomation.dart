import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../apis/biz/app_biz.pb.dart';
import '../../../../../../resources/Colors.dart';
import '../../../../../../resources/Images.dart';
import '../../../../../../resources/Text.dart';
import '../../../../../../utils/custom_string.dart';
import '../../../../../../utils/horizontal_swiper.dart';
import '../bloc/weddinghall_bloc.dart';
import '../bloc/weddinghall_event.dart';
import '../bloc/weddinghall_state.dart';

class InfomationWidget extends StatefulWidget {
  final BuildContext bloccontext;
  final WeddingHallDetailState blocstate;
  final int id;
  const InfomationWidget({
    super.key,
    required this.bloccontext,
    required this.blocstate,
    required this.id,
  });

  @override
  State<InfomationWidget> createState() => _InfomationWidgetState();
}

class _InfomationWidgetState extends State<InfomationWidget> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  final controller2 = CarouselController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    currentIndex = 1;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: scrapContainer(context),
        ),
        const SizedBox(
          height: 25,
        ),
        hallDetail(widget.blocstate, widget.bloccontext),
      ],
    );
  }

  Widget hallDetail(WeddingHallDetailState state, BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children:
          state.weddingHallInfo.map((e) => itemWidget(e, context)).toList(),
    );
  }

  Widget itemWidget(WeddinghallHall e, BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        smoothPage(e.hallImageUrl),
        const SizedBox(
          height: 11,
        ),
        nameWidget(e, context),
        const SizedBox(
          height: 32,
        ),
        tagBlue(e.tags),
        const SizedBox(
          height: 20,
        ),
        possiblePerson(e.minCapacity.toInt(), e.maxCapacity.toInt()),
        const SizedBox(
          height: 16,
        ),
        rental(e.price.toInt()),
        const SizedBox(
          height: 20,
        ),
        intro(e.comments),
        const SizedBox(
          height: 12,
        )
      ],
    );
  }

  int? currentIndex;
  Widget smoothPage(List<String> images) {
    return images.isEmpty
        ? Container(
            width: MediaQuery.of(context).size.width,
            height: 262,
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Center(child: Images.getIcon('Graph_preparingPicture.png')),
          )
        : Column(
            children: [
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, HorizontalSwiper.routeName,
                          arguments:
                              HorizontalSwiper(images: images, name: 'shop'));
                    },
                    child: CarouselSlider.builder(
                        carouselController: controller2,
                        itemCount: images.length,
                        itemBuilder: (context, index, realIndex) {
                          final image = images[index];
                          return Padding(
                            padding:
                                const EdgeInsets.only(left: 24.0, right: 24),
                            child: ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(18)),
                                child: Image.network(
                                  image,
                                  width: MediaQuery.of(context).size.width,
                                  fit: BoxFit.cover,
                                )),
                          );
                        },
                        options: CarouselOptions(
                          onPageChanged: (index, reason) {
                            setState(() {
                              currentIndex = index;
                            });
                          },
                          viewportFraction: 1,
                          height: 262,
                          enlargeCenterPage: true,
                          initialPage: 0,
                          reverse: false,
                          autoPlay: false,
                        )),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 18,
                    child: DotsIndicator(
                      dotsCount: images.length > 5 ? 5 : images.length,
                      position: currentIndex!.toDouble(),
                      decorator: DotsDecorator(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          activeColor: ColorItems.primary,
                          color: ColorItems.platinumRose,
                          activeShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          activeSize: const Size(10, 10)),
                    ),
                  ),
                ],
              ),
            ],
          );
  }

  Widget nameWidget(WeddinghallHall e, BuildContext bloccontext) {
    return Container(
      alignment: Alignment.center,
      height: 46,
      width: MediaQuery.of(context).size.width * .88,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 30,
          ),
          Expanded(
            flex: 7,
            child: Text(
              e.name,
              maxLines: 2,
              style: TextItems.title4.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: ColorItems.spaceCadet),
            ),
          ),
          const Spacer(),
          widget.bloccontext
                      .read<WeddingHallDetailBloc>()
                      .state
                      .isScrap
                      .isNotEmpty &&
                  widget.bloccontext
                      .read<WeddingHallDetailBloc>()
                      .state
                      .isScrap
                      .map((ele) => ele.vendorItem.itemId)
                      .contains(e.hallId)
              ? ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(90, 30),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24)),
                    backgroundColor: ColorItems.spaceCadet,
                  ),
                  onPressed: () {},
                  child: Container(
                    width: 60,
                    height: 26,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: const BoxDecoration(
                        color: ColorItems.spaceCadet,
                        borderRadius: BorderRadius.all(Radius.circular(18))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('스크랩',
                            style: TextItems.title7.copyWith(
                                color: ColorItems.white, fontSize: 12)),
                        const SizedBox(
                          width: 3,
                        ),
                        Images.getIcon('Check.png')
                      ],
                    ),
                  ),
                )
              : ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(80, 30),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24)),
                    backgroundColor: ColorItems.primary,
                    primary: Colors.lightBlue,
                    onPrimary: Colors.white, // <-- Splash color
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder:
                            (context) => //_showDialog(BuildContext bloccontext, int min, int max) {
                                //return
                                BlocProvider.value(
                                  value: BlocProvider.of<WeddingHallDetailBloc>(
                                      bloccontext),
                                  child: WeddingHallModal(
                                      mealPrice: widget.blocstate.mealPrice,
                                      max: e.maxCapacity.toInt(),
                                      min: e.minCapacity.toInt(),
                                      bloccontext: bloccontext,
                                      vendorProfileId: widget.id,
                                      weddingHallModel: e),
                                )
                        //},
                        );
                  },
                  child: Text(
                    "스크랩",
                    style: TextItems.title7.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  )),
          const SizedBox(
            width: 24,
          ),
        ],
      ),
    );
  }

  Widget tagBlue(List<String> tags) {
    return Padding(
      padding: const EdgeInsets.only(left: 32.0, right: 32),
      child: Wrap(
        children: tags
            .map((e) => Text(
                  '#$e',
                  style: TextItems.body4.copyWith(
                      color: ColorItems.carolinaBlue,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ))
            .toList(),
      ),
    );
  }

  Widget possiblePerson(int min, int max) {
    return Container(
      height: 46,
      padding: const EdgeInsets.only(left: 32.0, right: 32),
      child: Column(
        children: [
          SizedBox(
            height: 20,
            child: Row(
              children: [
                Text("보증인원",
                    style: TextItems.heading4.copyWith(
                        color: ColorItems.spaceCadet,
                        fontSize: 14,
                        fontWeight: FontWeight.w700)),
                const SizedBox(
                  width: 12,
                ),
                Text('최소 인원 ${min.toString()}명',
                    style: TextItems.body2.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: ColorItems.spaceCadet))
              ],
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          SizedBox(
            height: 20,
            child: Row(
              children: [
                Text(
                  "보증인원",
                  style: TextItems.heading4.copyWith(
                      color: Colors.transparent,
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  width: 12,
                ),
                Text('최대 인원 ${max.toString()}명',
                    style: TextItems.body2.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: ColorItems.spaceCadet))
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget rental(int rentalFee) {
    return Container(
      padding: const EdgeInsets.only(left: 32, right: 32),
      height: 20,
      child: Row(
        children: [
          Text("대관료",
              style: TextItems.heading4.copyWith(
                  color: ColorItems.spaceCadet,
                  fontSize: 14,
                  fontWeight: FontWeight.w700)),
          const SizedBox(
            width: 12,
          ),
          Text('${CustomString().pirceToString(rentalFee)}',
              style: TextItems.body2.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: ColorItems.spaceCadet))
        ],
      ),
    );
  }

  Widget intro(String comment) {
    return Padding(
      padding: const EdgeInsets.only(left: 32.0, right: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '예식홀 소개',
            style: TextItems.heading4.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: ColorItems.spaceCadet),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            comment.length > 250 ? comment.substring(0, 250) : comment,
            style: TextItems.body2.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: ColorItems.spaceCadet),
          )
        ],
      ),
    );
  }

  Widget scrapContainer(context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * .8,
      height: 130,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(18)),
          color: ColorItems.cultured),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Images.getIcon('Ellipse_Vector.png',
                      width: 12, height: 12),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                    child: Wrap(
                  children: [
                    Text('희망하는 예식홀을 ',
                        textScaleFactor: 1.1,
                        style: TextItems.body2.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: ColorItems.spaceCadet)),
                    Text('스크랩',
                        textScaleFactor: 1.1,
                        style: TextItems.body2.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: ColorItems.carolinaBlue)),
                    Text('해주세요.',
                        textScaleFactor: 1.1,
                        style: TextItems.body2.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: ColorItems.spaceCadet)),
                  ],
                )),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Images.getIcon('Ellipse_Vector.png',
                      width: 12, height: 12),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                    child: Wrap(
                  children: [
                    Text('스크랩 > 견적 확인하기 >  ',
                        textScaleFactor: 1.1,
                        style: TextItems.body2.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: ColorItems.spaceCadet)),
                    Text('문의하기',
                        textScaleFactor: 1.1,
                        style: TextItems.heading4.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: ColorItems.spaceCadet)),
                    Text('를 통해 예식 가능 일자와 전체 견적가를 확인할 수 있어요.',
                        textScaleFactor: 1.1,
                        style: TextItems.body2.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: ColorItems.spaceCadet)),
                  ],
                )),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
          ]),
    );
  }
}

class WeddingHallModal extends StatefulWidget {
  final int mealPrice;
  final int max;
  final int vendorProfileId;
  final int min;
  final BuildContext bloccontext;
  final WeddinghallHall weddingHallModel;
  const WeddingHallModal(
      {super.key,
      required this.max,
      required this.mealPrice,
      required this.vendorProfileId,
      required this.min,
      required this.weddingHallModel,
      required this.bloccontext});

  @override
  State<WeddingHallModal> createState() => _WeddingHallModalState();
}

class _WeddingHallModalState extends State<WeddingHallModal> {
  final _capacityController = TextEditingController();
  String? errorText;
  String? num;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(18.0))),
      content: Form(
        key: _formKey,
        child: Container(
          height: 244,
          width: MediaQuery.of(context).size.width * .75,
          alignment: Alignment.center,
          child: Column(children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.only(right: 12),
                  child: Images.getIcon('Icon_cross.png')),
            ),
            const SizedBox(
              height: 5,
            ),
            Text('보증인원 입력',
                style: TextItems.heading3.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: ColorItems.spaceCadet)),
            Container(
              height: 70,
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.6,
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _capacityController,
                      textAlign: TextAlign.end,
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: ColorItems.secondarySpanishGray),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: ColorItems.secondarySpanishGray),
                        ),
                        errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: ColorItems.secondarySpanishGray),
                        ),
                        disabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: ColorItems.secondarySpanishGray),
                        ),

                        errorStyle: TextStyle(
                            color: ColorItems.secondarySpanishGray,
                            fontSize: 12),
                        //errorText: errorText
                      ),
                      keyboardType: TextInputType.number,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return '숫자를 적어주세요';
                        } else if (int.parse(value) >= widget.min &&
                            widget.max >= int.parse(value)) {
                          setState(() {
                            _capacityController.text = value;
                          });
                          return null;
                        }

                        return '${widget.min}에서 ${widget.max} 사이를 입력해주세요';
                      },
                    ),
                  ),
                  Text('명',
                      style: TextItems.heading4.copyWith(
                          color: ColorItems.secondarySpanishGray,
                          fontSize: 14,
                          fontWeight: FontWeight.w700))
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text('견적 예상을 위해 보증 인원수를 입력해주세요',
                style: TextItems.title5.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: ColorItems.spaceCadet)),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: () {
                  // if (int.parse(_capacityController.text) >= widget.min &&
                  //     widget.max >= int.parse(_capacityController.text)) {

                  if (_formKey.currentState!.validate()) {
                    int totalPrice = (int.parse(_capacityController.text) *
                            widget.mealPrice) +
                        widget.weddingHallModel.price.toInt();

                    VendorItem t = VendorItem(
                        itemId: widget.weddingHallModel.hallId,
                        price: widget.weddingHallModel.price);
                    widget.bloccontext.read<WeddingHallDetailBloc>().add(
                        IsScrapedWeddingDetailEvent(
                            amount: int.parse(_capacityController.text),
                            vendorProfileId: widget.vendorProfileId,
                            vendorItem: t,
                            totalPrice: totalPrice));

                    Navigator.pop(context);
                  }
                  //   debugPrint("hhh");
                  // }
                  else {}
                },
                child: Text('확인',
                    style: TextItems.heading4.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.white))),
          ]),
        ),
      ),
    );
  }
}
