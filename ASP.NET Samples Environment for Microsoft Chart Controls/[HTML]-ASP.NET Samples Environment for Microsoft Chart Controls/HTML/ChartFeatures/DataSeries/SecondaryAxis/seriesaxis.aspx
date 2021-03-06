
<%@ Page language="c#" Inherits="System.Web.UI.DataVisualization.Charting.Samples.SeriesAxis" CodeFile="SeriesAxis.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
	<head>
		<title>WebForm1</title>
		<meta content="Microsoft Visual Studio 7.0" name="GENERATOR"/>
		<meta content="C#" name="CODE_LANGUAGE"/>
		<meta content="JavaScript" name="vs_defaultClientScript"/>
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema"/>
		<link media="all" href="../../../samples.css" type="text/css" rel="stylesheet"/>
	</head>
	<body>
		<form id="Form1" method="post" runat="server">
			<p class="dscr">This sample demonstrates how to plot a series on either&nbsp;the 
				primary&nbsp;or secondary axis.</p>
			<table class="sampleTable">
				<tr>
					<td class="tdchart"><asp:chart id="Chart1" runat="server" Height="296px" Width="412px" ImageLocation="~/TempImages/ChartPic_#SEQ(300,3)" ImageType="Png" BorderlineDashStyle="Solid" BackGradientStyle="TopBottom" BackSecondaryColor="White" Palette="BrightPastel" BorderColor="26, 59, 105" BackColor="#D3DFF0" BorderWidth="2">
							<legends>
								<asp:legend LegendStyle="Row" IsTextAutoFit="False" DockedToChartArea="ChartArea1" Docking="Left" Name="Default" BackColor="Transparent" Font="Trebuchet MS, 8.25pt, style=Bold" TitleFont="Microsoft Sans Serif, 8pt, style=Bold"></asp:legend>
							</legends>
							<borderskin skinstyle="Emboss"></borderskin>
							<series>
								<asp:series ChartArea="ChartArea1" Name="Series1" BorderColor="180, 26, 59, 105" CustomProperties="DrawingStyle=LightToDark">
									<points>
										<asp:datapoint YValues="14" />
										<asp:datapoint YValues="13" />
										<asp:datapoint YValues="14" />
										<asp:datapoint YValues="18" />
										<asp:datapoint YValues="16" />
									</points>
								</asp:series>
								<asp:series ChartArea="ChartArea1" Name="Series2" BorderColor="180, 26, 59, 105">
									<points>
										<asp:datapoint YValues="10" />
										<asp:datapoint YValues="15" />
										<asp:datapoint YValues="8" />
										<asp:datapoint YValues="12" />
										<asp:datapoint YValues="18" />
									</points>
								</asp:series>
							</series>
							<chartareas>
								<asp:chartarea Name="ChartArea1" BorderColor="64, 64, 64, 64" BackSecondaryColor="White" BackColor="OldLace" ShadowColor="Transparent" BackGradientStyle="TopBottom">
									<axisy2 linecolor="64, 64, 64, 64" IsLabelAutoFit="False">
										<labelstyle font="Trebuchet MS, 8.25pt, style=Bold" />
										<majorgrid linecolor="64, 64, 64, 64" />
									</axisy2>
									<axisx2 linecolor="64, 64, 64, 64" IsLabelAutoFit="False">
										<labelstyle font="Trebuchet MS, 8.25pt, style=Bold" />
										<majorgrid linecolor="64, 64, 64, 64" />
									</axisx2>
									<area3dstyle Rotation="10" perspective="10" Inclination="15" IsRightAngleAxes="False" wallwidth="0" IsClustered="False"></area3dstyle>
									<axisy linecolor="64, 64, 64, 64" IsLabelAutoFit="False">
										<labelstyle font="Trebuchet MS, 8.25pt, style=Bold" />
										<majorgrid linecolor="64, 64, 64, 64" />
									</axisy>
									<axisx linecolor="64, 64, 64, 64" IsLabelAutoFit="False">
										<labelstyle font="Trebuchet MS, 8.25pt, style=Bold" />
										<majorgrid linecolor="64, 64, 64, 64" />
									</axisx>
								</asp:chartarea>
							</chartareas>
						</asp:chart></td>
					<td valign="top">
						<table class="controls" cellpadding="4">
							<tr>
								<td class="label">
									<asp:label id="Label1" runat="server">Series 1 X Axis:</asp:label></td>
								<td>
									<asp:dropdownlist id="Series1X" runat="server" AutoPostBack="True">
										<asp:listitem Value="Primary" Selected="True">Primary</asp:listitem>
										<asp:listitem Value="Secondary">Secondary</asp:listitem>
									</asp:dropdownlist></td>
							</tr>
							<tr>
								<td class="label">
									<asp:label id="Label2" runat="server">Series 1 Y Axis:</asp:label></td>
								<td>
									<asp:dropdownlist id="Series1Y" runat="server" AutoPostBack="True">
										<asp:listitem Value="Primary" Selected="True">Primary</asp:listitem>
										<asp:listitem Value="Secondary">Secondary</asp:listitem>
									</asp:dropdownlist></td>
							</tr>
							<tr>
								<td class="label">
									<asp:label id="Label3" runat="server">Series 2 X Axis:</asp:label></td>
								<td>
									<asp:dropdownlist id="Series2X" runat="server" AutoPostBack="True">
										<asp:listitem Value="Primary" Selected="True">Primary</asp:listitem>
										<asp:listitem Value="Secondary">Secondary</asp:listitem>
									</asp:dropdownlist></td>
							</tr>
							<tr>
								<td class="label">
									<asp:label id="Label4" runat="server">Series 2 Y Axis:</asp:label></td>
								<td>
									<asp:dropdownlist id="Series2Y" runat="server" AutoPostBack="True">
										<asp:listitem Value="Primary" Selected="True">Primary</asp:listitem>
										<asp:listitem Value="Secondary">Secondary</asp:listitem>
									</asp:dropdownlist></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<p class="dscr"></p>
		</form>
	</body>
</html>
