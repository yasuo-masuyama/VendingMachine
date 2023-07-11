## こだわりポイント
1. 一つのファイルに依存せずモジュールやクラスでファイルを分けたことです。
2. オブジェクト指向を意識してコードを書いたところです。
3. 購入者・管理者・終了で自動販売機を操作できることです。

## 自動販売機ワークについての質問

新谷さん<br>
1. 今回のコードの場合モジュールの使い方はこれで良いでしょうか。また、繰り返しの処理や買う処理などさらに分けた方が良いのでしょうか。

内堀さん<br>
1. クラスの分け方は、これで合っていましたでしょうか。
2. 継承を使った良い例がありますか。

内海さん<br>
1. インスタンス化はどこでするべきでしょうか。たとえば、人クラスの中で自動販売機をインスタンス化を行うべきなのか、それとも操作クラス内で人クラスと自動販売機クラスをインスタンス化を行うべきでしょうか。
2. メソッドをどこのクラスで定義すれば良いでしょうか。たとえば、buyメソッドを人クラスに定義する方が良いのか、それとも自動販売機クラスに定義するべきなのか教えていただけますでしょうか。

加藤さん<br>
1. 複数人で編集するときの問題（コンフリクトや可読性の低下）を解決するために、「定義ファイル内で外部ファイルを参照する事で定義ファイル自体を分割するやり方」があると聞きました。ここだと具体的にどこでどう分割するのが良いのでしょうか。
2. 再利用性の高い型を使う/作る場合、ここだとどういう型が使えるのでしょうか。

高篠さん<br>
1. privateに出来るメソッドはすべてprivateにするべきでしょうか。
2. メソッドの名前について、わかりやすい名前をつけようとすると長くなってしまう事がありますが、どのくらいまでなら許容範囲でしょうか。

神谷さん<br>
1. 同一の変数を呼びだす時の表記は統一すべきでしょうか、それとも用途で使い分けるべきでしょうか。（@drink[choose_drink][:price] 、 @drink.dig(choose_drink, :price)）
2. moduleの統一について、用途の違うモジュールはまとめない方が良いでしょうか、または分ける場合はどの程度のレベルで分けるべきでしょうか（under_lineモジュールはOperationクラスに書き込むべきでしょうか。）
3. ターミナルでの入力時にダブルクオーテーションをつけない文字列を、文字列やシンボルとして受け取る方法はありますか。又は、別方法で入力方法を制限する方法はありますか。（&& @drink.include?(choose_drink)）

野崎さん<br>
1. モジュールを使用する際の注意点や制約はありますか。モジュールの使用において気をつけるべきポイントや、モジュールを適切に活用するためのベストな方法はありますか。
2. モジュール間での情報の共有やデータの受け渡しを行う場合、どのような手法が一般的ですか。モジュール間でのデータ共有や通信を実現するための一般的な方法はありますか。

増山<br>
1. リファクタリングするならどこになりますか。（こう言う書き方は正しくない箇所があればご教示の程お願い致します。）
2. オブジェクト指向に則ってコードを書いたつもりですが、正しく書けていますでしょうか。
3. if文の書き方関して、状況によりけりだと思いますが使えるなら後置ifや三項演算子を使った方が良いのでしょうか。
4. 一つのクラスでインスタンス変数を使うのは2までが良いという記事を見ました。実際に2つ以上になる場合はクラス分けを検討しますか。
5. putsでターミナルで表示するのをなるべく、モジュールに入れてVending_MachineクラスにMix inをさせて表示を行いましたがモジュールの使用方法としては正しいですか？（オブジェクト指向目線での話になります。）
6. コメントアウトを残す場合の判断基準が定まっていない為、ご教示の程お願い致します。
7. メソッド名や変数名のコツはありますでしょうか。
8. 本気でソニックガーデンさんに入社を考えています。今やれることのアドバイスなどあればご教示の程お願い致します。



