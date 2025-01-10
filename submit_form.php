<?php
// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve form data
    $name = $_POST["name"];
    $email = $_POST["email"];
    $message = $_POST["message"];

    // Set recipient email address 
    $to = "contact@funtrip.in";

    // Set email subject
    $subject = "New Contact Form Submission from FunTrip.in";

    // Compose the email message
    $email_message = "Name: $name\n";
    $email_message .= "Email: $email\n\n";
    $email_message .= "Message:\n$message";

    // Set additional headers
    $headers = "From: $email";

    // Attempt to send the email
    if (mail($to, $subject, $email_message, $headers)) {
        // Email sent successfully
        echo "Thank you for contacting us! Your message has been sent.";
    } else {
        // Error sending email
        echo "Oops! Something went wrong. Please try again later.";
    }
} else {
    // Form was not submitted
    echo "Form submission error.";
}
?>
