

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
})()

// capturo datos email y contraseña de formulario

function funcPasoALocalStorage() {
  const nombreForm = document.getElementById("Nombre").value;
  const apellidoForm =document.getElementById("Apellido").value;
  const telefonoForm = document.getElementById("Telefono").value;
  const emailForm = document.getElementById("Email").value;
  const contraForm = document.getElementById("Contrasena").value;
  const ciudadForm = document.getElementById("Ciudad").value;
  const provinciaForm = document.getElementById("Provincia").value;
  const codpostForm = document.getElementById("Codpost").value;
  
  // valido que todos los campos tengan algun ingreso
  
  if (nombreForm && apellidoForm && telefonoForm && emailForm && contraForm && ciudadForm && provinciaForm && codpostForm > 0) {
    
    // paso email y contra a local storage

    localStorage.setItem("emaillocal", emailForm);
    localStorage.setItem("contralocal", contraForm);
    alert("Usuario Ingresado");
    window.location.href ="./html/login.html";
  }

};

funcPasoALocalStorage();
