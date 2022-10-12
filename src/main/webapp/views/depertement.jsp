<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css" />
  <link rel="stylesheet" href="css/main.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body class ="heding departments">


  <h4 id ="createdep">CREATE DEPARTMENT </h4>
</div>
  <div class="row createDepertement" align="left">
  
    <div class="col-12">
     <label >DEPARTMENT NAME</label>
      <input type="text" class="form-control department " placeholder="Depertement Name">
    </div>
      <div class="col-12">
     <label id ="selctid">
       ORGANIZATION NAME Select </label>
     <select class="form-control department " placeholder="Depertement Name"">
      <option>Select ORGANIZATION NAME </option>
  <option>NMIMS</option>
  <option>2</option>
  <option>3</option>
  <option>4</option>
</select>
    </div>
    
    
   <button class="btn btn-primary buttondep" type="submit">Button</button>
  </div>
  <table class="table tabled">
  <thead>
    <tr>
      <th scope="col">Sr.N</th>
      <th scope="col">Depertment Name</th>
      <th scope="col">Organization Name </th>
      <th scope="col">Created By</th>
      <th scope="col">Created Date </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Computer Depertment</td>
      <td>NMIMS</td>
      <td>320000_Admin</td>
      <td>2022-09-11</td>
    </tr>
   
  </tbody>
</table>
  
</body>
</html>