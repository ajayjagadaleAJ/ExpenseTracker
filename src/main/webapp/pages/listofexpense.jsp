<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
            height: 100vh;
            
        }
        .container {
            background: white;
            padding: 40px;
            box-shadow: 0 0 10px rgba(7, 7, 7, 0.1);
            text-align: center;
            width: 100%;
            max-width: 90%;
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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</head>
<body>
    
<div class="container">
    <h1>Expense List</h1> 
           
       
      <table class="table" >
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Expense Name</th>
            <th scope="col">Expense Amount</th>
            <th scope="col">Expense Date</th>
            <th scope="col">Expense Description</th>
            <th scope="col">Actions</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach items="${mm}" var="e">
          <tr>
            <th scope="row">${e.id}</th>
            <td>${e.expensename}</td>
            <td>${e.amount}</td>
            <td>${e.date}</td>
            <td>${e.description}</td>
            <td>
               <button class="btn-primary"><a style="color: white;" href="edit/${e.id}">Edit</a></button> 
               <button class="btn-danger"><a style="color: white;" href="/delete/${e.id}">Delete</a></button> 
            </td>
           
            </c:forEach>  
          </tr>
        </tbody>
      </table>
       
          
    </div>
</div>  
 
</body>
</html>
