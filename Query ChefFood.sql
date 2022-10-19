use  BootcampDotNetDB

SELECT * FROM Book

CREATE TABLE Book(
	BookID int primary key identity,
	BookTitle varchar(255),
	BookDescription varchar(255),
	Quantity int
)
se

INSERT INTO Book values('Peterpan','Peter Pan is a fictional character created by Scottish novelist and playwright J. M. Barrie. A free-spirited and mischievous young boy who can fly and never grows up,',2),
('The Fault in Our Stars','The Fault in Our Stars is a novel by John Green. It is his fourth solo novel, and sixth novel overall.',3),
('Fangirl ','Fangirl is a young adult novel by Rainbow Rowell, published in 2013. Fangirl is Rowells second published book, following Eleanor & Park.',2),
('The Song of Achilles', '“The Song of Achilles becomes a quiet love story, one so moving that I was reluctant to move on to the war and Homers tale of perverted honor and stubborn',5)

create or alter proc GetAllBook
as
begin
select * from [Book]
end

go;

create or alter proc GetBookbyID
@id int
as
begin
    select * from [Book] where BookID = @id
end
