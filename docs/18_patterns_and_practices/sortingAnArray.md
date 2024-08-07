---
title: Sorting an Array in JavaScript
parent: Patterns & Practices
layout: default
nav_order: 11
has_children: false
---


# Sorting an Array in JavaScript

This function shows how to sort an array.

You will create a an array when you use `List Object Instances` activity.  In this example, the `List Object Instances` activity returned a variable called `Bookings`.  

We want to sort these bookings based on:

1. **Priority Weight**
2. **Time Weight**
3. **Vehicle Type Weight**

password: 12345

{% raw %}

```javascript
// Convert 'hh:mm' time string to minutes since midnight
function stringToMinutes(timeString) {
    // timeString is in the format HH:MM
    const [hours, minutes] = timeString.split(":").map(Number);
    return (hours * 60) + minutes;
}

// Main function to sort bookings
function sortBookings(bookings) {
    // Define weights
    const weights = {
        priority: 5,
        time: 2,
        vehicleType: 3
    };

    // Process each booking
    bookings.forEach(booking => {
        let priorityValue = booking.Priority ? 1 : 0;
        let timeValue = stringToMinutes(booking.BookingTime);
        let vehicleTypeValue = 0;

        // Adjust vehicle type values
        if (booking.VehicleCode.startsWith("B")) {
            vehicleTypeValue = 2; // BUS
        } else if (booking.VehicleCode.startsWith("PS")) {
            vehicleTypeValue = 3; // Premium Sedan
        } else if (booking.VehicleCode.startsWith("SUV")) {
            vehicleTypeValue = 1; // SUV
        }

        // Calculate score
        booking.score = (weights.priority * priorityValue) 
                      + (weights.time * timeValue) 
                      + (weights.vehicleType * vehicleTypeValue);
    });

    // Sort bookings by score in descending order
    bookings.sort((a, b) => b.score - a.score);

    return bookings;
}

// Example usage
let bookings = getVariable("Bookings");
let sortedBookings = sortBookings(bookings);
setVariable("sortedBookings", sortedBookings);
setOutcome("ok");
```

### Key Points:

1. **Weights:** Use three weights—`priority`, `time`, and `vehicleType`—to calculate the score.
2. **Score Calculation:** Combine these weights to determine the booking score.
3. **Sorting:** Sort bookings based on the calculated scores in descending order.


{% endraw %}
