---sýfýrdan tablo forain key

Create  table PersonNotes(
Id int primary key identity,
PersonId int,
Note nvarchar(500),
Constraint FK_PersonNote_Person5 foreign key (PersonId)
References Person5 (Id)
)

Create  table PersonNotes2(
Id int primary key identity,
PersonId int,
Note nvarchar(500),
Constraint  foreign key (PersonId)
References Person5 (Id)
on delete cascade 
on update cascade
)
-----------Varolan tabloya FK ekleme

Create  table PersonNotes3(
Id int primary key identity,
PersonId int,
Note nvarchar(500)
)

Alter Table PersonNotes3
Add Constraint FK_PersonNote2_Person5 foreign key (PersonId)
References Person5 (Id)

-----FK Silme

Alter Table PersonNotes3
Drop constraint FK_PersonNote2_Person5
-----FK Update
-----FK sil yenisini oluþtur
