# chatを想定したメッセージのCRUDにてReactを勉強するシナリオです。

## Reactでメッセージ一覧表示を実装しよう
1. 1つのメッセージを表示するcomponentを作成してみよう。(Message component)
2. 1で作成したメッセージを表示するcomponentを使ってメッセージ一覧を表示するcomponentを作成してみよう。(MessageList component)
3. 2で作成したメッセージ一覧のcomponentを表示してみよう。（ChatConteinerに追加してみよう）
4. メッセージ一覧を固定値の初期状態を作成してみよう。（initialStateを作成してみよう）
  例：[{"id":2,"text":"message2"},{"id":1,"text":"message1"}]
5. 4で作成した初期状態を2のcomponentに渡して表示させてみよう。

## メッセージを一覧に登録する機能を実装しよう
6. メッセージ入力テキストエリアのcomponentを作成してみよう。(MessageForm component)
7. 6で作成したcomponentに入力したメッセージを登録するボタンを作成してみよう。
8. メッセージ入力のcomponentを表示してみよう。（ChatConteinerに追加してみよう）
9. メッセージを1件追加するreducerを作成してみよう。
10. メッセージを1件追加するactionを作成してみよう。
11. 7で作成した登録するボタンにクリック時に動作するように、5のactionを割り当てて、入力されたメッセージを登録してみよう。

## メッセージ一覧をAPIから取得して表示できるように実装しよう
12. 11で割り当てたactionをRailsのChat APIの登録が成功した場合に実行するように変えてみよう。
  (Railsから成功時にもらうJSONでstoreのデータを作成しましょう)
13. メッセージ一覧を作成するreducerを作成してみよう。
14. メッセージ一覧を作成するactionを作成してみよう。
15. 2で作成したMessageに初期表示時に14のactionを割り当てよう。
  渡す引数は`[{"id":3,"text":"message3"},{"id":2,"text":"message2"},{"id":1,"text":"message1"}]`
16. 15で割り当てたactionをRailsのChat APIの一覧が成功した場合に実行するように変えてみよう。

## メッセージを編集できる機能を実装しよう
17. store1つのメッセージのデータに"表示状態(display state)"を追加してみよう。
  デフォルトはtrue（trueとfalse）の2パターンを持つとします。
18. "表示状態(display state)"を変更するreducerを作成してみよう。
19. "表示状態(display state)"を変更するactionを作成してみよう。
20. 3で作成したMessageListでmessageの"表示状態(display state)"が"表示"の場合は、現状通りで、
   "編集"の場合はテキストエリアと変更ボタンとキャンセルボタン（MessageFormを改造すると尚良）を表示するようにしてみよう。
21. 20で作成した"表示"状態のMessageにクリック時に18のactionにて"編集"となるように割り当てよう。
22. 20で作成したMessageFormのキャンセルボタンにクリック時に18のactionにて"表示"となるように割り当てよう。
23. 該当メッセージを変更するreducerを作成してみよう。
24. 該当メッセージを変更するactionを作成してみよう。
25. 20で作成したcomponetの変更ボタンにクリック時に24のactionを割り当てて、入力されたメッセージを変更してみよう。

## メッセージ編集をAPIの呼び出しで行えるように実装しよう
26. 25で割り当てたactionをRailsのChat APIの変更が成功した場合に実行するように変えてみよう。

## メッセージを削除できるように実装しよう
27. 該当メッセージ削除するreducerを作成してみよう。
28. 該当メッセージ削除するactionを作成してみよう。
29. 2で作成したMessageに削除ボタンを追加して、28のactionを割り当てよう。
30. 30で割り当てたactionをRailsのChat APIの削除が成功した場合に実行するように変えてみよう。

**お疲れ様でした！簡単はChatが実装できました**

ActionCableと繋ぐと、、、？
