/**
 * 뼈 사진 업로드 함수 구현
 */
 function image_check() {
	alert("Aaa");
	var fileInput = document.querySelector("#bone_image_upload") ;
	var formData = new FormData();

	formData.append('file', fileInput.files[0]);
	alert("Aaaaaaaa");
/*
    const options = {
      method: 'POST',
      body: formData,
    };
  */  
    //fetch('your-upload-url', options);
}