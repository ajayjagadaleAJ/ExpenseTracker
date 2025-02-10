<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Expense Tracker</title>
    <style>
        body {
            
            margin: 0;
            padding: 0;
            background-color: #f3f3f3;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 300px;
            
        }
        .container {
            background: white;
            padding: 40px;
            /* border-radius: 8px; */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 90%;
            max-width: 1000px;
        }
        h1 {
            font-size: 20px;
            color: #333;
        }
        .links a {
            text-decoration: none;
            color: green;
            margin: 0 10px;
            font-weight: bold;
        }
        .description {
            margin-top: 10px;
            font-size: 15px;
            color: #555;
        }
        @media (max-width: 1000px) {
            .container {
                width: 90%;
                padding: 15px;
            }
            h1 {
                font-size: 18px;
            }
            .description {
                font-size: 12px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to Expense Tracker</h1>
        <div class="links">
            <a href="addexpense">Add Expense</a>
            <a href="listofexpense">Expense List</a>
        </div>
        <p class="description">Track and manage your expenses effectively. Use the navigation links to add new expenses or view your expense history.</p>
    </div>
</body>
</html>
