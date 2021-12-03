// Copyright 2021 The WD Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.


// @dart = 2.12
part of dart.ui;


class WDExtApi {
  
  // This class is only a namespace, and should not be instantiated or
  // extended directly.
  factory WDExtApi._() => throw UnsupportedError('Namespace');

  /// 
  static String queryMainIsolateMemory() {
    return _queryMainIsolateMemory();
  }

  /// 
  static String queryAllIsolateMemory() {
    return _queryAllIsolateMemory();
  }

  //
  static String _queryMainIsolateMemory() native 'WDEXTAPI_SQueryMainIsolateMemory';

  //
  static String _queryAllIsolateMemory() native 'WDEXTAPI_SQueryAllIsolateMemory';
}