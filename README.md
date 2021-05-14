<div align="center">
  <img src="https://user-images.githubusercontent.com/11171872/117256767-094faf80-ae86-11eb-9b51-468b232c7704.gif" width="600">
</div>

<h1 align="center">Tips To Think</h1>

<div align="center">
  <a href="https://www.docker.com/">
    <img src="https://user-images.githubusercontent.com/11171872/116210869-38776a00-a77e-11eb-8b0f-0f84520dbe07.png" height="55">
  </a>&nbsp;&nbsp;
  <a href="https://railsguides.jp/6_0_release_notes.html">
    <img src="https://user-images.githubusercontent.com/11171872/113230027-27e4e880-92d3-11eb-8a73-13b4d438c17c.jpg" height="55">
  </a>&nbsp;
  <a href="https://mdbootstrap.com/">
    <img src="https://user-images.githubusercontent.com/11171872/118204129-825b9200-b498-11eb-9fec-e3d72a2273b1.png" height="55">
  </a>&nbsp;
  <a href="https://www.mysql.com/">
    <img src="https://user-images.githubusercontent.com/11171872/116212469-d0c21e80-a77f-11eb-93d7-c939066df710.png" height="55">
  </a>&nbsp;&nbsp;&nbsp;
  <a href="https://www.heroku.com/">
    <img src="https://user-images.githubusercontent.com/11171872/113230337-c7a27680-92d3-11eb-9e94-c131dfba8f1d.png" height="55">
  </a>
</div>

## :computer: URL

[https://tips-to-think-shu0328.herokuapp.com/](https://tips-to-think-shu0328.herokuapp.com/)


## :pencil2: Overview

I'm using Rails6 and Docker.
I created a simple Blog application.

## :hammer: Requirement

- macOS
- Docker 20.10.5
- Rails 6.1.3.1
- Ruby 2.7.1
- MySql 5.7
- Bootstrap
- Heroku

## :pushpin: Usage

Git clone
```
$ git clone https://github.com/shumatsumoto/tips-to-think.git
```
Move to directory
```
$ cd tips-to-think
```
Rail server & Mysql server start
```
$ docker-compose up -d
$ （docker-compose build）
$ docker-compose ps
```
Access URL： 
http://localhost:3000

## :railway_car: Features

- Login / Logout / SignUp
- Article posting
- Tag filtering
- Comment posting

<img width="600" alt="ER図" src="https://user-images.githubusercontent.com/11171872/117029178-5f630c80-ad39-11eb-9427-53e65d4947ea.png">

## :green_book: Reference

- [フルスタックエンジニアが教える 即戦力Railsエンジニア養成講座](https://www.udemy.com/course/rails-kj/)
- [ゼロからはじめる Dockerによるアプリケーション実行環境構築](https://www.udemy.com/course/docker-k/)
- [いいね機能の作成](https://freecamp.life/rails-favorite/)
- [フォロー・フォロワー機能の実装](https://freecamp.life/rails-follow-follower/)
- [必要だと気付いてもいなかったフロントエンド用リポジトリ7選](https://qiita.com/baby-degu/items/95a6b0018f46b0555f8c)
- [HerokuにRailsアプリのDockerコンテナをプッシュするまで(MySQL 5.7)](https://qiita.com/take18k_tech/items/25a1147c481a37b423fc)
- [ionicons](https://ionicons.com/)

## :hatching_chick: Author

- [Github](https://github.com/shumatsumoto)
- [Qiita](https://qiita.com/ShuMatsumoto)

## :credit_card: Licence

[MIT](https://......)

