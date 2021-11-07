# LessonLogging

2021/11/6~11/7にかけて行われた、ベネッセのハッカソンで開発したコードです。  
言語はDartを、フレームワークとしてはFlutterを用いました。  
開発ツールとしては、Android StudioやIntelli Jを用いました。  

## 概要
板書だけは授業の内容が理解しきれない中学生向けのサービスです。  
授業中に大事な先生の言葉を聞き逃すことがないようにサポートすることを目的としています。  
学生の手元のアプリケーションでは、授業中に先生が話したことがリアルタイムに記録されており常に確認可能になっています。  
録音の開始や中断のタイミングは生徒の手に委ねられており、録音が中断されるとその時点での黒板のスナップショットも提示され、  
この黒板と発話の記録から大事な情報を漏れなく得ることができるだろうと考えています。  

## 実際の画面の様子
<img width="250" height  alt="image1" src="https://user-images.githubusercontent.com/74057052/140633945-bad15b7e-ccd3-4b3d-ae6a-1e46e9dc1a83.png">  <img width="250" alt="image2" src="https://user-images.githubusercontent.com/74057052/140633948-5c56bd5a-3320-4e70-a532-bd066e0e78ae.png">  <img width="250" alt="image3" src="https://user-images.githubusercontent.com/74057052/140633950-2c6d23e4-82aa-44fa-86f3-7ab5fa791e9a.png">

### 今回実装できなかった機能
1. 音声認識で自動的にテキストを取得してくれる
2. 非同期処理を用いて、録音を停止したらその時点の黒板のスナップショットを取得する
