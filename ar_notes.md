## Active Record Migrations etc

Create a migration using a generator. ex:

```
$ rails g migration_add_image_url_to_articles
```
Deletes a migration using a generator. ex:
```
$ rails d migration_add_image_url_to_articles
```
Add image_url to articles table as a string:
```
$ rails g migration add_image_url_to_articles image_url:string
```

To use these new migration for the database you need to run:

```
$ rails db:migrate
```

Creates a migration, a model, a factory and a spec file:
```
rails g model Category title:string
```
To delete this, again use d instead of d.


After creating a migration, double check so that it looks reasonable and that it will do what you want it to.

Timestamp = invokes two variables, one being Created at and the second being updated at.

To set the articles created to belong to a Category add the following:

In model/category.rb

`has_many :articles`


in model/article.rb

`belongs_to :category`


```
rails g migration add_category_to_articles category:references
```

again to use the migration for the database to do a db:migrate

If you suspect that you have broken you're database then use
```
$ rails db:drop
```
And to recreate it again use
```
$ rails db:create db:migrate
```

In order to check state of the database then open up the schema.rb in you DB folder

This file will contain the architecture of your database

To test your database manually enter the rails console
```
$ rails c
```
In the console you can see if your database works as expected

If you run into an error then use this command
```
x.errors or x.errors.full_messages
```
and at the bottom of the page you will see messages that will give you a clue to what error you have encountered.

to edit an object afterwards you can set attributes by the following
```
x.y = z
x.save
```






