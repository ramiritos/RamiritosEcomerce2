<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="EcommerceLibros.Index" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Katsuh - Librería Online</title>
    <link rel="stylesheet" href="styles/StyleSheetEC.css">
</head>
<body>
    <script src="JavaScript.js"></script>
    <header>
        <div class="logo">
            <h1>Katsuh</h1>
            <p>Tu tienda de libros online</p>
        </div>
        <nav>
            <a href="#Inicio" onclick="showSection('inicio')">Inicio</a>
            <a href="#Libros-fisicos" onclick="showSection('libros-fisicos')">Libros Físicos</a>
            <a href="#Libros-digitales" onclick="showSection('libros-digitales')">Libros Digitales</a>
            <a href="#Audio-libros" onclick="showSection('Audio-libros')">Audiolibros</a>
            <a href="#Podcast" onclick="showSection('Podcast')">Podcast</a>
        </nav>
        <div>
            <a href="Login.aspx" class="login-button">Iniciar Sesión</a>
        </div>
    </header>

    <main>
         <!-- Sección de Inicio -->
<section id="inicio" class="section inicio-bg">
    <div class="intro-text">
        <h1 class="highlight-text">Haz que su historia viva</h1>
        <h2 class="secondary-text">ADQUIERE Y PRESERVA SU LEGADO</h2>
    </div>

    <section class="about-container">
        <div class="about-box">
            <p>
                <span class="bold-text">En Katsuh</span>, celebramos la narrativa de quienes tienen una historia que contar. Nuestra plataforma ofrece una exclusiva colección de audiolibros, libros digitales y físicos, con relatos llenos de sabiduría, vivencias y experiencias inolvidables.
            </p>
            <p>
                Explora relatos que inspiran, enseñan y entretienen. Cada historia es una puerta a un mundo único, brindando conexión con voces auténticas y ricas en conocimiento. Aquí, cada libro preserva un legado y abre un camino a nuevas experiencias.
            </p>
        </div>
    </section>

    <!-- Sección de Autor con Imagen, Frase y Botón -->
    <div class="author-section">
        <img src="images/per2.jpg" alt="Doña Rosario" class="author-image" />
        <div class="author-info">
            <p class="author-bio">
                <span class="highlight-name">Doña Rosario</span>, una mujer de 67 años y exmaestra en una escuela rural, encontró un nuevo propósito al convertir sus vivencias en libros que inspiran a otros. A través de sus relatos, demuestra que nuestras historias pueden transformar vidas.
            </p>
            <blockquote class="author-quote">
                "La lectura es el puente entre el corazón humano y el infinito conocimiento."
            </blockquote>
            <button class="cta-button">¡Apóyame!</button>
        </div>
    </div>

    <div class="author-section">
        <img src="images/per1.jpg" alt="Don Julián" class="author-image" />
        <div class="author-info">
            <p class="author-bio">
                <span class="highlight-name">Don Julián</span>, un agricultor de 70 años, transformó sus anécdotas y cuentos en un libro que conecta a otros con sus raíces. Su valentía para empezar de nuevo es un testimonio de la capacidad humana de superar desafíos.
            </p>
            <blockquote class="author-quote">
                "La lectura es la llave que abre las puertas del alma al universo del saber."
            </blockquote>
            <button class="cta-button">¡Apóyame!</button>
        </div>
    </div>
</section>


        <!-- Sección de Libros Físicos -->
        <section id="libros-fisicos" class="section hidden">
            <h2>Libros Físicos</h2>
            <div class="category">
                <h3>Cuentos</h3>
                <div class="product-grid">
                    <div class="product-card">
                        <img src="images/cuento1.png" alt="Libro de Leyenda 1">
                        <div class="product-info">
                            <h4>Libro de Leyenda Física 1</h4>
                            <p>Historias cautivadoras sobre leyendas.</p>
                            <span class="price">S/ 29.99</span>
                            <button>Comprar</button>
                        </div>
                    </div>
                    <div class="product-card">
                        <img src="images/cuento2.png" alt="Libro de Leyenda 2">
                        <div class="product-info">
                            <h4>Libro de Leyenda Física Gratis</h4>
                            <p>Explora esta leyenda sin costo alguno.</p>
                            <span class="price">Gratis</span>
                            <button>Leer</button>
                        </div>
                    </div>
                    <div class="product-card">
                        <img src="images/cuento3.png" alt="Libro de Leyenda 2">
                        <div class="product-info">
                            <h4>Libro de Leyenda Física Gratis</h4>
                            <p>Explora esta leyenda sin costo alguno.</p>
                            <span class="price">Gratis</span>
                            <button>Leer</button>
                        </div>
                    </div>
                    <div class="product-card">
                        <img src="images/cuento4.png" alt="Libro de Leyenda 2">
                        <div class="product-info">
                            <h4>Libro de Leyenda Física Gratis</h4>
                            <p>Explora esta leyenda sin costo alguno.</p>
                            <span class="price">Gratis</span>
                            <button>Leer</button>
                        </div>
                    </div>
                    <div class="product-card">
                        <img src="images/cuento5.png" alt="Libro de Leyenda 2">
                        <div class="product-info">
                            <h4>Libro de Leyenda Física Gratis</h4>
                            <p>Explora esta leyenda sin costo alguno.</p>
                            <span class="price">Gratis</span>
                            <button>Leer</button>
                        </div>
                    </div>
                    <div class="product-card">
                        <img src="images/cuento6.png" alt="Libro de Leyenda 2">
                        <div class="product-info">
                            <h4>Libro de Leyenda Física Gratis</h4>
                            <p>Explora esta leyenda sin costo alguno.</p>
                            <span class="price">Gratis</span>
                            <button>Leer</button>
                        </div>
                    </div>
                    <div class="product-card">
                        <img src="images/cuento7.png" alt="Libro de Leyenda 2">
                        <div class="product-info">
                            <h4>Libro de Leyenda Física Gratis</h4>
                            <p>Explora esta leyenda sin costo alguno.</p>
                            <span class="price">Gratis</span>
                            <button>Leer</button>
                        </div>
                    </div>
                    <div class="product-card">
                        <img src="images/cuento8.png" alt="Libro de Leyenda 2">
                        <div class="product-info">
                            <h4>Libro de Leyenda Física Gratis</h4>
                            <p>Explora esta leyenda sin costo alguno.</p>
                            <span class="price">Gratis</span>
                            <button>Leer</button>
                        </div>
                    </div>
                    <div class="product-card">
                        <img src="images/cuento9.png" alt="Libro de Leyenda 2">
                        <div class="product-info">
                            <h4>Libro de Leyenda Física Gratis</h4>
                            <p>Explora esta leyenda sin costo alguno.</p>
                            <span class="price">Gratis</span>
                            <button>Leer</button>
                        </div>
                    </div><div class="product-card">
                        <img src="images/cuento10.png" alt="Libro de Leyenda 2">
                        <div class="product-info">
                            <h4>Libro de Leyenda Física Gratis</h4>
                            <p>Explora esta leyenda sin costo alguno.</p>
                            <span class="price">Gratis</span>
                            <button>Leer</button>
                        </div>
                    </div>

                </div>
            </div>
            <div class="category">
                <h3>Biografía</h3>
                <div class="product-grid">
                    <div class="product-card">
                        <img src="images/bio1.png" alt="Libro Bigrafia 1">
                        <div class="product-info">
                            <h4>Libro de Biografia 1</h4>
                            <p>Conoce la historia de ....</p>
                            <span class="price">S/ 39.99</span>
                            <button>Comprar</button>
                        </div>
                    </div>
                    <div class="product-card">
                        <img src="images/bio2.jpg" alt="Libro Bigrafia 1">
                        <div class="product-info">
                            <h4>Libro de Biografia 2</h4>
                            <p>Conoce la historia de ....</p>
                            <span class="price">S/ 25.20</span>
                            <button>Comprar</button>
                        </div>
                    </div>
                    <div class="product-card">
                        <img src="images/bio3.jpg" alt="Libro Bigrafia 1">
                        <div class="product-info">
                            <h4>Libro de Biografia 3</h4>
                            <p>Conoce la historia de ....</p>
                            <span class="price">S/ 34.32</span>
                            <button>Comprar</button>
                        </div>
                    </div>
                    <div class="product-card">
                        <img src="images/bio4.jpg" alt="Libro de Leyenda 2">
                        <div class="product-info">
                            <h4>Libro de Biografia 3</h4>
                            <p>Conoce la historia de ....</p>
                            <span class="price">Gratis</span>
                            <button>Leer</button>
                        </div>
                    </div>
                    <div class="product-card">
                        <img src="images/bio5.jpg" alt="Libro de Leyenda 2">
                        <div class="product-info">
                            <h4>Libro de Biografia 3</h4>
                            <p>Conoce la historia de ....</p>
                            <span class="price">Gratis</span>
                            <button>Leer</button>
                        </div>
                    </div>
                    <div class="product-card">
                        <img src="images/bio6.jpg" alt="Libro de Leyenda 2">
                        <div class="product-info">
                            <h4>Libro de Biografia 3</h4>
                            <p>Conoce la historia de ....</p>
                            <span class="price">Gratis</span>
                            <button>Leer</button>
                        </div>
                    </div>
                    <div class="product-card">
                        <img src="images/bio7.jpg" alt="Libro de Leyenda 2">
                        <div class="product-info">
                            <h4>Libro de Biografia 3</h4>
                            <p>Conoce la historia de ....</p>
                            <span class="price">Gratis</span>
                            <button>Leer</button>
                        </div>
                    </div>
                    <div class="product-card">
                        <img src="images/bio8.jpeg" alt="Libro de Leyenda 2">
                        <div class="product-info">
                            <h4>Libro de Biografia 3</h4>
                            <p>Conoce la historia de ....</p>
                            <span class="price">Gratis</span>
                            <button>Leer</button>
                        </div>
                    </div>
                    <div class="product-card">
                        <img src="images/bio9.jpg" alt="Libro de Leyenda 2">
                        <div class="product-info">
                            <h4>Libro de Biografia 3</h4>
                            <p>Conoce la historia de ....</p>
                            <span class="price">Gratis</span>
                            <button>Leer</button>
                        </div>
                    </div>
                    <div class="product-card">
                        <img src="images/bio10.jpg" alt="Libro de Leyenda 2">
                        <div class="product-info">
                            <h4>Libro de Biografia 3</h4>
                            <p>Conoce la historia de ....</p>
                            <span class="price">Gratis</span>
                            <button>Leer</button>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Sección de Libros Digitales -->
        <section id="libros-digitales" class="section hidden">
            <h2>Libros Digitales</h2>
            <div class="category">
                <h3>Historias</h3>
                <div class="product-grid">
                    <div class="product-card">
                        <img src="images/bio1.png" alt="Libro Digital de Historia 1">
                        <div class="product-info">
                            <h4>Libro Digital de Historia 1</h4>
                            <p>Aventuras y relatos inolvidables.</p>
                            <span class="price">S/ 24.99</span>
                            <button>Comprar</button>
                        </div>
                    </div>
                    <div class="product-card">
                        <img src="images/bio2.jpg" alt="Libro Digital de Historia 2">
                        <div class="product-info">
                            <h4>Libro Digital Gratis</h4>
                            <p>Historias digitales para leer sin costo.</p>
                            <span class="free">Gratis</span>
                            <button>Leer</button>
                        </div>
                    </div>
                    <div class="product-card">
                        <img src="images/bio3.jpg" alt="Libro Digital de Historia 2">
                        <div class="product-info">
                            <h4>Libro Digital Gratis</h4>
                            <p>Historias digitales para leer sin costo.</p>
                            <span class="free">Gratis</span>
                            <button>Leer</button>
                        </div>
                    </div>
                    <div class="product-card">
                        <img src="images/bio4.jpg" alt="Libro Digital de Historia 2">
                        <div class="product-info">
                            <h4>Libro Digital Gratis</h4>
                            <p>Historias digitales para leer sin costo.</p>
                            <span class="free">Gratis</span>
                            <button>Leer</button>
                        </div>
                    </div>
                    <div class="product-card">
                        <img src="images/bio5.jpg" alt="Libro Digital de Historia 2">
                        <div class="product-info">
                            <h4>Libro Digital Gratis</h4>
                            <p>Historias digitales para leer sin costo.</p>
                            <span class="free">Gratis</span>
                            <button>Leer</button>
                        </div>
                    </div>
                    <div class="product-card">
                        <img src="images/bio6.jpg" alt="Libro Digital de Historia 2">
                        <div class="product-info">
                            <h4>Libro Digital Gratis</h4>
                            <p>Historias digitales para leer sin costo.</p>
                            <span class="free">Gratis</span>
                            <button>Leer</button>
                        </div>
                    </div>
                    <div class="product-card">
                        <img src="images/bio7.jpg" alt="Libro Digital de Historia 2">
                        <div class="product-info">
                            <h4>Libro Digital Gratis</h4>
                            <p>Historias digitales para leer sin costo.</p>
                            <span class="free">Gratis</span>
                            <button>Leer</button>
                        </div>
                    </div>
                    <div class="product-card">
                        <img src="images/bio8.jpeg" alt="Libro Digital de Historia 2">
                        <div class="product-info">
                            <h4>Libro Digital Gratis</h4>
                            <p>Historias digitales para leer sin costo.</p>
                            <span class="free">Gratis</span>
                            <button>Leer</button>
                        </div>
                    </div>
                    <div class="product-card">
                        <img src="images/bio9.jpg" alt="Libro Digital de Historia 2">
                        <div class="product-info">
                            <h4>Libro Digital Gratis</h4>
                            <p>Historias digitales para leer sin costo.</p>
                            <span class="free">Gratis</span>
                            <button>Leer</button>
                        </div>
                    </div>
                    <div class="product-card">
                        <img src="images/bio10.jpg" alt="Libro Digital de Historia 2">
                        <div class="product-info">
                            <h4>Libro Digital Gratis</h4>
                            <p>Historias digitales para leer sin costo.</p>
                            <span class="free">Gratis</span>
                            <button>Leer</button>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Sección de Audio Libros -->
        <section id="Audio-libros" class="section hidden">
            <h2>Audio Libros</h2>
            <div class="category">
                <h3>Historias</h3>
                <div class="product-grid">
                    <div class="product-card">
                        <div class="product-info">
                            <h4>Lo que le pediría al presidente</h4>
                            <p>Autor: John Doe</p>
                            <p>Una breve descripción sobre la historia del audiolibro.</p>
                            <span class="price">S/ 29.99</span>
                            <button class="play-button">▶️ Reproducir</button>
                        </div>
                    </div>
                    <div class="product-card">
                        <div class="product-info">
                            <h4>Nombre del Audiolibro 2</h4>
                            <p>Autor: Jane Smith</p>
                            <p>Una breve descripción sobre la historia del audiolibro.</p>
                            <span class="price">S/ 19.99</span>
                            <button class="play-button">▶️ Reproducir</button>
                        </div>
                    </div>
                    <div class="product-card">
                        <div class="product-info">
                            <h4>Nombre del Audiolibro 3</h4>
                            <p>Autor: Alice Johnson</p>
                            <p>Una breve descripción sobre la historia del audiolibro.</p>
                            <span class="price">S/ 24.99</span>
                            <button class="play-button">▶️ Reproducir</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="category">
                <h3>Cuentos</h3>
                <div class="product-grid">
                    <div class="product-card">
                        <div class="product-info">
                            <h4>A mi querido lolo</h4>
                            <p>Autor: John Doe</p>
                            <p>Una breve descripción .</p>
                            <span class="price">S/ 10.99</span>
                            <button class="play-button">▶️ Reproducir</button>
                        </div>
                    </div>
                    <div class="product-card">
                        <div class="product-info">
                            <h4>Solo por esta vez...</h4>
                            <p>Autor: John Doe</p>
                            <p>Una breve descripción .</p>
                            <span class="price">S/ 12.99</span>
                            <button class="play-button">▶️ Reproducir</button>
                        </div>
                    </div>
                    <div class="product-card">
                        <div class="product-info">
                            <h4>Buenos tiempos para el cambio</h4>
                            <p>Autor: John Doe</p>
                            <p>Una breve descripción .</p>
                            <span class="price">S/ 32.99</span>
                            <button class="play-button">▶️ Reproducir</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="category">
                <h3>Anecdotas de momentos históricos</h3>
                <div class="product-grid">
                    <div class="product-card">
                        <div class="product-info">
                            <h4>Cuando conoci a Velasco</h4>
                            <p>Autor: John Doe</p>
                            <p>Una breve descripción .</p>
                            <span class="price">S/ 1.99</span>
                            <button class="play-button">▶️ Reproducir</button>
                        </div>
                    </div>
                    <div class="product-card">
                        <div class="product-info">
                            <h4>Como sobreviví a la inflacion</h4>
                            <p>Autor: John Doe</p>
                            <p>Una breve descripción .</p>
                            <span class="price">S/ 1.99</span>
                            <button class="play-button">▶️ Reproducir</button>
                        </div>
                    </div>
                    <div class="product-card">
                        <div class="product-info">
                            <h4>Tras el golpe de estado...</h4>
                            <p>Autor: John Doe</p>
                            <p>Una breve descripción .</p>
                            <span class="price">S/ 3.99</span>
                            <button class="play-button">▶️ Reproducir</button>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <!-- Sección de Planes de Membresía -->
        <section id="Podcast" class="section hidden">
            <h2>Consejos y sabiduría</h2>
            <div class="plan-grid">
                <div class="plan-card basic-plan">
                    <h3>Que hacer a mis 20's</h3>
                    <p>Junto con [autor] discutiremos [temas]</p>
                    <span class="free">S/ 1.99</span>
                    <button>Escuchar ahora</button>
                </div>
                <div class="plan-card premium-plan">
                    <h3>¿Cómo debo de planear el futuro?</h3>
                    <p>Junto con [autor] discutiremos [temas]</p>
                    <span class="free">S/ 3.99</span>
                    <button>Escuchar ahora</button>
                </div>
            </div>
        </section>
    </main>

    <footer>
        <p>&copy; 2024 Katsuh - Todos los derechos reservados.</p>
    </footer>

    <script src="JavaScript.js"></script>
</body>
</html>
