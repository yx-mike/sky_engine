// Copyright 2021 The WD Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.


// @dart = 2.12
part of dart.ui;

class WDExtApi {
  // This class is only a namespace, and should not be instantiated or
  // extended directly.
  factory WDExtApi._() => throw UnsupportedError('Namespace');

  /// 查询app的dart层相关内存数据.
  /// 暂时只支持iOS
  static String queryMainIsolateMemory() {
    return _queryMainIsolateMemory();
  }

  /// 查询app的dart层相关内存数据，包括系统的.
  /// 暂时只支持iOS
  static String queryAllIsolateMemory() {
    return _queryAllIsolateMemory();
  }

  static String _queryMainIsolateMemory() native 'WDEXTAPI_SQueryMainIsolateMemory';
  static String _queryAllIsolateMemory() native 'WDEXTAPI_SQueryAllIsolateMemory';
}
