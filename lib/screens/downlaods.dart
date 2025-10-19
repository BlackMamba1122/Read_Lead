// import 'dart:io';
// import 'dart:math';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart' show rootBundle;
// import 'package:path_provider/path_provider.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:open_filex/open_filex.dart';
// import 'package:media_scanner/media_scanner.dart';
//
// show flutterLocalNotificationsPlugin, _downloadChannel;
//
// /// Ask for modern storage permission and return a system-ish Downloads dir.
// /// Falls back to app external dir if needed.
// Future<Directory?> _getDownloadsDirWithPermission(BuildContext context) async {
//   // Notifications (Android 13+) — request if not granted
//   if (Platform.isAndroid) {
//     final notif = await Permission.notification.request();
//     // Even if denied, we can still proceed; just no notification.
//   }
//
//   if (Platform.isAndroid) {
//     // Android 11+ prefers MANAGE_EXTERNAL_STORAGE for true shared access
//     var status = await Permission.manageExternalStorage.request();
//     if (!status.isGranted) {
//       // Older devices / fallback
//       status = await Permission.storage.request();
//       if (!status.isGranted) return null;
//     }
//
//     // Try the public Downloads directory
//     try {
//       final dirs = await getExternalStorageDirectories(type: StorageDirectory.downloads);
//       if (dirs != null && dirs.isNotEmpty) return dirs.first;
//     } catch (_) {}
//     // Fallback to app-specific external dir
//     return await getExternalStorageDirectory();
//   } else if (Platform.isIOS || Platform.isMacOS) {
//     return await getApplicationDocumentsDirectory();
//   } else {
//     return await getDownloadsDirectory();
//   }
// }
//
// /// Show/update a progress notification (0..100).
// Future<void> _showProgress(String id, String title, int progress) async {
//   final nId = id.hashCode & 0x7fffffff;
//   final androidDetails = AndroidNotificationDetails(
//     _downloadChannel.id,
//     _downloadChannel.name,
//     channelDescription: _downloadChannel.description,
//     importance: Importance.high,
//     priority: Priority.high,
//     onlyAlertOnce: true,
//     showProgress: true,
//     maxProgress: 100,
//     progress: progress.clamp(0, 100),
//     category: AndroidNotificationCategory.progress,
//     ongoing: progress < 100,
//     playSound: false,
//   );
//   await flutterLocalNotificationsPlugin.show(
//     nId,
//     title,
//     progress < 100 ? 'Downloading... $progress%' : 'Finishing…',
//     NotificationDetails(android: androidDetails),
//   );
// }
//
// /// Final completion notification with tap-to-open.
// Future<void> _showCompleted(String id, String title, File file) async {
//   final nId = id.hashCode & 0x7fffffff;
//   final androidDetails = AndroidNotificationDetails(
//     _downloadChannel.id,
//     _downloadChannel.name,
//     channelDescription: _downloadChannel.description,
//     importance: Importance.high,
//     priority: Priority.high,
//   );
//   await flutterLocalNotificationsPlugin.show(
//     nId,
//     '$title — Downloaded',
//     file.path,
//     NotificationDetails(android: androidDetails),
//     payload: file.path, // we’ll handle payload tap in your main init if you want
//   );
// }
//
// /// Copy an asset PDF into Downloads with a “Chrome-like” notification.
// Future<bool> saveAssetPdfWithNotification(
//     BuildContext context, {
//       required String assetPath,
//       required String suggestedFileName,
//       String notificationTitle = 'Downloading report',
//     }) async {
//   try {
//     final dir = await _getDownloadsDirWithPermission(context);
//     if (dir == null) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Storage permission denied.')),
//       );
//       return false;
//     }
//
//     // Read asset bytes
//     final data = await rootBundle.load(assetPath);
//     final total = data.lengthInBytes;
//     final bytes = data.buffer.asUint8List();
//
//     // Prepare output file
//     final safeName = suggestedFileName.replaceAll(RegExp(r'[^\w\-.]'), '_');
//     final out = File('${dir.path}/$safeName');
//
//     // Write in chunks with progress notifications
//     const chunk = 64 * 1024; // 64KB
//     int written = 0;
//     final sink = out.openWrite();
//     String nId = 'dl_${DateTime.now().millisecondsSinceEpoch}_${Random().nextInt(99999)}';
//
//     for (int i = 0; i < bytes.length; i += chunk) {
//       final end = (i + chunk < bytes.length) ? i + chunk : bytes.length;
//       sink.add(bytes.sublist(i, end));
//       written = end;
//       final p = ((written / max(1, total)) * 100).floor();
//       await _showProgress(nId, notificationTitle, p);
//       // Yield to UI
//       await Future<void>.delayed(const Duration(milliseconds: 8));
//     }
//     await sink.flush();
//     await sink.close();
//
//     // Make it visible in file managers (MediaScanner)
//     if (Platform.isAndroid) {
//       await MediaScanner.loadMedia(path: out.path);
//     }
//
//     // Completed notification
//     await _showCompleted(nId, notificationTitle, out);
//
//     // Optional: quick toast/snackbar
//     // ignore: use_build_context_synchronously
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text('Saved to: ${out.path}')),
//     );
//
//     return true;
//   } catch (e) {
//     // ignore: use_build_context_synchronously
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text('Download failed: $e')),
//     );
//     return false;
//   }
// }
