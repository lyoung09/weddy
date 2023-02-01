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

import 'package:flutter/material.dart';
import 'package:weddy_ceres/common/service_category_enum.dart';

class ImageFactory {
  Image categoryImageIcon({required ServiceCategory categoryCode}) {
    String prefix = 'assets/icons/';
    String suffix = '.png';

    String assetImageName;

    switch (categoryCode) {
      case ServiceCategory.weddingHall:
        assetImageName = 'building';
        break;
      case ServiceCategory.bouquet:
        assetImageName = '96_Product Image';
        break;
      case ServiceCategory.businessBuffet:
        assetImageName = '96_Product Image';
        break;
      case ServiceCategory.dress:
        assetImageName = '96_Product Image';
        break;
      case ServiceCategory.hanbok:
        assetImageName = '96_Product Image';
        break;
      case ServiceCategory.makeup:
        assetImageName = '96_Product Image';
        break;
      case ServiceCategory.music:
        assetImageName = '96_Product Image';
        break;
      case ServiceCategory.presenter:
        assetImageName = '96_Product Image';
        break;
      case ServiceCategory.robes:
        assetImageName = '96_Product Image';
        break;
      case ServiceCategory.snap:
        assetImageName = '96_Product Image';
        break;
      case ServiceCategory.studio:
        assetImageName = '96_Product Image';
        break;
      case ServiceCategory.video:
        assetImageName = '96_Product Image';
        break;
      case ServiceCategory.weddingCar:
        assetImageName = '96_Product Image';
        break;
      default:
        assetImageName = '96_Product Image';
    }

    return Image(
        width: 32,
        height: 32,
        image: AssetImage(prefix + assetImageName + suffix));
  }
}
