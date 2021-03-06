<%@ Page Language="C#"  EnableViewStateMac="false" ViewStateEncryptionMode="Never"%>
<%@ Import Namespace="System.Net.Mail" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="NReco.PdfGenerator" %>
<script runat="server" language="c#">


protected override void OnLoad(EventArgs e) {
	base.OnLoad(e);

	if (Request.HttpMethod == "POST" && Request["action"] == "generate_pdf") {
		var htmlToPdf = new HtmlToPdfConverter();

		Response.ContentType = "application/pdf";
		if (!String.IsNullOrEmpty(Request["htmlUrl"])) {
			htmlToPdf.GeneratePdfFromFile(Request["htmlUrl"], null, Response.OutputStream);
		} else {
			htmlToPdf.GeneratePdf(Request["htmlContent"], null, Response.OutputStream);
		}
		Response.End();
	}
}

</script>

<html>
<head>
	<title>PDF Generator - WebForms Example</title>
	
	<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
</head>

<body>
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="pull-left">
				<h1>
					PDF Generator for .NET (C#)
					<small>WkHtmlToPdf wrapper</small>
				</h1>
			</div>
			<div class="clearfix"></div>
		</div>
    </div>
	<hr />


	<div class="row">
		<div class="col-md-12">
			<h2>demo</h2>
			
			<form action="<%=Request.Url.ToString() %>" target="_blank" method="post">
				<input type="hidden" name="action" value="generate_pdf" />
				<div class="form-group">
				<textarea name="htmlContent" rows="10" class="form-control" style="font-size:10px;font-family:'Courier New';width:100%;">&lt;html&gt;
&lt;head&gt;
	&lt;meta charset="utf-8"&gt; 
	&lt;style&gt;table { border:1px solid silver; border-collapse:collapse;} table td { border-bottom:1px solid silver; }&lt;/style&gt;
&lt;/head&gt;
	&lt;body&gt;
		&lt;h1 style="text-align:center;"&gt;Order #<%=DateTime.Now.Second %>&lt;/h1&gt;
		&lt;div style="float:left;"&gt;
			Donald&lt;br /&gt;
			47338 Park Avenue&lt;br /&gt;
			Big City&lt;br /&gt;&lt;br /&gt;
			Date: <%=String.Format("{0:d}",DateTime.Now) %>
		&lt;/div&gt;
		&lt;div style="float:right;"&gt;
			&lt;div style="border:1px solid gray;padding:10px;"&gt;
				A company&lt;br /&gt;
				321 City Street&lt;br /&gt;
				Industry Park&lt;br /&gt;
				Another Country
			&lt;/div&gt;
		&lt;/div&gt;
		&lt;div style="clear:both;"&gt;&lt;/div&gt;
		&lt;br /&gt;&lt;br /&gt;
		Ordered items list:
		&lt;table width="100%" style="margin-bottom:20px;"&gt;
			&lt;tr&gt;
				&lt;td&gt;T-shirt&lt;/td&gt;
				&lt;td&gt;4&lt;/td&gt;
				&lt;td&gt;$44&lt;/td&gt;
			&lt;/tr&gt;
			&lt;tr&gt;
				&lt;td&gt;Coffee cup&lt;/td&gt;
				&lt;td&gt;5&lt;/td&gt;
				&lt;td&gt;$25&lt;/td&gt;
			&lt;/tr&gt;
			&lt;tr&gt;
				&lt;td colspan="2" align="right"&gt;Total:&lt;/td&gt;
				&lt;td&gt;$69&lt;/td&gt;
			&lt;/tr&gt;
		&lt;/table&gt;


		&lt;div style="float:right;"&gt;
			Signed: <%=String.Format("{0:f}",DateTime.Now) %>&lt;br /&gt;
			From IP: <%=Request.UserHostAddress %>
			Signature:&lt;br /&gt;
			&lt;img src="http://www.nrecosite.com/img/pdfgenerator/donald_sign.jpg"/&gt;
		&lt;/div&gt;
		&lt;div style="float:left;"&gt;Sincerely,&lt;br /&gt;Donald&lt;/div&gt;
		&lt;div style="clear:both;"&gt;&lt;/div&gt;

	&lt;/body&gt;
&lt;/html&gt;</textarea>
			<br />OR specify URL:<br />
			<input type="text" class="form-control" name="htmlUrl" style="width:100%;" />

			</div>
				<button type="submit"
					class="btn btn-large btn-info generatePdf">Generate PDF Document</button>
			</form>
		</div>
	</div>


</div>


</body>
</html>