#!/bin/sh

mongo --eval 'use test' # mongo test

mongo --eval 'db.users.save({"name" : "Billy"});'
mongo --eval 'db.users.save({"name" : "Sarah"});'
mongo --eval 'db.users.save({"name" : "Klara"});'
mongo --eval 'db.users.save({"name" : "Joseph"});'
mongo --eval 'db.users.save({"name" : "Bob"});'
mongo --eval 'db.users.save({"name" : "Sue"});'

mongo --eval 'db.books.save({"title" : "Harry Potter"});'
mongo --eval 'db.books.save({"title" : "Sherlock Holmes"});'
mongo --eval 'db.books.save({"title" : "Alice in Wonderland"});'
mongo --eval 'db.books.save({"title" : "Game of Thrones"});'
mongo --eval 'db.books.save({"title" : "Pretty Little Liars"});'
mongo --eval 'db.books.save({"title" : "Twilight"});'
mongo --eval 'db.books.save({"title" : "The Innocent"});'
mongo --eval 'db.books.save({"title" : "Pride and Prejudice"});'

mongo --eval 'db.ratings.save({ "user_id" : db.users.findOne({name:"Billy"})._id,
"item_id" : db.books.findOne({title:"Harry Potter"})._id,
"preference" : 4,
"created_at" : 1339436655 });'
mongo --eval 'db.ratings.save({ "user_id" : db.users.findOne({name:"Billy"})._id,
"item_id" : db.books.findOne({title:"Twilight"})._id,
"preference" : 1,
"created_at" : 1339436655 });'
mongo --eval 'db.ratings.save({ "user_id" : db.users.findOne({name:"Billy"})._id,
"item_id" : db.books.findOne({title:"The Innocent"})._id,
"preference" : 3,
"created_at" : 1339436655 });'
mongo --eval 'db.ratings.save({ "user_id" : db.users.findOne({name:"Sarah"})._id,
"item_id" : db.books.findOne({title:"Game of Thrones"})._id,
"preference" : 1,
"created_at" : 1339436655 });'
mongo --eval 'db.ratings.save({ "user_id" : db.users.findOne({name:"Sarah"})._id,
"item_id" : db.books.findOne({title:"Pretty Little Liars"})._id,
"preference" : 5,
"created_at" : 1339436655 });'
mongo --eval 'db.ratings.save({ "user_id" : db.users.findOne({name:"Sarah"})._id,
"item_id" : db.books.findOne({title:"Twilight"})._id,
"preference" : 4,
"created_at" : 1339436655 });'
mongo --eval 'db.ratings.save({ "user_id" : db.users.findOne({name:"Sarah"})._id,
"item_id" : db.books.findOne({title:"Pride and Prejudice"})._id,
"preference" : 5,
"created_at" : 1339436655 });'
mongo --eval 'db.ratings.save({ "user_id" : db.users.findOne({name:"Klara"})._id,
"item_id" : db.books.findOne({title:"Alice in Wonderland"})._id,
"preference" : 3,
"created_at" : 1339436655 });'
mongo --eval 'db.ratings.save({ "user_id" : db.users.findOne({name:"Klara"})._id,
"item_id" : db.books.findOne({title:"Pretty Little Liars"})._id,
"preference" : 4,
"created_at" : 1339436655 });'
mongo --eval 'db.ratings.save({ "user_id" : db.users.findOne({name:"Joseph"})._id,
"item_id" : db.books.findOne({title:"Sherlock Holmes"})._id,
"preference" : 3,
"created_at" : 1339436655 });'
mongo --eval 'db.ratings.save({"user_id" : db.users.findOne({name:"Joseph"})._id,
"item_id" : db.books.findOne({title:"Game of Thrones"})._id,
"preference" : 5,
"created_at" : 1339436655 });'
mongo --eval 'db.ratings.save({ "user_id" : db.users.findOne({name:"Bob"})._id,
"item_id" : db.books.findOne({title:"Harry Potter"})._id,
"preference" : 2,
"created_at" : 1339436655 });'
mongo --eval 'db.ratings.save({ "user_id" : db.users.findOne({name:"Bob"})._id,
"item_id" : db.books.findOne({title:"Sherlock Holmes"})._id,
"preference" : 5,
"created_at" : 1339436655 });'
mongo --eval 'db.ratings.save({ "user_id" : db.users.findOne({name:"Bob"})._id,
"item_id" : db.books.findOne({title:"Game of Thrones"})._id,
"preference" : 4,
"created_at" : 1339436655 });'
mongo --eval 'db.ratings.save({ "user_id" : db.users.findOne({name:"Sue"})._id,
"item_id" : db.books.findOne({title:"Twilight"})._id,
"preference" : 5,
"created_at" : 1339436655 });'
