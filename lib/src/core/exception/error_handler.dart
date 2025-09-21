import 'dart:async';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:moviesbox/src/core/exception/api_exception.dart';
import 'exception.dart';
import 'failure.dart';
import 'package:flutter/foundation.dart';

Future<Either<Failure, T>> handleErrors<T>(Future<T> Function() action) async {
  try {
    final result = await action();
    return Right(result);
  } on ServerException catch (e) {
    return Left(ServerFailure(e.message));
  } on SocketException {
    return const Left(ConnectionFailure('No internet available.'));
  } on ApiException catch (e) {
    return Left(ApiExceptionFailure(e.message));
  } on DioException catch (e) {
    final apiException = ApiException.fromError(e);
    return Left(ApiExceptionFailure(apiException.message));
  } on FirestoreFailure catch (e) {
    return Left(FirestoreFailure(e.message));
  } catch (e, stackTrace) {
    debugPrint('Unhandled exception: $e');
    debugPrintStack(stackTrace: stackTrace);
    return Left(ServerFailure(e.toString()));
  }
}
