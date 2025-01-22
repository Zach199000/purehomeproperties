<?php
require 'vendor/autoload.php';  // Ensure this path is correct

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

$mail = new PHPMailer(true);

try {
    // Server settings
    $mail->isSMTP();
    $mail->Host = 'smtp.gmail.com';  // Gmail SMTP server
    $mail->SMTPAuth = true;
    $mail->Username = 'zachalketbi@gmail.com';  // Your Gmail address
    $mail->Password = 'hbifiirbubsr fmkx';  // Use your generated App Password here
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;  // Use TLS
    $mail->Port = 587;  // Gmail SMTP port for TLS

    // Enable debugging output (optional but useful for troubleshooting)
    $mail->SMTPDebug = 2;  // Set to 2 for detailed debug output

    // Recipients
    $mail->setFrom('zachalketbi@gmail.com', 'Zach Alketbi');  // Your email and name
    $mail->addAddress('zachalketbi@gmail.com', 'Recipient Name');  // Replace with recipient email and name

    // Content
    $mail->isHTML(true);
    $mail->Subject = 'Test Email Subject';
    $mail->Body    = 'This is a <b>test email</b> sent using PHPMailer with Gmail!';

    // Send email
    $mail->send();
    echo 'Message has been sent successfully';
} catch (Exception $e) {
    echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
}
?>
