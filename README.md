# README

### アプリケーション名

Date Analyzing

### アプリケーション概要

野球のデータ管理・分析アプリです。  
主に打席結果情報の入力、保存、閲覧が出来ます。  
単なる結果だけでなく、細かい状況や投球のデータも蓄積できます。  

### URL  

  https://data-analyzing-39634.onrender.com/

### テスト用アカウント  

・メールアドレス：テスト実施できたら書こう！  
・ログインパスワード：テスト実施できたら書こう！  

### 利用方法  

1.一覧ページヘッダーより新規データ入力を行います。  
2.まずはgame_idを登録するための画面に遷移します。  
3.その後「いつの、誰の、どの」という情報が紐づいたgame_idを用いて詳細を入力していきます。  
4.入力された情報が一覧で表示されます。  
  

### アプリケーションを作成した背景

データという揺るぎない根拠をもとに企業や人の判断を後押しすることを仕事の目的にしています。  
ビッグデータの活用が重視される現代で、一つのデータをあらゆる角度からチェックし、  
仮説・検証する力が必要だと考えています。  
そのため、特にデータ分析に活用されている言語であるPythonを用いたツールの作成をしようという考えに至りました。  

### 要件定義
  必ず書こう！

### 現在の実装内容（主要部のみ）

[![Image from Gyazo](https://i.gyazo.com/7720237bb5e47d548a8d3b1ed70bb6e8.png)](https://gyazo.com/7720237bb5e47d548a8d3b1ed70bb6e8)
[![Image from Gyazo](https://i.gyazo.com/bc43d3411928379f1b6c8cf8807275fb.png)](https://gyazo.com/bc43d3411928379f1b6c8cf8807275fb)
[![Image from Gyazo](https://i.gyazo.com/bb6740dc5c0c35039a5693a0c611d3b6.png)](https://gyazo.com/bb6740dc5c0c35039a5693a0c611d3b6)

### 実装予定の機能

Pythonでグラフの表示や、CSVファイルの取得をできるようにしたいと考えています。  
また、選手としての傾向がもっと如実に現れるようにする、データの見方のバリエーションを増やす  
という目的のためデータをより詳細に分割していきたいです。  


### 開発環境
・フロントエンド：HTML/CSS  
・バックエンド：Ruby/Ruby on Rails  
・テキストエディタ：Visual Studio Code  
・デプロイ：AWS  
・タスク管理：GitHub  

### 工夫したポイント

1.フロントエンドに関して  

1データ単位の項目（turn_number,outcount,runner,position など）が多いため  
より視認性が高くなるように罫線を用いました。  
色の種類も極力少なく、”データの閲覧・分析”に特化した淡泊な見た目にしました。  

2.バックエンドに関して  

打席の結果をより詳細にデータとして保存するため、カラムを多く作成しました。  
これにより状況別の打撃データ、球種別の打撃データを得ることができ、  
また逆からの視点で、ヒットだったときはどういう状況（球種）か、というのも見ることができます。  
野球というスポーツの構成上、打球方向が存在しない打席結果（三振や四球など）の場合もあり得ます。  
そういったケースのために、打球方向（position_id）はnull falseの指定はしませんでした。

### 改善点

  多くの人に利用されることを想定した場合、game_idにnameが含まれていることはあまり良くないと考えます。  
  あくまでもnameと”試合情報”は区別して保存し、nameのみで絞る場合、試合情報から絞る場合両方に  
  対応できる設計にする必要があります。

### ER図  

[![Image from Gyazo](https://i.gyazo.com/27a5f3f937aed223e22ec8d753165f0e.png)](https://gyazo.com/27a5f3f937aed223e22ec8d753165f0e)

# テーブル設計

## games テーブル

| Column  | Type   | Options     |
| ------- | ------ | ----------- |
| name    | string | null: false |
| date    | date   | null: false |
| vs      | string | null: false |
| stadium | string | null: false |

### Association

- has_many :atbats

## atbats テーブル

| Column         | Type       | Options     |
| -------------- | ---------- | ----------- |
| game           | references | null: false |
| turn_number    | integer    | null: false |
| outcount_id    | integer    | null: false |
| runner_id      | integer    | null: false |
| position_id    | integer    | null: false |
| batting_id     | integer    | null: false |
| pitchtype_id   | integer    | null: false |
| pitchcourse_id | integer    | null: false |

### Association

- belongs_to :game