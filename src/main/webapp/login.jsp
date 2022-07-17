<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Link Bootstrap (CSS) -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>loginjsp</title>

</head>
<body>
	<!-- CABECERA -->
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
                            <a class="nav-link active" aria-current="page" href="./index.jsp">Inicio</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="./HTML/productos.html">Productos</a>
                        </li> 
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Categorías
                            </a>
                            
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="./HTML/Impresoras.html">Impresoras</a></li>
                                <li><a class="dropdown-item" href="./HTML/PCS.html">PCs armadas</a></li>
                                
                            </ul>
                        </li>
                        <li class="nav-item">
                        	<a class="nav-link" href="./HTML/Carrito.html">Carrito</a>
                        <li class="nav-item">
                            <a class="nav-link" href="./HTML/PerfilUsuario.html">Perfil</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="./HTML/Carrito.html">Carrito</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="./HTML/MediosDePago.html">Medios de Pago</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="./login.jsp">Ingreso Usuario</a>
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
    <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
    <!-- CONTENIDO PRINCIPAL -->
    <main>
    	
    	
        
        <div class="container" style="margin-top: 3%">
            <div class="mb-3">
                <a href="./registro.jsp">
                
                    <button type="submit" class="btn btn-primary" > Usuario Nuevo ? </button>
                </a>    
            </div>
        </div>    

        <div class="container" style="margin-top: 5%;">
            <h3> Usuario Existente </h3>
        
        <!-- uso metodo post para enviar a servlet login -->
            <form  id="form" method="post" action="login">
                <div class="mb-3">
                    <label for="email" class="form-label ">Email</label>
                    <input type="email" class="form-control" id="email" aria-describedby="emailHelp" name="username">
                    <div id="emailHelp" class="form-text"></div>
                    <p class="text-danger mb-2 d-none" id="alertEmail"></p>
                </div>
                <div class="mb-3">
                    <label for="pass" class="form-label ">Password</label>
                    <input type="password" class="form-control" id="pass" name="password">
                    <p class="text-danger mb-2 d-none" id="alertPass"></p>
                </div>
                
                
                <div class="form-group form button">
								<input type="submit" name="signin" id="signin"
									class="form-submit" value="Ingreso" />
				</div>
            </form>
        
            <div class="alert alert-success mt-2 d-none" id="alertSuccess"></div>
        </div>
    </main>

    <footer class="bg-light text-center text-white" style="margin-top: 5%">
        
        <div class="container p-4 pb-0">
          
          <section class="mb-4">
            <!-- Facebook -->
            <a href="http://www.facebook.com/AQUI_TU_PAGINA" target="_blank"><img alt="Siguenos en Facebook" src="https://lh6.googleusercontent.com/-CYt37hfDnQ8/T3nNydojf_I/AAAAAAAAAr0/P5OtlZxV4rk/s32/facebook32.png" width=32 height=32  /></a>
            <!-- Twitter -->
            <a href="http://twitter.com/AQUI_TU_USUARIO" target="_blank"><img src="https://lh6.googleusercontent.com/--aIk2uBwEKM/T3nN1x09jBI/AAAAAAAAAs8/qzDsbw3kEm8/s32/twitter32.png" width=32 height=32 alt="Síguenos en Twitter" /></a>
            <!-- Google -->
            <a rel="author" href="https://plus.google.com/TU_ID_GOOGLE?rel=author" target="_blank"><img alt="Siguenos en Google+" src="https://lh5.googleusercontent.com/-F_FBKktZWZk/T3nN0v4FeAI/AAAAAAAAAsc/7dHTxkxn4cI/s32/google32.png" width=32 height=32  /></a>
            <!-- Youtube -->
            <a href="URL_DE_TU_CANAL_YOUTUBE" target="_blank"><img alt="Siguenos en YouTube" src="https://lh5.googleusercontent.com/-TXzlKCbKzWs/T6mYkDhTXyI/AAAAAAAAA1U/vm95Q2KwrYg/s32/youtube32.png" width=32 height=32  /></a>
                        
          </section>
          
        </div>
       
        <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
          Av. Gaona 4243, Piso 2, CP 1264, Floresta
          © 2022 Copyright
        </div>

     
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
        
        
        <script type="text/javascript">
		var status = document.getElementById("status").value;
		if (status == "failed") {
			alert("usuario o contraseña incorrecto");
		}
		</script>
    </footer>    
</body>
</html>