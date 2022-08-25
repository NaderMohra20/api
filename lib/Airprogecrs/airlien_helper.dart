import 'package:dio/dio.dart';
import 'package:e_commerc_api/models/passenger_model.dart';

class AillinesDioHelper {
  AillinesDioHelper._();
  static AillinesDioHelper aillinesDioHelper = AillinesDioHelper._();
  Dio dio = Dio();
  Future<PassengerRespons> getPassenger([int page = 0]) async {
    Response response =
        await dio.get("https://api.instantwebtools.net/v2/passenger",
            queryParameters: {"size": 10, "page": page},
            options: Options(headers: {
              "Authorization":
                  "Bearer eyJraWQiOiItSE5TUmtwMWdXcG9QcC1wWVBmU1U4UW1fdng4Q0VwdzRSdTZTQU9WLThRIiwiYWxnIjoiUlMyNTYifQ.eyJ2ZXIiOjEsImp0aSI6IkFULmVUM0ZTU0VLZEw3c3JUNEpMMnlUWkM2UlRpb3c0YW5ib25RZE8xajNvYTgub2Fydjg3NGp2S0JYZHdTSEM0eDYiLCJpc3MiOiJodHRwczovL2Rldi00NTc5MzEub2t0YS5jb20vb2F1dGgyL2F1c2hkNGM5NVF0RkhzZld0NHg2IiwiYXVkIjoiYXBpIiwiaWF0IjoxNjYxMzQxMjUzLCJleHAiOjE2NjEzNDQ4NTMsImNpZCI6IjBvYWhkaGprdXRhR2NJSzJNNHg2IiwidWlkIjoiMDB1aGVuaDFwVkRNZzJ1ZXg0eDYiLCJzY3AiOlsib2ZmbGluZV9hY2Nlc3MiXSwiYXV0aF90aW1lIjoxNjYxMzQxMjUzLCJzdWIiOiJhcGktdXNlcjRAaXd0Lm5ldCJ9.OK27VGz7OriYPvNS4TyUhXCgTxP2JEpypZncl0bz3T2yOT7_TKzFZPNumrsGhmIHGVgWxX7vPzWuu832w8zTYn1_iCpyZc9gVo9YlwVSG4_hj1PBsiO0UfiPniOPbiZDd4p3ZXDVl_sLBBN4L94JnZ3fPvztJVYMa6IIJbZ8slzkU6dp1WrZqhfcTMbWoIHR40pBYmjSVb20c5OpgX-sNACbB8AVIpYVkTzzvpeAsffqhBw77ggvk8cxE3znpG3cQmQEuJ8A_g73-M0CjJl9npiHxn-CA7BMbVFYFc0wzBuCfEeZ0wO44G1cyMkDqZGc_6tZImqUe_8nu-PBLKrcaQ"
            }));

    PassengerRespons passengerRespons =
        PassengerRespons.fromJson(response.data);
    return passengerRespons;
  }
}
