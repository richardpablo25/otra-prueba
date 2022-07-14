<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	    <link rel="stylesheet" href="./CSS/styles.css">
	    <title>   Registro Usuariojsp </title>
	</head>
	<body>
		 <header>
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
          <div class="container-fluid">
              <img src="./images/Logo_Gugell.png" > 
              <a class="navbar-brand" href="#">E-Market</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                      <li class="nav-item">
                          <a class="nav-link active" aria-current="page" href="../index.jsp">Inicio</a>
                      </li>
                      <li class="nav-item">
                          <a class="nav-link" href="../HTML/productos.html">Productos</a>
                      </li> 
                      <li class="nav-item dropdown">
                          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                          Categor�as
                          </a>
                          
                          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                              <li><a class="dropdown-item" href="../HTML/Impresoras.html">Impresoras</a></li>
                              <li><a class="dropdown-item" href="../HTML/PCS.html">PCs armadas</a></li>
                              
                          </ul>
                      </li>
                      <li class="nav-item">
                          <a class="nav-link" href="#">Compras</a>
                      </li>
                      <li class="nav-item">
                          <a class="nav-link" href="../HTML/PerfilUsuario.html">Perfil</a>
                      </li>
                      <li class="nav-item">
                          <a class="nav-link" href="../HTML/Carrito.html">Carrito</a>
                      </li>
                      <li class="nav-item">
                          <a class="nav-link" href="../HTML/MediosDePago.html">Medios de Pago</a>
                      </li>
                      <li class="nav-item">
                          <a class="nav-link" href="../HTML/login.html">Ingreso Usuario</a>
                      </li>
                  </ul>
                  <form class="d-flex">
                  <input class="form-control me-2" type="search" placeholder="Buscar" aria-label="Search">
                  <button class="btn btn-outline-success" type="submit">Buscar</button>
                  </form>
              </div>
          </div>
      </nav>
  </header>
  
		<!--uso metodo post para enviar datos por el body, no por la url 
			action dice donde van a ser redirigidos los datos del request
			usamos atributo name del metodo   request.getAttribute
			no usamos id con getelementbyid -->
		
        <main class="container" style="margin-top: 3%;">
            <form class="row g-3 needs-validation" novalidate method="post" action="register">
                <div class="col-md-4" style="text-align: center;">
                  <label for="validationDefault01" class="form-label">Nombre</label>
                  <input type="text" name="nombre" class="form-control" id="Nombre" required>
                  <div class="valid-feedback">
                    Correcto
                  </div>
                  <div class="invalid-feedback">
                    Coloque su nombre
                  </div>
                </div>
                <div class="col-md-4" style="text-align: center;">
                
                  <label for="validationDefault02" class="form-label">Apellido</label>
                  <input type="text" name="apellido" class="form-control" id="Apellido" required>
                  <div class="valid-feedback">
                    Correcto
                  </div>
                  <div class="invalid-feedback">
                    Coloque su Apellido
                  </div>
                </div>
                
                <div class="col-md-4" style="text-align: center;">
                  <label for="validationDefault02" class="form-label">Telefono</label>
                  <input type="number" name="telefono" class="form-control" id="Telefono"  required>
                  <div class="valid-feedback">
                    Correcto
                  </div>
                  <div class="invalid-feedback">
                    Coloque su n�mero de tel�fono
                  </div>
                </div>

                <div class="col-md-4" style="text-align: center;">
                  <label for="exampleInputEmail1" class="form-label">Email </label>
                  <div class="input-group has-validation">
                    <span class="input-group-text" id="inputGroupPrepend">@</span>
                    <input type="email" name="email" class="form-control" id="Email" required>
                    
                    <div class="invalid-feedback">
                      Por favor elija un email correcto.
                    </div>
                  </div>  
                </div>
                
                <div class="col-md-4" style="text-align: center;">
                  <label for="exampleInputPassword1" class="form-label">Contrasena</label>
                  <div class="input-group has-validation">
                    <input type="password" name="contrasena" class="form-control" id="Contrasena" required>
                    <div class="invalid-feedback">
                      Por favor elija una contrase�a correcta.
                    </div>
                  </div>
                </div>
                
                
                
                <div class="col-md-5" style="text-align: center;" >
                  <label for="validationDefault03" class="form-label">Ciudad</label>
                  <div class="input-group has-validation">
                    <input type="text" name="ciudad" class="form-control" id="Ciudad" required>
                    <div class="invalid-feedback">
                      Por favor Coloque una Ciudad.
                    </div>
                
                  </div>  
                </div>
                
                <div class="col-md-5" style="text-align: center;">
                  <label for="validationDefault04" class="form-label">Provincia</label>
                  <select class="form-select" name="provincia" id="Provincia" required>
                    <option selected disabled value="">Elegir...</option>
                    <option>Buenos Aires</option>
                    <option>Cordoba</option>
                    <option>Santa Fe</option>
                    <option>La Pampa</option>
                    <option>Neuquen</option>
                    <option>Rio Negro</option>
                    <option>Chubut</option>
                    <option>Santa Cruz</option>
                    <option>Tierra del Fuego</option>
                    <option>Mendoza</option>
                    <option>San Luis</option>
                    <option>Entre Rios</option>
                    <option>Corrientes</option>
                    <option>Misiones</option>
                    <option>San Juan</option>
                    <option>La Rioja</option>
                    <option>Catamarca</option>
                    <option>Tucuman</option>
                  </select>
                </div>
                <div class="col-md-2" style="text-align: center;" >
                  
                    <label for="validationDefault05" class="form-label">C�digo Postal</label>
                    <input type="number" name="codpost" class="form-control" id="Codpost" placeholder="Ej:1407"  required>
                    <div class="invalid-feedback">
                      Por favor elija codigo valido.
                    </div>
                
                </div>

                <div class="col-12">
                  <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
                    <label class="form-check-label" for="invalidCheck">
                      Acepto condiciones
                    </label>
                    <div class="invalid-feedback">
                      Debe aceptar antes de enviar
                    </div>
                  </div>
                </div>
                
                <!--  cuando hacemos submit se ejecuta el metodo post del register
                		va al package controladores/registro.java  y ahi esta el @webServlet register	 -->
                		
                <div class="col-12">
                	<input type="submit" name="signup" id="signup"
									class="form-submit" value="Register" />
									
                  <!-- <button class="btn btn-primary" type="submit" onclick="funcPasoALocalStorage()" >enviar formulario</button> -->
                </div>
              </form>
             
                        
              

              

        </main>
        
        <footer class="bg-light text-center text-white" style="margin-top: 5%">
        
          <div class="container p-4 pb-0">
            
            <section class="mb-4">
              <!-- Facebook -->
              <a href="http://www.facebook.com/AQUI_TU_PAGINA" target="_blank"><img alt="Siguenos en Facebook" src="https://lh6.googleusercontent.com/-CYt37hfDnQ8/T3nNydojf_I/AAAAAAAAAr0/P5OtlZxV4rk/s32/facebook32.png" width=32 height=32  /></a>
              <!-- Twitter -->
              <a href="http://twitter.com/AQUI_TU_USUARIO" target="_blank"><img src="https://lh6.googleusercontent.com/--aIk2uBwEKM/T3nN1x09jBI/AAAAAAAAAs8/qzDsbw3kEm8/s32/twitter32.png" width=32 height=32 alt="S�guenos en Twitter" /></a>
              <!-- Google -->
              <a rel="author" href="https://plus.google.com/TU_ID_GOOGLE?rel=author" target="_blank"><img alt="Siguenos en Google+" src="https://lh5.googleusercontent.com/-F_FBKktZWZk/T3nN0v4FeAI/AAAAAAAAAsc/7dHTxkxn4cI/s32/google32.png" width=32 height=32  /></a>
              <!-- Youtube -->
              <a href="URL_DE_TU_CANAL_YOUTUBE" target="_blank"><img alt="Siguenos en YouTube" src="https://lh5.googleusercontent.com/-TXzlKCbKzWs/T6mYkDhTXyI/AAAAAAAAA1U/vm95Q2KwrYg/s32/youtube32.png" width=32 height=32  /></a>
                          
            </section>
            
          </div>
         
          <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
            Av. Gaona 4243, Piso 2, CP 1264, Floresta
            � 2022 Copyright
          </div>
          
          <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
          <script src="./JS/registro.js"></script>
        </footer>
	</body>
</html>