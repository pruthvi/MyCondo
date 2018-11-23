USE [Mycondo]
GO

DROP PROCEDURE InsertUser;  
GO
DROP PROCEDURE InsertLogin;  
GO
DROP PROCEDURE InsertNews;
GO
DROP PROCEDURE DisplayResidents;
GO
DROP PROCEDURE InsertBooking;
GO
DROP PROCEDURE SelectBookingstatus;
GO 
--******************************************insert User
CREATE PROCEDURE InsertUser
(
@FirstName	NVARCHAR (50), 
@LastName	NVARCHAR (50), 
@Email		NVARCHAR (50), 
@PhoneNumber	NVARCHAR (50),
@UserGroup      NVARCHAR (50), 
@Address		NVARCHAR (MAX)
)
AS
INSERT INTO Users(FirstName,LastName,Email,PhoneNumber,UserGroup,Address)
			VALUES(@FirstName,@LastName,@Email,@PhoneNumber,@UserGroup,@Address);
GO
--*******************************************Insert Login
CREATE PROCEDURE InsertLogin
(
  @Username    NVARCHAR (50),
  @Password    NVARCHAR (50),
  @AccountType CHAR (5)     ,
  @UserId	   INT          
)
AS
INSERT INTO Login(Username,Password,AccountType,UserId)
			VALUES(@Username,@Password,@AccountType,@UserId);
GO
--*******************************************insert news feed
CREATE PROCEDURE InsertNews
(
  @Title   NVARCHAR (50),
  @Description NVARCHAR (MAX),
  @ExpiryDate   DATETIME,
  @Priority    NVARCHAR (50),
  @GroupName    NVARCHAR (50) 
)
AS
INSERT INTO Newsfeed(Title,Description,ExpiryDate,Priority,GroupName)
			VALUES(@Title,@Description,@ExpiryDate,@Priority,@GroupName);
GO
--*******************************************Select list of users in textbox

CREATE PROCEDURE DisplayResidents 
As
SELECT  UserId , CONCAT(FirstName, ',', LastName,' - ',UnitNumber) AS Residents
FROM Users;
Go
--*******************************************insert new booking
CREATE PROCEDURE InsertBooking
(         
@BookingType        NVARCHAR (50), 
@StartDate         DATETIME,      
@EndDate           DATETIME ,     
@BookingDescription NVARCHAR (MAX),
@UserId             INT           
)
AS
INSERT INTO Booking (BookingType,StartDate,EndDate,BookingDescription,UserId)
			VALUES(@BookingType,@StartDate,@EndDate,@BookingDescription,@UserId);
GO
--*******************************************select booking status
CREATE PROCEDURE SelectBookingstatus
As
select Status from BookingsStatus;
Go
             





