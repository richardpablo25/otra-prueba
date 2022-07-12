const formulario = document.getElementById("form");
const userEmail = document.getElementById("email");
const userPass = document.getElementById("pass");
const alertSuccess = document.getElementById("alertSuccess");
const alertEmail = document.getElementById("alertEmail");
const alertPass = document.getElementById("alertPass");

// SETEAMOS LOS VALORES DE LOGIN POR DEFECTO
//const pass = 1234;
//const email = "mail@mail.com";

// traemos de localstorage los valores de mail y contra ingresados en registro.html

const mailsto = localStorage.getItem("emaillocal");
const contrasto = localStorage.getItem("contralocal");

const pintarMensajeExito = () => {
    alertSuccess.classList.remove("d-none");
    alertSuccess.textContent = "Login Exitoso";
};

const pintarMensajeError = (errores) => {
    //RECORREMOS LA LISTA DE ERRORES (ARRAY) => FUNCION FOREACH
    errores.forEach((item) => {
        item.tipo.classList.remove("d-none");
        item.tipo.textContent = item.msg;
    });

};

// FUNCION DEL EVENTO SUBMIT CON JS
formulario.addEventListener("submit", (e) => {

    // SIEMPRE QUE EJECUTAMOS UN EVENTO DESDE JS CON HTML
    // DEBEMOS INICIALIZAR EL EVENTO
    e.preventDefault();

    alertSuccess.classList.add("d-none");

    // GENERAMOS UN ARRAY CON LOS MENSAJES DE ERROR
    const errores = [];

    

    //valido mail y contraseña

    
    if (userEmail.value != mailsto) {
        // si no coinciden agrego la etiqueta invalid a la class
        userEmail.classList.add("is-invalid");
        // agrego objeto con push el tipo y mensaje al array de errores
        errores.push({
            tipo: alertEmail,
            msg: "Email Inválido",
        });
    } else {
        userEmail.classList.remove("is-invalid");
        userEmail.classList.add("is-valid");
        alertEmail.classList.add("d-none");
    }
    // if (parseInt(userPass.value) != contrasto) {
    if ((userPass.value) != contrasto) {
        errores.push({
            tipo: alertPass,
            msg: "Contraseña Inválida",
        });
    } else {
        alertPass.classList.add("d-none");
    }

    // si el array de errores tiene datos dentro se ejecuta y lo muestra
    if (errores.length !== 0) {
        pintarMensajeError(errores);
        return;
    }

    //console.log("Formulario enviado con éxito");
    //pintarMensajeExito();
    
    //datos correctos te mando a Inicio
    alert("Ingreso de datos Correctos");
    window.location.href ="/index.html";

});
