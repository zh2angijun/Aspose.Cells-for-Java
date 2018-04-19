<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/head.jsp" %>
<title>Worksheets - Aspose.Cells Grid Suite Demos</title>
<script type="text/javascript" src="grid/acw_client/jquery-1.7.2.min.js"></script>
<script type="text/javascript">
function renderData(data)
	{    //the default stype part for  gridweb component  is Stylemycomponent
		$("#Stylemycomponent").remove(); 
		//need to render gridweb ,this will trigger reinit of gridweb component
		 //the default   name for  gridweb component is mycomponent
		gridwebinstance.remove("mycomponent") ;
		$("#gridweb").html(data);
	}
	function doClick(method) {
		$.post("SheetsServlet", {
			flag : method.id,
			gridwebuniqueid : $("#mycomponent").attr("webuniqueid")
		}, function(data) {
           renderData(data);
		}, "html");
	}

	//页面加载
	$(document).ready(function() {
		
		//loadHead();//
		
		var method = {
			id : "reload"
		};
		doClick(method);
	});
</script>
</head>
<body>
	<div>
		<p>
			Click <b>Add</b> to see how demo adds a worksheet, <b>Add Copy</b> to
			add a copy of active worksheet and <b>Remove Active Sheet</b> to remove
			active worksheet. Click <b>Reload</b> to re-bind data from data
			source and display data in the GridWeb Control.
			notice you can not add copy or remove on Evaluation Copyright Warning sheet 
		</p>
	</div>

	<div>
		<table>
			<tr>
				<th>Reload Data:</th>
				<td><input id="reload" type="button" value="Reload"
					onClick="doClick(this);"></td>
			</tr>
			<tr>
				<th>Add Sheet:</th>
				<td><input id="add" type="button" value="Add"
					onClick="doClick(this);"></td>
			</tr>
			<tr>
				<th>Copy Sheet:</th>
				<td><input id="copy" type="button" value="Add Copy"
					onClick="doClick(this);"></td>
			</tr>
			<tr>
				<th>Remove Sheet:</th>
				<td><input id="remove" type="button"
					value="Remove Active Sheet" onClick="doClick(this);"></td>
			</tr>
		</table>
	</div>

	<div id="gridweb"></div>
</body>
</html>