<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

require '../PHPMailer-master/src/Exception.php';
require '../PHPMailer-master/src/PHPMailer.php';
require '../PHPMailer-master/src/SMTP.php';

session_start();

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Validate the user input
    $email = filter_input(INPUT_POST, 'email', FILTER_SANITIZE_EMAIL);
    if (!$email) {
        die('Invalid email address.');
    }

    // Check if the email exists in the database
    $pdo = new PDO('mysql:host=localhost;dbname=appSigma', 'root', 'root');
    $stmt = $pdo->prepare('SELECT * FROM users WHERE email = :email');
    $stmt->bindParam(':email', $email);
    $stmt->execute();
    $user = $stmt->fetch();

    if (!$user) {
        die('Email not found in the database.');
    }
    $_SESSION['email'] = $email;

    // Generate a random 4-digit code
    $code = sprintf("%04d", random_int(0, 9999));

    // Send the email with the code to the user
    $mail = new PHPMailer(true);
    try {
        $mail->isSMTP();
        $mail->Host = 'smtp.gmail.com';
        $mail->SMTPAuth = true;
       $mail->Username = 'mixie.brighit01@gmail.com';
       $mail->Password = 'rnfi ybfp dzou xsgb';
       // $mail->Password = 'sppu angj nefs dgdo';
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
        $mail->Port = 587;

        $mail->setFrom('mixie.brighit01@gmail.com');
        $mail->addAddress($user['email']);
        $mail->isHTML(); 
        $mail->Subject = 'Verification Code';
        $mail->Body = "Hi $user[name],\n\nYour verification code is: $code\n\nRegards,\nThe Example Team";

        $mail->send();

        // Store the verification code in session
        $_SESSION['verification_code'] = $code;
       

        // Redirect to the verification page
        header('Location: ../IngresarCodigo/codigo.html');
        exit();
    } catch (Exception $e) {
        echo 'No se pudo enviar el correo electrónico. Error: ', $mail->ErrorInfo;
     }
}
?>