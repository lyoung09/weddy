/*
 *
 * Weddy CONFIDENTIAL
 * _____________________________________________________________________
 *
 * [2021] - [2030] Weddy
 *  All Rights Reserved.
 *
 * NOTICE:  All information contained herein is, and remains
 * the property of Weddy and its suppliers,
 * if any.  The intellectual and technical concepts contained
 * herein are proprietary to Weddy and its suppliers and
 * may be covered by Korea and Foreign Patents,
 * patents in process, and are protected by trade secret or copyright law.
 * Dissemination of this information or reproduction of this material
 * is strictly forbidden unless prior written permission is obtained
 * from Weddy.
 */
const String appName = 'WeddyApp';
const String userUUID = 'userUUID';
const String errorOccured = 'Error occured, please try again later';
const int limitPage = 8;
const String appFontFamily = 'Pretendard';
const String fontFamilyRozhaOne = 'RozhaOne';

const List<String> icons = [
  '2_Shopping Cart',
  '4_Delivery Box',
  '5_Shopping List',
  '6_Coupon',
  '12_Wallet'
];

const Map<int, String> historyLabel = {
  0: '계약서 요청',
  1: '계약서 도착',
  2: '계약 완료',
  3: '잔금 결제 완료',
  4: '구매 완료',
  5: '서비스 완료',
  6: '구매 취소',
  7: '계약 취소 요청',
  8: '계약 취소',
  9: '방문 예약 요청',
  10: '방문 예약 확정',
  11: '방문 완료',
  12: '방문 예약 취소',
  13: '노쇼'
};

const Map<int, String> contractHistoryDescription = {
  0: '계약서를 요청했습니다.',
  1: '요청하신 계약서가 도착했습니다.',
  2: '계약금 결제를 완료했습니다.\n계약 체결이 정상적으로 완료되었습니다.',
  3: '잔금 결제를 완료했습니다.',
  5: '계약 이행이 완료되었습니다.',
  7: '계약 취소 요청',
  8: '계약 취소',
  9: '방문 예약을 요청했습니다.',
  10: '판매사에서 방문 예약을 확정했습니다.',
  11: '판매사 방문이 완료되었습니다.',
  12: '방문 예약이 취소되었습니다.',
  13: '예정일에 판매사 방문을 완료하지 않았습니다.'
};

const Map<int, String> purchaseHistoryDescription = {
  4: '결제를 완료했습니다.',
  5: '구매 상품에 대한 서비스 이용이 완료되었습니다.\n상품 배송이 완료되었습니다.',
  6: '구매 취소를 요청했습니다.\n판매사 확인 후 취소 절차가 진행됩니다.',
  9: '방문 예약을 요청했습니다.',
  10: '판매사에서 방문 예약을 확정했습니다.',
  11: '판매사 방문이 완료되었습니다.',
  12: '방문 예약이 취소되었습니다.',
  13: '예정일에 판매사 방문을 완료하지 않았습니다.'
};