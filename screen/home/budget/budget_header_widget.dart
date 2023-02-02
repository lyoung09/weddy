import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../base/base_stateless_widget.dart';
import '../../../provider/generic_provider.dart';
import 'bloc/budget_bloc.dart';
import 'bloc/budget_event.dart';


class BudgetHeaderWidget extends BaseStatelessWidget {
   BudgetHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<BudgetBloc>();
    final budgetPriceProvider = bloc.budgetPriceProvider;
    final totalAmountProvider = bloc.totalAmountProvider;
    final progressProvider = bloc.progressProvider;

    return widgetFactory.createHeaderCard(
        context,
        widget: GenericProvider.createWidget<int>(
          provider: budgetPriceProvider,
          (state) {
              if (state.value == null || state.value == 0) {
                return widgetFactory.createProgressIndicator();
              } else {
                return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          createMyBudgetWidget(state.value!),
                          createPredictBudgetWidget(totalAmountProvider, budgetPriceProvider),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  createProgressbarWidget(progressProvider),
                  const SizedBox(height: 4),
                  createSliderWidget(context, progressProvider),
                ]);
              }
            }
        )
    );
  }

  Widget createMyBudgetWidget(int budget) {
    return Row(mainAxisSize: MainAxisSize.min, children: [
      const AutoSizeText('나의 예산'),
      const SizedBox(
        width: 10,
      ),
      AnimatedFlipCounter(
          duration: const Duration(milliseconds: 500),
          value: budget / 10000,
          fractionDigits: 0, // decimal precision
          suffix: ' 만원',
          textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.lightBlueAccent)),
    ]);
  }

  Widget createPredictBudgetWidget(GenericProvider<int> totalAmountProvider, GenericProvider<int> budgetPriceProvider) {
    return GenericProvider.createWidget<int>(
        provider: totalAmountProvider,
        (state) {
          return Row(mainAxisSize: MainAxisSize.min, children: [
            const AutoSizeText('견적 금액'),
            const SizedBox(
              width: 10,
            ),
            AnimatedFlipCounter(
              duration: const Duration(milliseconds: 500),
              value: state.value! / 10000,
              fractionDigits: 0, // decimal precision
              suffix: ' 만원',
              textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: state.value! > budgetPriceProvider.value!
                      ? Colors.redAccent
                      : Colors.green),
            ),
            Icon(
              state.value! > budgetPriceProvider.value!
                  ? Icons.arrow_drop_up
                  : Icons.arrow_drop_down,
              size: 32,
              color: state.value! > budgetPriceProvider.value!
                  ? Colors.redAccent
                  : const Color(0xFF005666),
            ),
            AutoSizeText('${getBudgetDiffValue(state.value, budgetPriceProvider.value)}%',
                style: TextStyle(
                    color: state.value! > budgetPriceProvider.value!
                        ? Colors.redAccent
                        : const Color(0xFF005666))),
          ]);
        }
    );
  }

  String getBudgetDiffValue(totalAmount, budget) {
    int calcValue = (100 * totalAmount) ~/ budget;
    if (calcValue >= 100) {
      return (calcValue - 100).toString().padLeft(3, ' ');
    }

    return (100 - calcValue).toString().padLeft(3, ' ');
  }

  Widget createProgressbarWidget(GenericProvider<double> progressProvider) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [AutoSizeText('아래 바를 움직여서 확인하세요')]),
        const SizedBox(height: 6),
        GenericProvider.createWidget<double>(
            provider: progressProvider,
            (state) {
              return AnimatedFlipCounter(
                duration: const Duration(milliseconds: 500),
                value: state.value!,
                fractionDigits: 1, // decimal precision
                suffix: '%',
                textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: state.value! > 50 ? Colors.redAccent : Colors.green),
              );
            }),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                  child: AutoSizeText(
                    '최소 가격',
                  ),
                )),
            Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
                  child: AutoSizeText(
                    '최대 가격',
                  ),
                )),
          ],
        ),
      ],
    );
  }

  Widget createSliderWidget(BuildContext context, GenericProvider<double> progressProvider) {
    return GenericProvider.createWidget<double>(
        provider: progressProvider,
        (state) {
          return Slider(
            min: 0.0,
            max: 100.0,
            value: state.value!,
            onChangeEnd: (value) {
              addBlocEvent<BudgetBloc>(context, UpdateBudgetProgressEvent(value));
            },
            onChanged: (value) {
              state.setValue(value);
            },
          );
        });
  }

}