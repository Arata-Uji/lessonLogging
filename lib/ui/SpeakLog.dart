// import 'package:flutter/material.dart';
// import 'package:speech_to_text/speech_recognition_error.dart';
// import 'package:speech_to_text/speech_recognition_result.dart';
// import 'package:speech_to_text/speech_to_text.dart' as stt;
// //
// //



// //以下音声認識のコード
import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_recognition_error.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;




class SpeakLog  {
  String lastWords = "";
  String lastError = '';
  String lastStatus = '';
  stt.SpeechToText speech = stt.SpeechToText();

  Future<void> _speak() async {
    bool available = await speech.initialize(
        onError: errorListener, onStatus: statusListener);
    if (available) {
      speech.listen(onResult: resultListener);
    } else {
      print("The user has denied the use of speech recognition.");
    }
  }

  Future<void> _stop() async {
    speech.stop();
  }

  void resultListener(SpeechRecognitionResult result) {

      lastWords = '${result.recognizedWords}';

  }

  void errorListener(SpeechRecognitionError error) {

      lastError = '${error.errorMsg} - ${error.permanent}';

  }

  void statusListener(String status) {

      lastStatus = '$status';

  }

  String Voicerecord(){
    _speak();
    _stop();
    return lastStatus;
  }
}
