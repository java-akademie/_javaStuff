
<!DOCTYPE html PUBLIC 	"-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">

<html>
<head>
<title>WCDS1 theFrame</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>

<frameset border="2" rows="70,70,*,50">

	<frame marginheight="20" marginwidth="20" src="theBegin.jsp"
		noresize="noresize" scrolling="no" />

	<frame marginheight="20" marginwidth="20" src="theMenue.jsp"
		noresize="noresize" scrolling="no" />

	<frameset border="2" cols="250,*">
		<frame marginheight="20" marginwidth="20" name="control"
			src="clear1.jsp" />

		<frame marginheight="20" marginwidth="20" name="main" src="clear1.jsp" />
	</frameset>

	<frame marginheight="20" marginwidth="20" src="theEnd.jsp"
		noresize="noresize" scrolling="no" />

</frameset>
</html>
