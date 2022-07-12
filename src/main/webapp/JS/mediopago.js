// Example starter JavaScript for disabling form submissions if there are invalid fields
(function () {
	'use strict'
  
	// Fetch all the forms we want to apply custom Bootstrap validation styles to
	var forms = document.querySelectorAll('.needs-validation')
  
	// Loop over them and prevent submission
	Array.prototype.slice.call(forms)
	  .forEach(function (form) {
		form.addEventListener('submit', function (event) {
		  if (!form.checkValidity()) {
			event.preventDefault()
			event.stopPropagation()
		  }
  
		  form.classList.add('was-validated')
		}, false)
	  })
  });

  funcConfTarjeta();

  function funcConfTarjeta(){
	const nombreForm = document.getElementById("nombre").value;
	const mesForm =document.getElementById("mes").value;
	const anoForm = document.getElementById("ano").value;
	const numeroForm = document.getElementById("numero").value;
	const cvcForm = document.getElementById("cvc").value;
	

	// valido que todos los campos tengan algun ingreso
	
	if (nombreForm && mesForm && anoForm && numeroForm && cvcForm > 0) {
	  
	  // paso los datos de la tarjeta a la LS
	  localStorage.setItem("nombre", nombreForm);
	  localStorage.setItem("mes", mesForm);
	  localStorage.setItem("ano", anoForm);
	  localStorage.setItem("numero", numeroForm);
	  localStorage.setItem("cvc", cvcForm);
	  alert("Taejeta Confirmada");
	  window.location.href ="/index.html";
	  
	  
	}
  
  }
  
 