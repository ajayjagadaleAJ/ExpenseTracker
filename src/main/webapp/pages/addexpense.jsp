<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Expense</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f3f3f3;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 80vh;
        }
        .container {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 80%;
            /* max-width: 600px; */
        }
        h1 {
            font-size: 20px;
            color: #333;
        }
        .form-group {
            text-align: left;
            margin-bottom: 15px;
        }
        label {
            font-size: 14px;
            color: #555;
            display: block;
            margin-bottom: 5px;
        }
        input, textarea {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        button {
            width: 100%;
            padding: 10px;
            background-color: green;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
             
        }
        button:hover {
            background-color: darkgreen;
        }
        @media (max-width: 1000px) {
            .container {
                width: 90%;
                padding: 15px;
            }
            h1 {
                font-size: 18px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Add New Expense</h1>
        <form action="/add" method="post">
            <div class="form-group">
                <label for="expensename">Expense Name:</label>
                <input type="text" id="expense" name="expensename" required>
            </div>
            <div class="form-group">
                <label for="amount">Amount:</label>
                <input type="number" id="description" name="amount" required></input>
            </div>
            <div class="form-group">
                <label for="date">Date:</label>
                <input type="date" id="date" name="date" required></input>
            </div>
            <div class="form-group">
                <label for="amount">Description:</label>
                <textarea type="number" id="description" name="description" required></textarea>
            </div>
             
            <button type="submit">Add Expense</button>
        </form>
    </div>
</body>
</html>
