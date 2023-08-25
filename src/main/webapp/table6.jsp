<%@page import="util.Alpha"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>table6.jsp</title>
<style type="text/css">

table {
	font-family : monospace;
	font-size : 2em;
	border-collapse: collapse;
}
</style>
<script type="text/javascript">

class Blink {
	
	tid = []
	
	run() {
		console.log("run")
		
		let table = document.querySelector('table')
		for (let tr of table.rows) {
			for (let td of tr.cells) {
				if (td.innerHTML == 'A') {
					let id = setInterval(function() {
						if (td.style.visibility == 'hidden')
							td.style.visibility = 'visible'
						else
							td.style.visibility = 'hidden'
					}, Math.random()*500+100)
			
					this.tid.push(id)
				}
			}
		}
	}
	
	clear() {
		console.log("clear")
		console.log(this.tid)
		
		for (let id of this.tid) {
			clearInterval(id)
		}
	}
	
}

window.onload = function() {
	let start = document.querySelectorAll('button')[0]
	let stop = document.querySelectorAll('button')[1]

	let blink;
	
	start.onclick = function() {
		start.disabled = true;
		stop.disabled = false;
		
		
		blink = new Blink();
		blink.run();
		
		console.log(start)
	}
	stop.onclick = function() {
		stop.disabled = true;
		start.disabled = false;
		
		blink.clear();
		
		console.log(stop)
	}

}

</script>
</head>
<body>
<h1>Table Tag 연습</h1>
<button> > Start < </button>
<button> > Stop < </button>
<hr>
<table>
	<tbody>
		<%
			for (var i=0; i<20; i++) {
		%>
		<tr>
			<%
				for (var j=0; j<40; j++) {
					var a = new Alpha();
			%>
			<td style="color:<%=a.getFg()%>; background:<%=a.getBg()%>;"><%=a.getCh()%></td>
			<%
				}	
			%>
		</tr>
		<%
			}
		%>
	</tbody>
</table>
</body>
</html>