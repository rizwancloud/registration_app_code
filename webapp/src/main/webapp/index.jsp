<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>DevOps Learning Registration</title>

    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #e8f0ff, #f5f7fb);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 25px 15px;
            color: #1f2937;
        }

        .container {
            width: 100%;
            max-width: 520px;
            background: #ffffff;
            padding: 35px;
            border-radius: 16px;
            box-shadow: 0 10px 35px rgba(0, 0, 0, 0.09);
        }

        .header {
            text-align: center;
            margin-bottom: 28px;
        }

        .logo {
            width: 65px;
            height: 65px;
            background: #e8efff;
            color: #315ee7;
            border-radius: 18px;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 27px;
            font-weight: bold;
            margin: 0 auto 18px;
        }

        .header h1 {
            font-size: 25px;
            margin-bottom: 12px;
            color: #172554;
            line-height: 1.4;
        }

        .header p {
            font-size: 14px;
            color: #64748b;
            line-height: 1.6;
        }

        .form-group {
            margin-bottom: 19px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-size: 14px;
            font-weight: 600;
            color: #334155;
        }

        input {
            width: 100%;
            padding: 13px 14px;
            border: 1px solid #cbd5e1;
            border-radius: 8px;
            font-size: 15px;
            outline: none;
            transition: border-color 0.2s, box-shadow 0.2s;
            background: #fff;
        }

        input:focus {
            border-color: #315ee7;
            box-shadow: 0 0 0 3px rgba(49, 94, 231, 0.12);
        }

        .password-wrapper {
            position: relative;
        }

        .password-wrapper input {
            padding-right: 75px;
        }

        .toggle-password {
            position: absolute;
            right: 12px;
            top: 50%;
            transform: translateY(-50%);
            background: none;
            border: none;
            color: #315ee7;
            font-size: 12px;
            font-weight: bold;
            cursor: pointer;
        }

        .terms {
            display: flex;
            align-items: flex-start;
            gap: 10px;
            margin: 22px 0;
            font-size: 13px;
            color: #64748b;
            line-height: 1.6;
        }

        .terms input {
            width: 16px;
            height: 16px;
            margin-top: 3px;
            flex-shrink: 0;
            cursor: pointer;
        }

        a {
            color: #315ee7;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        .register-btn {
            width: 100%;
            padding: 14px;
            background: #315ee7;
            color: #ffffff;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background 0.2s, transform 0.2s;
        }

        .register-btn:hover {
            background: #2448bf;
            transform: translateY(-1px);
        }

        .signin {
            text-align: center;
            margin-top: 24px;
            font-size: 14px;
            color: #64748b;
        }

        .footer {
            text-align: center;
            margin-top: 28px;
            padding-top: 20px;
            border-top: 1px solid #e2e8f0;
        }

        .footer h2 {
            font-size: 17px;
            color: #172554;
            margin-bottom: 7px;
        }

        .footer p {
            font-size: 13px;
            color: #64748b;
        }

        .success-message {
            display: none;
            text-align: center;
            padding: 20px 0;
        }

        .success-message h2 {
            color: #15803d;
            margin-bottom: 12px;
        }

        .success-message p {
            color: #64748b;
            line-height: 1.7;
        }

        @media (max-width: 480px) {
            .container {
                padding: 25px 20px;
            }

            .header h1 {
                font-size: 22px;
            }
        }
    </style>
</head>

<body>

    <main class="container">

        <div id="registrationForm">

            <header class="header">
                <div class="logo">VT</div>

                <h1>Start Your DevOps Journey</h1>

                <p>
                    Join Virtual TechBox on YouTube and take the next
                    step in your DevOps learning journey.
                </p>
            </header>

            <form action="action_page.php" method="POST" id="registerForm">

                <div class="form-group">
                    <label for="Name">Full Name</label>
                    <input
                        type="text"
                        id="Name"
                        name="Name"
                        placeholder="Enter your full name"
                        autocomplete="name"
                        required
                    >
                </div>

                <div class="form-group">
                    <label for="mobile">Mobile Number</label>
                    <input
                        type="tel"
                        id="mobile"
                        name="mobile"
                        placeholder="Enter your mobile number"
                        autocomplete="tel"
                        inputmode="tel"
                        pattern="[0-9]{10}"
                        maxlength="10"
                        title="Enter a valid 10-digit Indian mobile number"
                        required
                    >
                </div>

                <div class="form-group">
                    <label for="email">Email Address</label>
                    <input
                        type="email"
                        id="email"
                        name="email"
                        placeholder="you@example.com"
                        autocomplete="email"
                        required
                    >
                </div>

                <div class="form-group">
                    <label for="psw">Create Password</label>

                    <div class="password-wrapper">
                        <input
                            type="password"
                            id="psw"
                            name="psw"
                            placeholder="Create a strong password"
                            autocomplete="new-password"
                            minlength="8"
                            required
                        >

                        <button
                            type="button"
                            class="toggle-password"
                            data-target="psw"
                            aria-label="Show password"
                        >Show</button>
                    </div>
                </div>

                <div class="form-group">
                    <label for="psw-repeat">Confirm Password</label>

                    <div class="password-wrapper">
                        <input
                            type="password"
                            id="psw-repeat"
                            name="psw-repeat"
                            placeholder="Enter your password again"
                            autocomplete="new-password"
                            minlength="8"
                            required
                        >

                        <button
                            type="button"
                            class="toggle-password"
                            data-target="psw-repeat"
                            aria-label="Show confirm password"
                        >Show</button>
                    </div>
                </div>

                <label class="terms">
                    <input type="checkbox" id="terms" name="terms" required>

                    <span>
                        I agree to the
                        <a href="#" id="termsLink">Terms &amp; Privacy Policy</a>
                        of the learning platform.
                    </span>
                </label>

                <button type="submit" class="register-btn">
                    Create My Account
                </button>

            </form>

            <div class="signin">
                Already have an account?
                <a href="#" id="signinLink">Sign in</a>
            </div>

            <footer class="footer">
                <h2>Learn. Build. Grow.</h2>
                <p>Happy Learning! See you in the DevOps community.</p>
            </footer>

        </div>

        <div class="success-message" id="successMessage" role="status">
            <h2>Registration Successful!</h2>
            <p>
                Thank you for joining our DevOps learning community.
                Get ready to learn, build projects, and grow your skills!
            </p>
        </div>

    </main>


</body>
</html>
