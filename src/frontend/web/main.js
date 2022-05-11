/**
 * 의사 검진 메인페이지 함수
 */
function getChildrenList() {


	fetch('https://jsonplaceholder.typicode.com/posts')
		.then((response) => response.json())
		.then((json) => {
			let table = document.createElement("table");
			const body = document.getElementById("children_table");
			
			
			for (let i = 0; i < json.length; i++) {
				const tr = table.insertRow();
				const td1 = tr.insertCell();
				const td2 = tr.insertCell();
				const td3 = tr.insertCell();
				const btn = document.createElement("button");
				btn.innerHTML = "검진하기";
				btn.onclick = function() {
					ba(json[i]["id"])
				};
				td1.appendChild(document.createTextNode(json[i]["id"]))
				td2.appendChild(document.createTextNode(json[i]["title"]))
				td3.appendChild(btn);
			}
			body.append(table);

		})
		.catch(console.log("error"));
}

function refresh() {
	document.getElementById("children_table").innerHTML = "";
	getChildrenList()
}

function ba(num) {
	alert(num)
}

///image_upload  registration
function new_child(){
	document.getElementById("registration").style.display="block";
	document.getElementById("image_upload").style.display="none";
	
}

function checkup(child){
	document.getElementById("registration").style.display="none";
	document.getElementById("image_upload").style.display="block";
	document.getElementById("selected_child_id").value=child;
	alert(child);
	console.log(document.getElementById("selected_child_id").value);
	
}