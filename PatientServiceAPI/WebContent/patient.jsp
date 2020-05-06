<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.Patient"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
	<script src="Components/jquery-3.2.1.min.js"></script>
	<script src="Components/patient.js"></script>
	<meta charset="ISO-8859-1">

</head>
<body>

<div class="container">
		<div class="row">
			<div class="col-6">

				<h1>Patient details</h1>
				<form id="formPatient" name="formPatient" method="post" action="patient.jsp">
					Name: 
					<input id="pName" name="pName" type="text"class="form-control form-control-sm">
					 <br> Address:
					<input id="pAddress" name="pAddress" type="text"class="form-control form-control-sm"> 
					<br> contact No : 
					<input id="contactNo" name="contactNo" type="text"class="form-control form-control-sm"> 
					<br> Email : 
					<input id="Email" name="Email" type="text"class="form-control form-control-sm">
					 <br>NIC : 
					 <input id="NIC" name="NIC" type="text"class="form-control form-control-sm">
					 <br>Gender :
					  <input id="Gender" name="Gender" type="text"class="form-control form-control-sm">
					 <br>date of birth :
					 <input id="DOB" name="DOB" type="text"class="form-control form-control-sm">
					 <br>
					<input id="btnSave" name="btnSave" type="button" value="Save"class="btn btn-primary">
		<input type="hidden" id="hidPatientIDSave" name="hidPatientIDSave" value="">
				</form>


				<div id="alertSuccess" class="alert alert-success"></div>
		<div id="alertError" class="alert alert-danger"></div>
  
   <br>
   <div id="divItemsGrid">
   
   <%
   
      Patient patientobj = new Patient();
      out.print(patientobj.readPatient());
   %>
   </div>

			</div>
		</div>
	</div>


</body>
</html>