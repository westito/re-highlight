import 'package:re_highlight/re_highlight.dart';

ModeCallback callbackOnBegin =
    (EnhancedMatch match, ModeCallbackResponse response) {
  if (match.index == 0) {
    return;
  }

  final int codeUnit = match.input.codeUnitAt(match.index - 1);
  if (codeUnit >= 48 && codeUnit <= 57) {
    return;
  }
  if (codeUnit == 95) {
    return;
  }

  response.ignoreMatch();
};
