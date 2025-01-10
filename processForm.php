<?php
// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Capture form data
    $startingPoint = $_POST['startingPoint'];
    $destination = $_POST['destination'];
    $startDate = $_POST['startDate'];
    $endDate = $_POST['endDate'];
    $budget = $_POST['budget'];

    // Validate the start and end dates
    if (!empty($startDate) && !empty($endDate)) {
        $startDateTime = new DateTime($startDate);
        $endDateTime = new DateTime($endDate);

        if ($endDateTime >= $startDateTime) {
            // The end date is on or after the start date
            echo "Trip details are valid. Starting Point: $startingPoint, Destination: $destination, Start Date: $startDate, End Date: $endDate, Budget: $budget";
            // Here you can process the form data further (e.g., save to database, send an email, etc.)
        } else {
            // The end date is before the start date
            echo "Error: End date must be on or after the start date.";
        }
    } else {
        echo "Error: Both start date and end date are required.";
    }
}
?>
