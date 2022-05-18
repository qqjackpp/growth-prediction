/**
 * 
 */
 
 function show_unauthorized_user(){
	let autho_area = document.getElementById("authorized_user_area");
	let	unautho_area = document.getElementById("unauthorized_user_area");
	
	autho_area.style.display = "none";
	unautho_area.style.display = "block";
	
}

function show_authorized_user(){
	let autho_area = document.getElementById("authorized_user_area");
	let	unautho_area = document.getElementById("unauthorized_user_area");
	
	autho_area.style.display = "block";
	unautho_area.style.display = "none";

	
	
}