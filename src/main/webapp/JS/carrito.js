// PASOS

// Obtener el evento onclick del usuario en los botones agregar al carrito

// En el evento, agregar el producto seleccionado al array del carrito

// Obtenemos los datos del carrito
carrito = [];

// Validamos que tenemos datos en el carrito en el storage
if (localStorage.getItem("Carrito")) {
    carrito = JSON.parse(localStorage.getItem("Carrito"));
}

const generarCards = (productos) => {
    // Obtenemos el div que contendra las cards de productos
    let cards = document.getElementById("carrito");

    let totalcarrito = 0;
    
    productos.forEach( producto => {
        
        totalcarrito += producto.precio;  

        // Creamos la etiqueta Card
        let cardNueva = document.createElement ("div");
        cardNueva.className ="card-deck" ;
        cardNueva.style= "width: 20rem";
        
        
        let card = `
            <div class="card-body">
                <h4 class="card-text">${producto.nombre}</h4>
            </div>
            <img src="${producto.img}" alt="Card image" width="200px" height="100px">
            <div class="card-body">
                <p class="card-text">${producto.descripcion}</p>
                <p class="card-text">Precio $ ${producto.precio}</p>
            </div>
                <a class="btn btn-secondary" id="cart${producto.id}">Eliminar</a>
            </div>
        `;
        cardNueva.innerHTML =card;
        cards.appendChild(cardNueva);
        
        //tomamos id de elemento que está siendo procesado
        let productCard = document.getElementById("cart" + producto.id);

        // capturamos evento Eliminar si se activa y sacamos el producto del carrito
        productCard.addEventListener("click", (evento)=>{
            evento.preventDefault();
            // saco del array el producto eliminado
            carrito.splice(producto - 1, 1);
            // saco la card eliminada 
            cards.removeChild(cardNueva);
            // descuento el valor del ítem eliminado al total acumulado
            totalcarrito -= producto.precio;
            // guardo en LS el valor del carrito restando el ítem eliminado
            localStorage.setItem("preciocarrito", totalcarrito);
            // mustro en el HTML el valor del carrito con el ítem eliminado restado
            document.getElementById("muestropreciocarrito").innerHTML = totalcarrito;
        });
     

    });
    // guardo precio de carrito en LS
    localStorage.setItem("preciocarrito", totalcarrito);
    
    //muestro precio de total de carrito
    document.getElementById("muestropreciocarrito").innerHTML = totalcarrito;


}
//console.log("total compra: ", totalcarrito);

generarCards(carrito);

// capturamos boton finalizar de carrito para hacer la compra
const formulario = document.getElementById("formulario");

formulario.addEventListener("submit", (evento) => {
    evento.preventDefault();
    localStorage.setItem("Carrito", JSON.stringify(carrito));
    window.location.href ="./html/MediosDePago.html";
});




    

   

