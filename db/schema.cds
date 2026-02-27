using {
    cuid,
    managed
} from '@sap/cds/common';

namespace tutorial.db;

entity Books : cuid, managed {

    Title       : String;
    Author      : Association to Authors;
    genre       : String;
    publishedAt : Date;
    price       : Decimal(9, 2);
    Chapters    : Composition of many Chapters
                      on Chapters.book = $self;
}

entity Authors : cuid, managed {
    name  : String;
    books : Association to many Books
                on books.Author = $self;
}

entity Chapters : cuid, managed {
        number : Integer;
    key book   : Association to Books;
}
