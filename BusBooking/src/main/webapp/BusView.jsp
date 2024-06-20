<%@page import="java.util.Hashtable"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bus Information</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style>

</style>
</head>
<body>
    <% Hashtable<Integer, Hashtable<String, String>> hash1 = (Hashtable<Integer, Hashtable<String, String>>) request.getAttribute("data"); %>
    <div class="bg-secondary p-1 text-capitalize">
    	<h2 class="" >Available bus information</h2>
        <p class="fs-2 "><%= hash1.get(1).get("start_point") %> to <%= hash1.get(1).get("destination") %> </p>
    </div>
    
    <table class="table">
        <thead>
            <tr class="table-primary">
                <th scope="col">Bus No.</th>
                <th scope="col">Depart Date</th>
                <th scope="col">Capacity</th>
                <th scope="col">Available</th>
                <th scope="col">Start Point</th>
                <th scope="col">Destination</th>
                <th scope="col">Bus Fare</th>
                <th scope="col">Book</th>
            </tr>
        </thead>
        <tbody>
            <%  
            for(int i=1; i<=hash1.size(); i++){
            	String bus = hash1.get(i).get("bus_no");
            %>
            <form action="passenger" method=post>
              <tr class="table-info">
                <td><input readonly class="form-control" name="bus_no" value=<%= hash1.get(i).get("bus_no") %>></td>
                <td><input readonly class="form-control" name="bus_depart_date" value=<%= hash1.get(i).get("bus_depart_date") %>></td>
                <td><input readonly class="form-control" name="capacity" value=<%= hash1.get(i).get("capacity") %>></td>
                <td><input readonly class="form-control" name="avilable" value=<%= hash1.get(i).get("avilable") %>></td>
                <td><input readonly class="form-control" name="start_point" value=<%= hash1.get(i).get("start_point") %>></td>
                <td><input readonly class="form-control" name="destination" value=<%= hash1.get(i).get("destination") %>></td>
                <td><input readonly class="form-control" name="bus_fare" value=<%= hash1.get(i).get("bus_fare") %>></td>
                <td><button class="btn btn-primary">Click</button><td/>    
              </tr>
            </form>
            <%} %>
        </tbody>
    </table>
    
</body>
</html>
