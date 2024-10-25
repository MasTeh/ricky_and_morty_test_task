import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import '../../../../core/utils/log_error.dart';
import 'package:flutter/material.dart';

abstract class DioClient {
  const DioClient({required this.dio});

  static const _delay = Duration(milliseconds: 500);
  static const _maxTryCount = 9;
  static final _options = Options(
    validateStatus: (_) => true,
    receiveDataWhenStatusError: true,
  );
  static final _connectivity = Connectivity();

  @protected
  final Dio dio;

  Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  });

  Future<Response> post(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  });

  Future<Response> put(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  });

  @protected
  Future<Response> delete(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  });

  @protected
  Future<Response> getBase(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    int tryCount = 0;

    while (true) {
      try {
        return await dio.get(
          path,
          queryParameters: queryParameters,
          options: options != null
              ? options.copyWith(
                  validateStatus: _options.validateStatus,
                  receiveDataWhenStatusError: _options.receiveDataWhenStatusError,
                )
              : _options,
        );
      } catch (e, s) {
        final connectivityResult = await _connectivity.checkConnectivity();
        if (connectivityResult != ConnectivityResult.none) {
          logError(e, s, name: 'DIO');

          tryCount = tryCount + 1;

          if (tryCount == _maxTryCount) {
            rethrow;
          }
        }

        await Future.delayed(_delay);
      }
    }
  }

  @protected
  Future<Response> postBase(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    int tryCount = 0;

    while (true) {
      try {
        return await dio.post(
          path,
          data: data,
          queryParameters: queryParameters,
          options: options != null
              ? options.copyWith(
                  validateStatus: _options.validateStatus,
                  receiveDataWhenStatusError: _options.receiveDataWhenStatusError,
                )
              : _options,
        );
      } catch (e, s) {
        final connectivityResult = await _connectivity.checkConnectivity();
        if (connectivityResult != ConnectivityResult.none) {
          logError(e, s, name: 'DIO');
          tryCount = tryCount + 1;

          if (tryCount == _maxTryCount) {
            rethrow;
          }
        }

        await Future.delayed(_delay);
      }
    }
  }

  @protected
  Future<Response> putBase(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    int tryCount = 0;

    while (true) {
      try {
        return await dio.put(
          path,
          data: data,
          queryParameters: queryParameters,
          options: options != null
              ? options.copyWith(
                  validateStatus: _options.validateStatus,
                  receiveDataWhenStatusError: _options.receiveDataWhenStatusError,
                )
              : _options,
        );
      } catch (e, s) {
        final connectivityResult = await _connectivity.checkConnectivity();
        if (connectivityResult != ConnectivityResult.none) {
          logError(e, s, name: 'DIO');

          tryCount = tryCount + 1;

          if (tryCount == _maxTryCount) {
            rethrow;
          }
        }

        await Future.delayed(_delay);
      }
    }
  }

  @protected
  Future<Response> deleteBase(
    String path, {
    Map<String, dynamic>? queryParameters,
    Object? data,
    Options? options,
  }) async {
    int tryCount = 0;

    while (true) {
      try {
        return await dio.delete(
          path,
          data: data,
          queryParameters: queryParameters,
          options: options != null
              ? options.copyWith(
                  validateStatus: _options.validateStatus,
                  receiveDataWhenStatusError: _options.receiveDataWhenStatusError,
                )
              : _options,
        );
      } catch (e, s) {
        final connectivityResult = await _connectivity.checkConnectivity();
        if (connectivityResult != ConnectivityResult.none) {
          logError(e, s, name: 'DIO');

          tryCount = tryCount + 1;

          if (tryCount == _maxTryCount) {
            rethrow;
          }
        }

        await Future.delayed(_delay);
      }
    }
  }
}
