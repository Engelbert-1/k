<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Product</title>
    <style>
        /* CSS styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: white;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-group {
            margin-bottom: 20px;
        }
        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        input[type="text"], textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Edit Product</h1>
        <form>
            <div class="form-group">
                <label for="name">Name:</label>
                <input value="${detail.name}" type="text" id="name" name="name" >
            </div>
            <div class="form-group">
                <label for="image">Image:</label>
                <input value="${detail.image} type="text" id="image" name="image" >
            </div>
            <div class="form-group">
                <label for="price">Price:</label>
                <input value="${detail.price}" type="text" id="price" name="price">
            </div>
            <div class="form-group">
                <label for="title">Title:</label>
                <input value="${detail.title}" type="text" id="title" name="title" >
            </div>
            <div class="form-group">
                <label for="description">Description:</label>
                <textarea value="${detail.description}" id="description" name="description"></textarea>
            </div>
           
            <button type="submit">Save</button>
        </form>
    </div>
</body>
</html>