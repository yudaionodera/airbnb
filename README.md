# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|image|string|null: false|


### Association
- has_many :houses
- has_many :reviews

## housesテーブル

|Column|Type|Options|
|------|----|-------|
|name|integer|null: false|
|image|string|null: false|
|user_id|integer|null: false, foreign_key: true|


### Association
- belong_to :user
- has_many :reviews

## reviewsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|user_id|integer|null: false, foreign_key: true|
|house_id|integer|null: false, foreign_key: true|


### Association
- belong_to :user
- belong_to :house
