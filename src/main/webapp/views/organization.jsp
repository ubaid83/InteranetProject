<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css" />
  <link rel="stylesheet" href="css/main.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body class ="heding departments">
<div class ="heding">
  <h4 id ="createdep">CREATE ORGANIZATION </h4>
 
</div>
  <div class="row createDepertement" align="left">
  
    <div class="col-12">
     <label >ORGANIZATION NAME</label>
      <input type="text" class="form-control department " id ="organizationName" placeholder="Drganization Name">
    </div>
   
    
    
   <button class="btn btn-primary buttondep" type="submit">Add</button>
  </div>
  
  
  
  
	<div class="container m-auto">
	

		<table class='table table-bordered tabled' id="userTable">
			<thead>
				<tr>
					<th scope="row">Sr.N</th>
					<th scope="row">Organization Name </th>
				
					<th scope="row">Created Date </th>
						<th scope="row">Created By</th>
					
					<th scope="row">Delete</th>
					<th scope="row">Edit</th>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>


	</div>
  
  
  


</body>
<script>

$(document).ready(function(){
	getOrganizationData()

$('.buttondep').on ('click' ,function(){
  let organizationName =$('#organizationName').val();
  alert(organizationName);

 let obj ={

		 organizationName:organizationName

  }
 

 $.ajax({
 	
	  type: "POST",
	  url: "/organizationinsert",
	  contentType: "application/json; charset=utf-8",
	  data: JSON.stringify(obj),
	 
	  success: function(resp){
		  swal("Organization Successfully Created !", "You clicked the button!", "success");
	  },
	    error:function(error){
	    	
		  console.log('EROORRRRRR:::::::::::', error)
	  },
	  dataType: 'JSON'
	
	});

})


function getOrganizationData(){
	$.ajax({
		  type: "POST",
		  url: "/getOrganizationData",
		  contentType: "application/json; charset=utf-8",
		  data: {},
		  success: function(resp){
			   let count =1;
			  console.log("test data ",resp)
			  
			  let htmltbel = ``
			  resp.forEach(function(item){
				  console.log('RESPONSE::::::::::', item.organizationName)
				  htmltbel += `<tr id="data-id" >
					  <td >\${count++}</td>
					  <td >\${item.organizationName}</td>
						<td>\${item.createdDate}</td>
					
						/* <td><a   class="btn btn-danger deletebtn" data-id="\${item.id}">Delete</a></td>
						<td><a class="btn btn-danger editbtn" data-id="\${item.id}">Edit</a></td> */
						
						
					</tr>`
			          })
				  $('#userTable tbody').html(htmltbel)
                  },
		        error:function(error){
			  console.log('EROORRRRRR:::::::::::', error)
		       },
		     dataType: 'JSON'
		    });
	
	
	
}








})



</script>


  

</html>