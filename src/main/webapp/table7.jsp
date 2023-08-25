<%@page import="util.Alpha"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>table7.jsp</title>
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
	
	select;
	alpha;
	
	 constructor() {
        this.select = document.querySelector('select');
        this.alpha = this.select.options[this.select.selectedIndex].value;
    }
	
	run() {
		console.log("run")
		
		let table = document.querySelector('table')
		for (let tr of table.rows) {
			for (let td of tr.cells) {
				if (td.innerHTML == this.alpha) {
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
		
		let table = document.querySelector('table'); // table 가져오기
	    for (let tr of table.rows) {
	        for (let td of tr.cells) {
	            td.style.visibility = 'visible'; // 모든 td를 visible로 설정
	        }
	    }

	    this.tid = []; // tid 배열 초기화
	}
	
}

window.onload = function() {
	let start = document.querySelectorAll('button')[0]
	let stop = document.querySelectorAll('button')[1]
	let select = document.querySelector('select')
	let h2 = document.querySelector('h2')

	let blink;
	start.disabled = false
	select.disabled = false
	stop.disabled = true
	
	start.onclick = function() {
		start.disabled = true
		select.disabled = true
		stop.disabled = false
		
		let alpha = select.options[select.selectedIndex].value
		h2.innerText = alpha + " 선택";
		
		blink = new Blink()
		blink.run()
		
		console.log(start)
	}
	stop.onclick = function() {
		stop.disabled = true
		start.disabled = false
		select.disabled = false
		
		blink.clear();
		
		console.log(stop)
	}

}

</script>
</head>
<body>
<h1>Table Tag 연습</h1>
<button> > Start < </button>

<select>
	<%
		for(var i=0; i<26; i++) {
			
	%>
		<option><%=(char)('A' + i)%></option>
	<%
		}
	%>
</select>

<button> > Stop < </button>
<hr>
<h2></h2>
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