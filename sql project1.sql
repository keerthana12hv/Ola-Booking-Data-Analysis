USE ola;
SHOW TABLES;
SELECT * FROM booking;
DELETE booking;

# 1. Retrieve all successful bookings:
Create View Sucessfulbooking As  
SELECT * FROM booking WHERE BookingStatus = 'Completed';
SELECT * FROM sucessfulbooking;

# 2. Find the average waiting time for each pickup location:
Create View avgArrivalTime As
SELECT PickupLocation,
AVG('AvgVTAT(mins)') , # driver arrival time(vehicle turnaround time)
AVG('AvgCTAT(mins)')  # customer waiting time(customer turnaround time)
FROM booking
GROUP BY PickupLocation;
SELECT * FROM avgArrivalTime;

# 3. Get the total number of cancelled rides by customers:
Create View cancelled_booking_status As
SELECT COUNT(*) FROM booking WHERE BookingStatus = 'cancelled';
SELECT * FROM cancelled_booking_status;

# 4. List the top 5 customers who booked the highest number of rides:
Create View top_5_customers As
SELECT CustomerID, COUNT(BookingID) as total_rides FROM booking
GROUP BY CustomerID ORDER BY total_rides DESC LIMIT 5;
SELECT * FROM top_5_customers;

# 5. Get the number of rides cancelled by drivers due to personal and car-related issues:
Create View CancelledByDriver As
SELECT COUNT(*) FROM booking WHERE CancellationReason = 'Driver asked to cancel' AND 'Driver not moving towards pickup location' AND 'AC is not working';
select * FROM CalcelledByDriver;

# 6. Find pickup location with highest bookings:
Create View pickup_location_with_highest_bookings As
SELECT PickupLocation, COUNT(*) AS Total_bookings FROM booking
GROUP BY PickupLocation
ORDER BY Total_bookings DESC
LIMIT 1;
SELECT * FROM pickup_location_with_highest_bookings;

-- 7. Count total rides by booking status
Create View Booking_status As
SELECT BookingStatus, COUNT(*) AS Total_rides
FROM booking
GROUP BY BookingStatus
ORDER BY Total_rides DESC;
SELECT * FROM Booking_status;

-- 8. Find most used vehicle type
Create View most_used_vehicle_type As
SELECT VehicleType, COUNT(*) FROM booking
GROUP BY VehicleType
ORDER BY VehicleType  DESC;
SELECT * FROM most_used_vehicle_type ;

-- 9. Find average customer waiting time per vehicle type
Create View AvgCTAC_per_vehicleType As
SELECT VehicleType, AVG('AvgCTAT(mins)') AS AvgCTAC FROM booking
GROUP BY VehicleType
ORDER BY AvgCTAC DESC;
SELECT * FROM AvgCTAC_per_vehicleType;

-- 10. List  all the cancellation reasons
SELECT DISTINCT CancellationReason FROM booking;  












