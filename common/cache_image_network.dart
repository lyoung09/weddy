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
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

CachedNetworkImage buildCacheNetworkImage(
    {double? width, double? height, url, plColor, imageColor}) {
  if (width == 0 && height == 0) {
    return CachedNetworkImage(
      placeholder: (context, url) {
        return Container(
          color: plColor ?? Colors.grey[200],
        );
      },
      errorWidget: (context, url, error) {
        return Container(
          color: Colors.grey[200],
        );
      },
      imageUrl: url,
      fit: BoxFit.cover,
      color: imageColor,
    );
  } else if (height == 0) {
    return CachedNetworkImage(
      placeholder: (context, url) {
        return Container(
          width: width,
          color: plColor ?? Colors.grey[200],
        );
      },
      errorWidget: (context, url, error) {
        return Container(
          width: width,
          color: Colors.grey[200],
        );
      },
      imageUrl: url,
      fit: BoxFit.cover,
      width: width,
      color: imageColor,
    );
  } else {
    return CachedNetworkImage(
      placeholder: (context, url) {
        return const SizedBox.shrink();
      },
      errorWidget: (context, url, error) {
        return const SizedBox.shrink();
      },
      imageUrl: url,
      fit: BoxFit.cover,
      width: width,
      height: height,
      color: imageColor,
    );
  }
}
