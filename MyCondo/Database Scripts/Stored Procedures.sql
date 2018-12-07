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
DROP PROCEDURE SelectBookingsList;
GO 
DROP PROCEDURE SelectShortBookingsDisplay;
GO 
DROP PROCEDURE InsertUnits;
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
SELECT  UserId , CONCAT(FirstName, ',', LastName,' ( ',UnitNumber, ' )') AS Residents
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
--*******************************************select booking list
CREATE PROCEDURE SelectBookingsList
As
SELECT  CONCAT(FirstName, ',', LastName,' ( ',UnitNumber, ' )') AS Name,BookingId,
			BookingType, StartDate, EndDate, BookingDescription, BookingStatus
			FROM Booking INNER JOIN Users ON Booking.UserId=Users.UserId;   
Go
--*******************************************Display short booking form
CREATE PROCEDURE SelectShortBookingsDisplay
As
SELECT  CONCAT(FirstName, ',', LastName,' ( ',UnitNumber, ' )') AS Name,BookingId,
			BookingType, Convert(varchar(20), StartDate, 106) As StartDate, BookingStatus
			FROM Booking INNER JOIN Users ON Booking.UserId=Users.UserId;   
Go

--******************************************Units
CREATE PROCEDURE InsertUnits
(
@unitNumber		INT, 
@Occupancy		NVARCHAR (10), 
@OwnerUserId	INT, 
@UnitAdressId	INT,
@OwnerAdressId  INT, 
@Occupancydate	DATE
)
AS
INSERT INTO Units(unitNumber,Occupancy	,OwnerUserId, UnitAdressId,OwnerAdressId,Occupancydate)
			VALUES(@unitNumber,@Occupancy,@OwnerUserId, @UnitAdressId,@OwnerAdressId,@Occupancydate);
GO



