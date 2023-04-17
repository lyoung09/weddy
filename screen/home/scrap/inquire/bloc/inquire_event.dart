// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class InquiryEvent extends Equatable {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class InitInquiryEvent extends InquiryEvent {}

class CancelInquiryItemEvent extends InquiryEvent {
  int id;
  CancelInquiryItemEvent({
    required this.id,
  });
}
