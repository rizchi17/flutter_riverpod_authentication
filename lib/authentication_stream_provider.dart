import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'authentication_stream_provider.g.dart';

@riverpod
Stream<User?> authenticationStreamProvider(Ref ref) {
  // 次の場合にイベントが発生する
  // - リスナーの登録直後
  // - ユーザーがログインしたとき
  // - 現在のユーザーがログアウトしたとき
  return FirebaseAuth.instance.authStateChanges();
}
