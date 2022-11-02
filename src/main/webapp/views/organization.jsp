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
<div class ="heding">
  <h4 id ="createdep">CREATE ORGANIZATION </h4>
 
</div>
  <div class="row createDepertement" align="left">
  
    <div class="col-12">
     <label >ORGANIZATION NAME</label>
      <input type="text" class="form-control department " id ="organizationName" placeholder="Drganization Name">
    </div>
   
    
    
   <button class="btn btn-primary buttondep" type="button">Add</button>
     <button class="btn btn-primary updatebtn d-none" type="submit">Update</button>
  </div>
  
  
  
  
	<div class="container m-auto">
	

		<table class='table table-bordered tabled' id="userTable">
			<thead>
				<tr>
					<th scope="row">Sr.N</th>
					<th scope="row">Organization Name </th>
				
					<th scope="row">Created Date </th>
						
					
					<th scope="row">Action</th>
					
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
	</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>

$(document).ready(function(){
	getOrganizationData()

$('.buttondep').on('click' ,function(){
	alert("print the page")

  let organizationName =$('#organizationName').val();


       let obj ={

		 organizationName:organizationName

  }
 

 $.ajax({
 	
	  type: "POST",
	  url: "/organizationinsert",
	  contentType: "application/json; charset=utf-8",
	  data: JSON.stringify(obj),
	 
	  success: function(resp){
		  
		  
		  swal({
			  title: "Organization Successfully Created!",
			  text: "You clicked the button!",
			  icon: "success",
			  button: "Ok!",
			}).then(resulr=>{
				location.reload();
			});
		 
		  $('#organizationName').val('')
		  
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
				 
				  console.log ("item.organizationName", item.id)
				  htmltbel += `<tr id="data-id" >
					  <td >\${count++}</td>
					  <td >\${item.organizationName}</td>
						<td>\${item.createdDate}</td>
						
						<td><a class="btn btn-light deletebtn" data-id="\${item.id}" title="Update organization " style="text-decoration: none; color: black">
						<i class="fa-trash fas "></i></a>
						
						<a class="btn btn-dark editbtn" style="text-decoration: none; color: black" data-organizationName="\${item.organizationName}" data-id="\${item.id}"><i
						class="fas fa-marker fa-lg text-light"></i></a>
						</td>		
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

	
	
		$('#userTable').on('click','.deletebtn' ,function(){
			let idaa = $(this).attr('data-id');
			let ida=parseInt(idaa);
			
			swal({
				  title: "Are you sure?",
				  text: "Once deleted, you will not be able to recover this imaginary file!",
				  icon: "warning",
				  buttons: true,
				  dangerMode: true,
				})
				.then((willDelete) => {
				  if (willDelete) {
					    $.ajax({
							  type: "POST",
							  url: "/deleteOrganization?id="+ida,
							  contentType: "application/json; charset=utf-8",
							  data: {
								id:ida
							  },
							  success: function(resp){
								  if(resp =="200"){
									  
									  swal({
										  title: "Data has been Deleted!",
										  text: "You clicked the button!",
										  icon: "success",
										  button: "Ok!",
										}).then(resulr=>{
											location.reload();
										});
								  }
								 if (resp == "400"){
									 
									 console.log("not deleted data")
								 }
				                 },
							  error:function(error){
							 console.log('EROORRRRRR:::::::::::', error)
							  },
							  dataType: 'JSON'
							});
				  } else {
				    swal("Your imaginary file is safe!");
				  }
				});
			});
			
	// for edit 
	$('#userTable').on('click','.editbtn',function(){
		  let organizationName =$('#organizationName').val();

        $('#organizationName').val($(this).attr('data-organizationName'));
		 $('.buttondep').addClass('d-none')
		  $('.updatebtn').removeClass('d-none')
		  $('.updatebtn').attr('data-id',$(this).attr('data-id'))
	})
	
	//for  update
	  $('.updatebtn').on('click',function(){
		
	      let ida = $(this).attr('data-id');
	      let organizationNames =$('#organizationName').val();
		         let obj = {
					id:ida,
					organizationName:organizationNames
				  }
		  
		  console.log('obj::::::::::',obj)
		 $.ajax({
			  type: "POST",
			  url: "/editOrganization",
			  contentType:"application/json; charset=utf-8",
			  data:JSON.stringify(obj),
			  success: function(resp){
				  swal({
					  title: "Data has been Updated!",
					  text: "You clicked the button!",
					  icon: "success",
					  button: "Ok!",
					}).then(resulr=>{
						location.reload();
					});
			  },
             
			  error:function(error){
			 console.log('EROORRRRRR:::::::::::', error)
		
			  }
			  
			  })
               });

                })

</script>


</body>
</html>