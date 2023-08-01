import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_info.g.dart';

@riverpod
Future<PackageInfo> _getPackageInfo(_GetPackageInfoRef ref) {
  return PackageInfo.fromPlatform();
}

@riverpod
Future<String> getAppVersion(GetAppVersionRef ref) async {
  final packageInfo = await ref.watch(_getPackageInfoProvider.future);
  return packageInfo.version;
}
