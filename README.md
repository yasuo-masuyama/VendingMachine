## こだわりポイント
1. 一つのファイルに依存せずモジュールやクラスでファイルを分けたこと
2. オブジェクト指向を意識してコードを書いたところ
3. 購入者・管理者・終了で自動販売機を操作できること

## 自動販売機ワークについての質問

新谷さん<br>
1.　今回のコードの場合モジュールの使い方はこれでよいのか。繰り返しの処理、買う処理などさらに分けた方が良いのか。

内堀さん<br>
1.　クラスの分け方は、これで合っていたのか
<br>
2.　継承を使った良い例があるのか

内海さん<br>
1.　インスタンス化はどこでするべきか？たとえば、人クラスの中で自動販売機をインスタンス化するか、それとも操作クラス内で人クラスと自動販売機クラスをインスタンス化するか
<br>
2.　メソッドをどこのクラスで定義すればよいか？たとえば、buyメソッドを人クラスに定義するか、自動販売機クラスに定義するか

加藤さん<br>
1.　複数人で編集するときの問題（コンフリクトや可読性の低下）を解決するために、「定義ファイル内で外部ファイルを参照する事で定義ファイル自体を分割するやり方」があると聞きました。ここだと具体的にどこでどう分割するのが良いのでしょうか。
<br>
2.　再利用性の高い型を使う/作る場合、ここだとどういう型が使えるのでしょうか。

高篠さん<br>
1.　privateに出来るメゾットはすべてprivateにするべきなのか
<br>
2.　メソッドの名前について、わかりやすい名前をつけようとすると長くなってしまう事があるが、どのくらいまでなら許容範囲なのか

神谷さん<br>
1.　同一の変数を呼びだす時の表記は統一すべきか、それとも用途で使い分けるべきか？（@drink[choose_drink][:price] 、 @drink.dig(choose_drink, :price)）
<br>
2.　moduleの統一について、用途の違うモジュールはまとめない方がよいか？又、分ける場合はどの程度のレベルで分けるか？（under_lineモジュールはOperationクラスに書き込むべきか？）
<br>
3.　ターミナルでの入力時にダブルクオーテーションをつけない文字列を、文字列やシンボルとして受け取る方法はあるか？又は、別方法で入力方法を制限する方法はあるか？（&& @drink.include?(choose_drink)）

野崎さん<br>
1.　モジュールを使用する際の注意点や制約はありますか？モジュールの使用において気をつけるべきポイントや、モジュールを適切に活用するためのベストな方法は？
<br>
2.　モジュール間での情報の共有やデータの受け渡しを行う場合、どのような手法が一般的ですか？モジュール間でのデータ共有や通信を実現するための一般的な方法は？

増山<br>
1.　リファクタリングするならどこになりますか？（ダメなところがあれば教えていだだきたいです）
<br>
2.　オブジェクト指向に則って考えてコードを書いたつもりですが、正しいかが分からないです。
<br>
3.　if文の書き方関して、状況によりけりだと思いますが使えるなら後置ifや三項演算子を使った方が良いのか？
<br>
4.　一つのクラスでインスタンス変数を使うのは2までが良いという記事を見ました。実際に2つ以上になる場合はクラス分けを検討しますか？
<br>
5.　putsでターミナルで表示するのをなるべく、モジュールに入れてVending_MachineクラスにMix inをさせて表示を行いましたがモジュールの使用方法としては正しいですか？（オブジェクト指向目線での話）
<br>
6.　コメントアウトを残す場合の判断基準がわかりません
<br>
7.　メソッド名や変数名のコツはありますか？
<br>
8.　本気でソニックガーデンさんに入社を考えています。今やれることのアドバイスなどあれば教えていたいです



