<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="smartTable">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Smart table</title>
<style type="text/css" media="screen">
table {
	border-collapse: collapse;
	border: 1px solid #FF0000;
}

table td {
	border: 1px solid #FF0000;
}

html {
	height: 100%;
}

html body {
	height: 100%;
	overflow: hidden;
}

html body .container-fluid.body-content {
	position: relative;
	top: 90px;
	bottom: 40px;
	right: 0;
	left: 0;
	overflow-y: auto;
}

header {
	position: absolute;
	left: 0;
	right: 0;
	top: 0;
	background-color: #4C4;
	height: 90px;
}

footer {
	position: absolute;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: #4C4;
	height: 40px;
}
 <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet"/> 
</style>
</head>
<body ng-controller="smartTableCtrl">
	<header>Smart Table</header>




	<div class="container-fluid body-content" style="overflow: hidden;">
		<div
			style="float: left; width: 20%; border: 3px solid black; height: 700px;"></div>
		<div style="float: right; width: 75%; overflow: auto; height: 100%;">
			<h2>Smart table ::</h2>
			<br>
			<form>
				<label for="predicate">selected predicate:</label> <select
					class="form-control" id="predicate" ng-model="selectedPredicate"
					ng-options="predicate for predicate in predicates"></select>
			</form>
			<table st-table="displayedCollection" st-safe-src="rowCollection">
				<thead>

					<tr >
						<th ng-style="mystyle={width: firstNameLength};" >first name</th>
						<th ng-style="mystyle={width: lastNameLength};" >last name</th>
						<th ng-right-click="showAction(rowCollection)">birth date</th>
						<th ng-style="mystyle={width: balanceLength};">balance</th>
						<th ng-style="mystyle={width: emailLength};">email</th>
						<th ng-style="mystyle={width: firstNameLength};">first name</th>
						<th ng-style="mystyle={width: lastNameLength};">last name</th>
						<th>birth date</th>
						<th ng-style="mystyle={width: balanceLength};">balance</th>
						<th ng-style="mystyle={width: emailLength};">email</th>
						<th ng-style="mystyle={width: firstNameLength};">first name</th>
						<th ng-style="mystyle={width: lastNameLength};">last name</th>
						<th>birth date</th>
						<th ng-style="mystyle={width: balanceLength};">balance</th>
						<th ng-style="mystyle={width: emailLength};">email</th>
					</tr>
				</thead>
				<tr>
					<th colspan="5"><input st-search="" class="form-control"
						placeholder="global search ..." type="text" /></th>
					<th><input st-search="{{selectedPredicate}}"
						placeholder="search {{selectedPredicate}}" class="input-sm form-control"
						type="search" /></th>

				</tr>
				<tbody>
					<tr ng-repeat="row in displayedCollection">
					
						<td ng-style="mystyle={width: firstNameLength};" ng-right-click="showAction(row)">{{row.firstName}}</td>
						<td ng-style="mystyle={width: lastNameLength};" ng-right-click="showAction(row)">{{row.lastName}}</td>
						<td>{{row.birthDate}}</td>
						<td ng-style="mystyle={width: balanceLength};">{{row.balance}}</td>
						<td ng-style="mystyle={width: emailLength};">{{row.email}}</td>
						<td ng-style="mystyle={width: firstNameLength};">{{row.firstName}}</td>
						<td ng-style="mystyle={width: lastNameLength};">{{row.lastName}}</td>
						<td>{{row.birthDate}}</td>
						<td ng-style="mystyle={width: balanceLength};">{{row.balance}}</td>
						<td ng-style="mystyle={width: emailLength};">{{row.email}}</td>
						<td ng-style="mystyle={width: firstNameLength};">{{row.firstName}}</td>
						<td ng-style="mystyle={width: lastNameLength};">{{row.lastName}}</td>
						<td>{{row.birthDate}}</td>
						<td ng-style="mystyle={width: balanceLength};">{{row.balance}}</td>
						<td ng-style="mystyle={width: emailLength};">{{row.email}}</td>
					</tr>
				</tbody>
			</table>
		</div>

	</div>

	<footer>hello</footer>


	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/angular-smart-table/2.1.3/smart-table.min.js"></script>

	<script type="text/javascript" src="resources/js/smartTable.js"></script>

</body>
</html>