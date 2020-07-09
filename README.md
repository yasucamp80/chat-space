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

#  Chatspace  DB設計

## massagesテーブル

|Column|Type|Options|
|------|----|-------|
|image|string|
|body|text|
|group_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|email|string|null: false, unique: true|
|password|string|null: false|
|name|string|null: false, add_index: true|
### Association
- has_many :massages
- has_many :groups_id
- has_many :groups, through: :groups_users

## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|groups_name|string||null: false, unique: true|
### Association
- has_many :users, through: groups_users
- has_many :massages
- has_many :groups_users

## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :group
- belongs_to :user