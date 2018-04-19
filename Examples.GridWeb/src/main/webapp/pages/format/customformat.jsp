<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/head.jsp" %>
<title>Worksheets - Aspose.Cells Grid Suite Demos</title>
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
		$.post("FormatServlet", {
			flag : method.id,
			gridwebuniqueid : $("#mycomponent").attr("webuniqueid"),
			value:$("#value").val(),
			format:$("#format").val()
		}, function(data) {
			renderData(data);
		}, "html");
	}
	
	//页面加载
	$(document).ready(function(){
		
		//loadHead();//
		
		var method = {id:"loadCustomFormatFile"};
		doClick(method);
	});
</script>
</head>
<body>
	<div>
		<p>
			Pick a date format from the list, enter a value (text) and click <b>Submit</b> to
            see how demo applies custom date format to a grid cell and displays your value in
            it.
		</p>
	</div>
 
            <div>
                <p>
                    For the NumberType detail information please see: <a href="https://docs.aspose.com/display/cellsnet/List+of+Supported+Number+Formats">
                        Formatting Cells</a>
                </p>
            </div>
	<div>
		<table>
			<tr>
				<th>Reload Data:</th>
				<td><input id="loadCustomFormatFile" type="button" value="Reload" onClick="doClick(this);"></td>
			</tr>
			<tr>
				<th>Custom Format:</th>
				<td><input id="format" type="text"></td>
				<th>Input Value:</th>
				<td>
					<input id="value" type="text">
					<input id="customFormat" type="button" value="Submit" onClick="doClick(this);">
				</td>
			</tr>
		</table>
	</div>
	<div id="gridweb"></div>
	<table  style="
    border: chocolate;
    border-style: dashed;
"><thead><tr  >
<th class="confluenceTh sortableHeader tablesorter-headerSortDown" data-column="0"><div class="tablesorter-header-inner"><p> <strong>Value</strong> </p></div></th>
<th class="confluenceTh sortableHeader" data-column="1"><div class="tablesorter-header-inner"><p> <strong>Type</strong> </p></div></th>
<th class="confluenceTh sortableHeader" data-column="2"><div class="tablesorter-header-inner"><p> <strong>Format String</strong> </p></div></th>
</tr></thead><tbody class="">

<tr>
<td ><p> 0 </p></td>
<td ><p> General </p></td>
<td ><p> General </p></td>
</tr><tr>
<td ><p> 1 </p></td>
<td ><p> Decimal </p></td>
<td ><p> 0 </p></td>
</tr><tr>
<td ><p> 2 </p></td>
<td ><p> Decimal </p></td>
<td ><p> 0.00 </p></td>
</tr><tr>
<td ><p> 3 </p></td>
<td ><p> Decimal </p></td>
<td ><p> #,##0 </p></td>
</tr><tr>
<td ><p> 4 </p></td>
<td ><p> Decimal </p></td>
<td ><p> #,##0.00 </p></td>
</tr><tr>
<td ><p> 5 </p></td>
<td ><p> Currency </p></td>
<td ><p> $#,##0;$-#,##0 </p></td>
</tr><tr>
<td ><p> 6 </p></td>
<td ><p> Currency </p></td>
<td ><p> $#,##0;$-#,##0 </p></td>
</tr><tr>
<td ><p> 7 </p></td>
<td ><p> Currency </p></td>
<td ><p> $#,##0.00;$-#,##0.00 </p></td>
</tr><tr>
<td ><p> 8 </p></td>
<td ><p> Currency </p></td>
<td ><p> $#,##0.00;$-#,##0.00 </p></td>
</tr><tr>
<td ><p> 9 </p></td>
<td ><p> Percentage </p></td>
<td ><p> 0% </p></td>
</tr><tr>
<td ><p> 10 </p></td>
<td ><p> Percentage </p></td>
<td ><p> 0.00% </p></td>
</tr><tr>
<td ><p> 11 </p></td>
<td ><p> Scientific </p></td>
<td ><p> 0.00E+00 </p></td>
</tr><tr>
<td ><p> 12 </p></td>
<td ><p> Fraction </p></td>
<td ><p> # ?/? </p></td>
</tr><tr>
<td ><p> 13 </p></td>
<td ><p> Fraction </p></td>
<td ><p> # <em>/</em> </p></td>
</tr><tr>
<td ><p> 14 </p></td>
<td ><p> Date </p></td>
<td ><p> m/d/yy </p></td>
</tr><tr>
<td ><p> 15 </p></td>
<td ><p> Date </p></td>
<td ><p> d-mmm-yy </p></td>
</tr><tr>
<td ><p> 16 </p></td>
<td ><p> Date </p></td>
<td ><p> d-mmm </p></td>
</tr><tr>
<td ><p> 17 </p></td>
<td ><p> Date </p></td>
<td ><p> mmm-yy </p></td>
</tr><tr>
<td ><p> 18 </p></td>
<td ><p> Time </p></td>
<td ><p> h:mm AM/PM </p></td>
</tr><tr>
<td ><p> 19 </p></td>
<td ><p> Time </p></td>
<td ><p> h:mm:ss AM/PM </p></td>
</tr><tr>
<td ><p> 20 </p></td>
<td ><p> Time </p></td>
<td ><p> h:mm </p></td>
</tr><tr>
<td ><p> 21 </p></td>
<td ><p> Time </p></td>
<td ><p> h:mm:ss </p></td>
</tr><tr>
<td ><p> 22 </p></td>
<td ><p> Time </p></td>
<td ><p> m/d/yy h:mm </p></td>
</tr><tr>
<td ><p> 37 </p></td>
<td ><p> Currency </p></td>
<td ><p> #,##0;-#,##0 </p></td>
</tr><tr>
<td ><p> 38 </p></td>
<td ><p> Currency </p></td>
<td ><p> #,##0;-#,##0 </p></td>
</tr><tr>
<td ><p> 39 </p></td>
<td ><p> Currency </p></td>
<td ><p> #,##0.00;-#,##0.00 </p></td>
</tr><tr>
<td ><p> 40 </p></td>
<td ><p> Currency </p></td>
<td ><p> #,##0.00;-#,##0.00 </p></td>
</tr><tr>
<td ><p> 41 </p></td>
<td ><p> Accounting </p></td>
<td ><p> _ * #,##0_ ;_ * "_ ;_ @_ </p></td>
</tr><tr>
<td ><p> 42 </p></td>
<td ><p> Accounting </p></td>
<td ><p> _ $* #,##0_ ;_ $* "_ ;_ @_ </p></td>
</tr><tr>
<td ><p> 43 </p></td>
<td ><p> Accounting </p></td>
<td ><p> _ * #,##0.00_ ;_ * "??_ ;_ @_ </p></td>
</tr><tr>
<td ><p> 44 </p></td>
<td ><p> Accounting </p></td>
<td ><p> _ $* #,##0.00_ ;_ $* "??_ ;_ @_ </p></td>
</tr><tr>
<td ><p> 45 </p></td>
<td ><p> Time </p></td>
<td ><p> mm:ss </p></td>
</tr><tr>
<td ><p> 46 </p></td>
<td ><p> Time </p></td>
<td ><p> h :mm:ss </p></td>
</tr><tr>
<td ><p> 47 </p></td>
<td ><p> Time </p></td>
<td ><p> mm:ss.0 </p></td>
</tr><tr>
<td ><p> 48 </p></td>
<td ><p> Scientific </p></td>
<td ><p> ##0.0E+00 </p></td>
</tr><tr>
<td ><p> 49 </p></td>
<td ><p> Text </p></td>
<td ><p> @ </p></td>
</tr></tbody></table>
	
</body>
</html>