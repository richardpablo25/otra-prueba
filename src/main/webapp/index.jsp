<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="./CSS/index.css">
    
    
    <title> E-Market</title>
</head>
<body>
    <header>
        
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg fixed-top navbar-light bg-light  ">
            <div class="container-fluid">
                <img src="./images/Logo_Gugell.png" > 
                <a class="navbar-brand" href="#">E-Market</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/index.html">Inicio</a>
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
                            <a class="nav-link" href="#">Compras</a>
                        </li>
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

    <main>
        <!-- Carousel -->
        <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel" style="margin-top: 4%">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="https://i.postimg.cc/T2nNhG5Z/slide-1.jpg"    class="d-block w-100"> 
                </div>
                
                <div class="carousel-item">
                    <img src="https://i.postimg.cc/sDcn9ccm/slide-2.jpg" class="d-block w-100">
                </div>
                
                <div class="carousel-item">
                    <img src="https://i.postimg.cc/sggTnhHr/slide-3.jpg" class="d-block w-100">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
        <div class="container" style="margin-top: 3%">
            
                <h2 class="animado">OFERTAS</h2>
            
            
            <div class="row" style="margin-top: 5%">
                <div class="col">
                    <div class="card" style="width: 10rem;">
                        <img src="./imagenes/tumb_30260_1.jpeg">
                        <div class="card-body" style="text-align: center">
                            <p class="card-text">Volante </p>
                            <p class="card-text">$ 1500</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card" style="width: 10rem;">
                        <img src="./imagenes/tumb_34214_5.jpeg">
                        <div class="card-body" style="text-align: center">
                            <p class="card-text">Motherboard</p>
                            <p class="card-text">$ 6400</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card" style="width: 10rem;">
                        <img src="./imagenes/tumb_40990_1.jpeg">
                        <div class="card-body" style="text-align: center">
                            <p class="card-text">Notebook </p>
                            <p class="card-text">$ 123500</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card" style="width: 10rem;">
                        <img src="./imagenes/tumb_impresora-epson-continua_40707_6.jpeg">
                        <div class="card-body" style="text-align: center">
                            <p class="card-text">Impresora </p>
                            <p class="card-text">$ 8900</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card" style="width: 10rem;">
                        <img src="./imagenes/tumb_Notebook-Asus-Gamer-Tuf-FX506-Core-i5-Ssd-GTX1650-15_42824_1.jpeg">
                        <div class="card-body" style="text-align: center">
                            <p class="card-text">Notebook Gamer </p>
                            <p class="card-text">$ 237400</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card" style="width: 10rem;">
                        <img src="./imagenes/tumb_placa-video-AMD-Radeon-OC_39803_1.jpeg">
                        <div class="card-body" style="text-align: center">
                            <p class="card-text">Placa Video </p>
                            <p class="card-text">$ 123800</p>
                        </div>
                    </div>
                </div>
            </div>
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
    </footer>
</body>





</html>