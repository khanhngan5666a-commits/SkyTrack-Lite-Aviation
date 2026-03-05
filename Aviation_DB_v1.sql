CREATE DATABASE dbSTLite;
GO
USE dbSTLite; 
GO
CREATE TABLE Flights (
    FlightNumber varchar(10) PRIMARY KEY, 
    Destination nvarchar(100) NOT NULL,  
    Status nvarchar(50),                   
    DepartureTime datetime NOT NULL,
    Gate nvarchar(10),
    AircraftType nvarchar(50)              
);

CREATE TABLE Passengers (
    PassengerID int PRIMARY KEY IDENTITY(1,1), 
    FullName nvarchar(100) NOT NULL,
    FlightNumber varchar(10),                  
    SeatNumber varchar(10),                    
    BookingDate datetime DEFAULT GETDATE(),  
    
    CONSTRAINT FK_Passenger_Flight FOREIGN KEY (FlightNumber) 
    REFERENCES Flights(FlightNumber)
);
GO