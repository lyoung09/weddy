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
enum ServiceCategory {
  weddingHall(1100), // 웨딩홀
  studio(1200), // 스튜디오 사진
  snap(1201), // 스냅 사진
  video(1202), // 영상
  makeup(1300), // 헤어, 메이크업
  dress(1400), // 드레스
  robes(1401), // 남성 예복
  hanbok(1402), // 한복
  bouquet(1500), // 부케
  weddingCar(1600), // 웨딩카
  weddingCard(1700), // 청첩장
  music(1000), // 연주
  presenter(1901), // 사회자
  businessBuffet(2000),
  none(9999);

  const ServiceCategory(this.code);

  final int code;

  String get displayName {
    switch (this) {
      case ServiceCategory.weddingHall:
        return '웨딩홀';
      case ServiceCategory.studio:
        return '스튜디오';
      case ServiceCategory.snap:
        return '스냅사진';
      case ServiceCategory.video:
        return '영상';
      case ServiceCategory.makeup:
        return '헤어/메이크업';
      case ServiceCategory.dress:
        return '드레스';
      case ServiceCategory.robes:
        return '남성예복';
      case ServiceCategory.hanbok:
        return '한복';
      case ServiceCategory.bouquet:
        return '부케';
      case ServiceCategory.weddingCar:
        return '웨딩카';
      case ServiceCategory.weddingCard:
        return '청첩장';
      case ServiceCategory.music:
        return '연주';
      case ServiceCategory.presenter:
        return '사회자';
      case ServiceCategory.businessBuffet:
        return '출장뷔페';
      default:
        return '';
    }
  }
}
