USE [Mycondo]
GO

DROP PROCEDURE InsertUser;  
GO
DROP PROCEDURE InsertLogin;  
GO
DROP PROCEDURE InsertServiceRequest;
GO
DROP PROCEDURE InsertServiceStatus;
GO
DROP PROCEDURE InsertServiceType;;
GO
DROP PROCEDURE InsertUnits;
GO


DROP PROCEDURE InsertPayment;
GO
DROP PROCEDURE InsertVisitorType;
GO
DROP PROCEDURE InsertVehicleMake;
GO
DROP PROCEDURE InsertVehicleDetails;
GO
DROP PROCEDURE InsertVehicleColor;
GO
DROP PROCEDURE InsertUsergroup;
GO
--******************************************ServiceRequest
CREATE PROCEDURE InsertServiceRequest
(

 @UserId           INT ,
 @Subject          NVARCHAR (50) ,
 @Description       nvarchar(Max)  ,
  @Status            nvarchar(50) 
  )
  AS
INSERT INTO Request(UserId,LastName,Subject,Description,Status)
			VALUES(@UserId,@Subject,@Description,@Status);
GO
--******************************************ServiceStatus
CREATE PROCEDURE InsertServiceStatus
(
@Status nvarchar(50),
@Description nvarchar(max)
)
AS
INSERT INTO Status(Status,Description)
            Values(@Status,@Description);
GO
--******************************************ServiceType
CREATE PROCEDURE InsertServiceType
(
@ServiceName nvarchar(50)
)
AS
INSERT INTO serviceType(ServiceName)
            Values(@ServiceName);
GO
--******************************************Units
CREATE PROCEDURE InsertUnits
(
@unitNumber	INT, 
@Occupancy	NVARCHAR (5), 
@OwnerUserId		INT, 
@UnitAdressId	INT,
@OwnerAdressId     INT, 
@Occupancydate	DATE
)
AS
INSERT INTO Units(unitNumber,Occupancy	,OwnerUserId,UnitAdressId,OwnerAdressId,Occupancydate)
			VALUES(@unitNumber,@Occupancy,@OwnerUserId,@UnitAdressId,@OwnerAdressId,@Occupancydate);
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
--*******************************************select id with email
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


--*******************************************Usergroup
CREATE PROCEDURE InsertUsergroup
(
@GroupName  nvarchar(50)  ,
@Description nvarchar(MAX) 
)
AS
INSERT INTO UserGroup(GroupName,Description)
            VALUES(@GroupName,@Description);
			
GO
--*******************************************vehicleColor
CREATE PROCEDURE InsertVehicleColor
(
 @Color nvarchar(50) 
)
AS
INSERT INTO Color(Color)
     VALUES(@Color);

GO

--*******************************************vehicleDetails
CREATE PROCEDURE InsertVehicleDetails
(
 @LicensePlate nvarchar(50)  ,
 @GuestId     int  ,
 @ParkingSpot nvarchar(50)  ,
 @Make         nvarchar(50) ,
 @Color       nvarchar(50)  ,
 @State       nvarchar(50)  ,
 @ExpiryDate   datetime  
)
AS
INSERT INTO VehcileDetails( LicensePlate,GuestId,ParkingSpot,Make,Color,State,ExpiryDate)
                   VALUES(@LicensePlate,@GuestId,@ParkingSpot,@Make,@State,@Color,@ExpiryDate);
GO
--*******************************************vehicleMake
CREATE PROCEDURE InsertVehicleMake
(
 @Make nvarchar(50) 
)
AS
INSERT INTO VehicleMake(Make)
VALUES(@Make);

GO
--*******************************************VisitorType
CREATE PROCEDURE InsertVisitorType
(
 @Name        nvarchar(50)  ,
 @Description nvarchar(MAX)  
)
AS
INSERT INTO VisitorType(Name,Description )
VALUES(@Name,@Description);
GO



--*******************************************Payment
CREATE PROCEDURE InsertPayment
(

 @Amount        decimal(18,2) ,
 @PayerId       int  ,
 @ServiceName   nvarchar(50)  ,
 @Date          datetime ,
 @PaymentStatus nvarchar(50) ,

 @PaymentDate   datetime2(7)  
)
AS
INSERT INTO Payment(Amount,PayerId,ServiceName,Date,PaymentStatus,PaymentDate)
VALUES(@Amount,@PayerId,@ServiceName,@Date,@PaymentStatus, @PaymentDate);
GO
