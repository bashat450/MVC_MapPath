CREATE TABLE [dbo].[Teacher](
	[Id] [int] NOT NULL,
	[Name] [varchar](100) NULL)

GO
ALTER Procedure [dbo].[AllTeachersDetail_SP]
As
Begin
Select * from Teacher;
End;

GO
ALTER Procedure [dbo].[InsertRecords_SP]
@Id int,
@Name varchar(100)
As
Begin
Insert into Teacher(Id,Name) values(@Id,@Name)
End;

GO
ALTER procedure [dbo].[UpdateRecords_SP]
@Id int,
@Name varchar(100)
As
Begin
Update Teacher set Id = @Id , Name = @name
Where Id = @Id;
End;


GO
ALTER Procedure [dbo].[DeleteRecord_SP]
@Id int
As
Begin
Delete from Teacher where Id = @Id;
End;

Use College;

ALTER TABLE Teacher ADD ImagePath VARCHAR(255);

Select * from Teacher;

Update Teacher set ImagePath = '"C:\BashatParweeen\MVC\CrudMap\Images\1_Std.jpg"'
Where Id = 501;

Update Teacher set ImagePath = '"C:\BashatParweeen\MVC\CrudMap\Images\2_Std.jpg"'
Where Id = 502;

Update Teacher set ImagePath = '"C:\BashatParweeen\MVC\CrudMap\Images\3_Std.avif"'
Where Id = 503;

Update Teacher set ImagePath = '"C:\BashatParweeen\MVC\CrudMap\Images\4_Std.jpg"'
Where Id = 504;

Update Teacher set ImagePath = '"C:\BashatParweeen\MVC\CrudMap\Images\5_Std.avif"'
Where Id = 505;

Update Teacher set ImagePath = '"C:\BashatParweeen\MVC\CrudMap\Images\6_Std.jpg"'
Where Id = 506;


ALTER PROCEDURE [dbo].[InsertRecords_SP]
@Id int,
@Name varchar(100),
@ImagePath varchar(255)
AS
BEGIN
    INSERT INTO Teacher(Id, Name, ImagePath) VALUES(@Id, @Name, @ImagePath);
END;

GO
ALTER procedure [dbo].[UpdateRecords_SP]
@Id int,
@Name varchar(100),
@ImagePath varchar(255)
As
Begin
Update Teacher set Id = @Id , Name = @name, ImagePath = @ImagePath
Where Id = @Id;
End;


UPDATE Teacher SET ImagePath = '~/Images/1_Std.jpg' WHERE Id = 501;
UPDATE Teacher SET ImagePath = '~/Images/2_Std.jpg' WHERE Id = 502;
UPDATE Teacher SET ImagePath = '~/Images/3_Std.jpeg' WHERE Id = 503;
UPDATE Teacher SET ImagePath = '~/Images/4_Std.jpg' WHERE Id = 504;
UPDATE Teacher SET ImagePath = '~/Images/5_Std.jpeg' WHERE Id = 505;
UPDATE Teacher SET ImagePath = '~/Images/6_Std.jpg' WHERE Id = 506;

