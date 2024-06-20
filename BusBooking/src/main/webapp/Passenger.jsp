<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bootstrap Form Example</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h2>Passenger Booking Information</h2>
        <form id="myForm">
        <div class="row">
            <div class="col-6 form-group">
                <label for="input1">Bus no:</label>
                <input type="text" class="form-control" id="input1" name="input1" required>
            </div>
            <div class="col-6  form-group">
                <label for="input2">Passenger Id:</label>
                <input type="text" class="form-control" id="input2" name="input2" required>
            </div>
            <div class="col-10 form-group">
                <label for="input3">Full Name:</label>
                <input type="text" class="form-control" id="input3" name="input3" required>
            </div>
            <div class="col-6 form-group">
                <label for="input4">Age:</label>
                <input type="number" class=" form-control" id="input4" name="input4" required>
            </div>
            <div class="col-6 form-group">
                <label for="input6">Amount:</label>
                <input type="text" class=" form-control" id="input6" name="input6" required>
            </div>
            <div class="col-10 form-group">
                <label for="input5">Booking Date:</label>
                <input type="date" class="form-control" id="input5" name="input5" required>
            </div>
            
            <div class="col-6 form-group">
                <label for="input7">From:</label>
                <input type="text" class="form-control" id="input7" name="input7" required>
            </div>
            <div class="col-6 form-group">
                <label for="input8">Destination:</label>
                <input type="text" class="form-control" id="input8" name="input8" required>
            </div>
          </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>

    <!-- Bootstrap JS and dependencies (jQuery and Popper.js) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>