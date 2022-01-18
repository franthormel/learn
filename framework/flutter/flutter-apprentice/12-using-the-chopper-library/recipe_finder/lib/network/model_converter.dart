import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'model_response.dart';
import 'recipe_model.dart';

class ModelConverter implements Converter {
  @override
  Request convertRequest(Request request) {
    final req = applyHeader(
      request,
      contentTypeKey,
      jsonHeaders,
      override: false,
    );

    return encodeJson(req);
  }

  @override
  Response<BodyType> convertResponse<BodyType, InnerType>(Response response) {
    return decodeJson<BodyType, InnerType>(response);
  }

  /// Takes a [Request] instance and returns an encoded copy of it.
  Request encodeJson(Request request) {
    final contentType = request.headers[contentTypeKey];

    if (contentType != null && contentType.contains(jsonHeaders)) {
      return request.copyWith(
        body: json.encode(request.body),
      );
    }

    return request;
  }

  /// Checks if response is JSON
  /// Returns an [Error] if [response] has a status field or
  /// an unexpected response.
  /// Returns a [Success]ful response using [APIRecipeQuery] otherwise
  Response<BodyType> decodeJson<BodyType, InnerType>(Response response) {
    final contentType = response.headers[contentTypeKey];
    var body = response.body;

    if (contentType != null && contentType.contains(jsonHeaders)) {
      body = utf8.decode(response.bodyBytes);
    }

    try {
      final mapData = json.decode(body);

      if (mapData['status'] != null) {
        return response.copyWith<BodyType>(
          body: Error(Exception(mapData['status'])) as BodyType,
        );
      }

      final recipeQuery = APIRecipeQuery.fromJson(mapData);

      return response.copyWith<BodyType>(
        body: Success(recipeQuery) as BodyType,
      );
    } catch (e) {
      chopperLogger.warning(e);
      return response.copyWith<BodyType>(
        body: Error(e as Exception) as BodyType,
      );
    }
  }
}
