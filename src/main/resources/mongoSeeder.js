
use mongoMahoutExample;

db.users.save({"name" : "Billy"});
db.users.save({"name" : "Sarah"});
db.users.save({"name" : "Klara"});
db.users.save({"name" : "Joseph"});
db.users.save({"name" : "Bob"});
db.users.save({"name" : "Sue"});

db.books.save({"title" : "Harry Potter"});
db.books.save({"title" : "Sherlock Holmes"});
db.books.save({"title" : "Alice in Wonderland"});
db.books.save({"title" : "Game of Thrones"});
db.books.save({"title" : "Pretty Little Liars"});
db.books.save({"title" : "Twilight"});
db.books.save({"title" : "The Innocent"});
db.books.save({"title" : "Pride and Prejudice"});

db.ratings.save({ "user_id" : db.users.findOne({name:"Billy"})._id,
    "item_id" : db.books.findOne({title:"Harry Potter"})._id,
    "preference" : 4,
    "created_at" : 1339436655 });
db.ratings.save({ "user_id" : db.users.findOne({name:"Billy"})._id,
    "item_id" : db.books.findOne({title:"Twilight"})._id,
    "preference" : 1,
    "created_at" : 1339436655 });
db.ratings.save({ "user_id" : db.users.findOne({name:"Billy"})._id,
    "item_id" : db.books.findOne({title:"The Innocent"})._id,
    "preference" : 3,
    "created_at" : 1339436655 });
db.ratings.save({ "user_id" : db.users.findOne({name:"Sarah"})._id,
    "item_id" : db.books.findOne({title:"Game of Thrones"})._id,
    "preference" : 1,
    "created_at" : 1339436655 });
db.ratings.save({ "user_id" : db.users.findOne({name:"Sarah"})._id,
    "item_id" : db.books.findOne({title:"Pretty Little Liars"})._id,
    "preference" : 5,
    "created_at" : 1339436655 });
db.ratings.save({ "user_id" : db.users.findOne({name:"Sarah"})._id,
    "item_id" : db.books.findOne({title:"Twilight"})._id,
    "preference" : 4,
    "created_at" : 1339436655 });
db.ratings.save({ "user_id" : db.users.findOne({name:"Sarah"})._id,
    "item_id" : db.books.findOne({title:"Pride and Prejudice"})._id,
    "preference" : 5,
    "created_at" : 1339436655 });
db.ratings.save({ "user_id" : db.users.findOne({name:"Klara"})._id,
    "item_id" : db.books.findOne({title:"Alice in Wonderland"})._id,
    "preference" : 3,
    "created_at" : 1339436655 });
db.ratings.save({ "user_id" : db.users.findOne({name:"Klara"})._id,
    "item_id" : db.books.findOne({title:"Pretty Little Liars"})._id,
    "preference" : 4,
    "created_at" : 1339436655 });
db.ratings.save({ "user_id" : db.users.findOne({name:"Joseph"})._id,
    "item_id" : db.books.findOne({title:"Sherlock Holmes"})._id,
    "preference" : 3,
    "created_at" : 1339436655 });
db.ratings.save({"user_id" : db.users.findOne({name:"Joseph"})._id,
    "item_id" : db.books.findOne({title:"Game of Thrones"})._id,
    "preference" : 5,
    "created_at" : 1339436655 });
db.ratings.save({ "user_id" : db.users.findOne({name:"Bob"})._id,
    "item_id" : db.books.findOne({title:"Harry Potter"})._id,
    "preference" : 2,
    "created_at" : 1339436655 });
db.ratings.save({ "user_id" : db.users.findOne({name:"Bob"})._id,
    "item_id" : db.books.findOne({title:"Sherlock Holmes"})._id,
    "preference" : 5,
    "created_at" : 1339436655 });
db.ratings.save({ "user_id" : db.users.findOne({name:"Bob"})._id,
    "item_id" : db.books.findOne({title:"Game of Thrones"})._id,
    "preference" : 4,
    "created_at" : 1339436655 });
db.ratings.save({ "user_id" : db.users.findOne({name:"Sue"})._id,
    "item_id" : db.books.findOne({title:"Twilight"})._id,
    "preference" : 5,
    "created_at" : 1339436655 });