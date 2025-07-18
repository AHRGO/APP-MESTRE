// import 'dart:async';

// import 'package:flutter/material.dart';

// class ToastExample {
//   static Timer? toastTimer;
//   static late OverlayEntry _overlayEntry;

//   static void showSuccessToast(BuildContext context, String mensagem, {int durationInSeconds = 5}) {
//     showCustomToast(context, mensagem, ToastType.success, durationInSeconds: durationInSeconds);
//   }

//   static void showErrorToast(BuildContext context, String mensagem, {int durationInSeconds = 5}) {
//     showCustomToast(context, mensagem, ToastType.error, durationInSeconds: durationInSeconds);
//   }

//   static void showWarningToast(BuildContext context, String mensagem, {int durationInSeconds = 5}) {
//     showCustomToast(context, mensagem, ToastType.warning, durationInSeconds: durationInSeconds);
//   }

//   static void showInfoToast(BuildContext context, String mensagem, {int durationInSeconds = 5}) {
//     showCustomToast(context, mensagem, ToastType.info, durationInSeconds: durationInSeconds);
//   }

//   static void showCustomToast(BuildContext context, String mensagem, ToastType type, {int durationInSeconds = 5}) {
//     if (toastTimer == null || !toastTimer!.isActive) {
//       _overlayEntry = _createOverlayEntry(context, mensagem, type, durationInSeconds);
//       Overlay.of(context).insert(_overlayEntry);
//       toastTimer = Timer(Duration(seconds: durationInSeconds), () {
//         _overlayEntry.remove();
//       });
//     } else {
//       toastTimer!.cancel();
//       _overlayEntry.remove();
//       _overlayEntry = _createOverlayEntry(context, mensagem, type, durationInSeconds);
//       Overlay.of(context).insert(_overlayEntry);
//       toastTimer = Timer(Duration(seconds: durationInSeconds), () {
//         _overlayEntry.remove();
//       });
//     }
//   }

//   static OverlayEntry _createOverlayEntry(BuildContext context, String message, ToastType type, int duration) {
//     return OverlayEntry(
//       builder: (context) => Positioned(
//         bottom: 50.0,
//         right: 50,
//         child: SlideInToastMessageAnimation(
//           Material(
//             elevation: 10.0,
//             borderRadius: BorderRadius.circular(10),
//             child: ToastWidget(message: message, type: type),
//           ),
//           durationInSeconds: duration,
//         ),
//       ),
//     );
//   }
// }

// enum ToastType { error, success, warning, info }

// class ToastWidget extends StatelessWidget {
//   final String message;
//   final ToastType type;

//   const ToastWidget({
//     super.key,
//     required this.message,
//     required this.type,
//   });

//   Color getColor(BuildContext context) {
//     ToastColorsExtensions toastColors = Theme.of(context).extension<ToastColorsExtensions>()!;
//     switch (type) {
//       case ToastType.error:
//         return toastColors.errorColor;
//       case ToastType.success:
//         return toastColors.successColor;
//       case ToastType.warning:
//         return toastColors.warningColor;
//       case ToastType.info:
//         return toastColors.infoColor;
//     }
//   }

//   IconData getIcon() {
//     switch (type) {
//       case ToastType.error:
//         return Icons.cancel;
//       case ToastType.success:
//         return Icons.check_circle;
//       case ToastType.warning:
//         return Icons.warning;
//       case ToastType.info:
//         return Icons.info;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     ToastColorsExtensions toastColors = Theme.of(context).extension<ToastColorsExtensions>()!;
//     return Container(
//       width: 400,
//       padding: const EdgeInsets.only(left: 10, right: 10, top: 13, bottom: 10),
//       decoration: BoxDecoration(
//         color: getColor(context),
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Align(
//         alignment: Alignment.center,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Icon(
//               getIcon(),
//               size: 50,
//               color: toastColors.textColor,
//             ),
//             const SizedBox(width: 20),
//             Flexible(
//               child: Text(
//                 message,
//                 textAlign: TextAlign.start,
//                 softWrap: true,
//                 overflow: TextOverflow.clip,
//                 style: TextStyle(
//                   fontSize: 18,
//                   color: toastColors.textColor,
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
