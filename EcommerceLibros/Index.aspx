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
    <form id="form1" runat="server">
        <script src="JavaScript.js"></script>
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
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
                <a href="#Carrito" onclick="showSection('carrito')">Carrito</a>
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
                    <button class="cta-button">Ver contenido</button>
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
                    <button class="cta-button">Ver contenido</button>
                </div>
            </div>
        </section>

        <!-- Sección de Libros Físicos -->
        <section id="libros-fisicos" class="section hidden">
            <div class="content-container">
                <!-- Panel lateral para el CheckBoxList -->
                <div class="sidebar">
                    <asp:UpdatePanel ID="UpdatePanelCategorias" runat="server">
                        <ContentTemplate>
                            <asp:CheckBoxList ID="chkCategorias" runat="server" AutoPostBack="True" OnSelectedIndexChanged="chkCategorias_SelectedIndexChanged" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>

                <div class="main-content">
                    <asp:UpdatePanel ID="UpdatePanelProductos" runat="server">
                        <ContentTemplate>
                            <div class="product-grid">
                                <asp:Repeater ID="rptLibrosFisicos" runat="server">
                                    <ItemTemplate>
                                        <div class="product-card">

                                            <!-- Campo oculto para el ID del producto -->
                                            <asp:HiddenField ID="hfProductoID" runat="server" Value='<%# Eval("productoid") %>' />
                                            <!-- Campo oculto para el precio -->
                                            <asp:HiddenField ID="hfPrecio" runat="server" Value='<%# Eval("Precio") %>' />
                                            <!-- Campo oculto para la URL de la imagen -->
                                            <asp:HiddenField ID="hfUrllImagen" runat="server" Value='<%# Eval("UrllImagen") %>' />


                                            <img src='<%# Eval("UrllImagen") %>' alt='<%# Eval("Titulo") %>' />
                                            <div class="product-info">
                                                <asp:Label ID="lblTitulo" runat="server" Text='<%# Eval("Titulo") %>'></asp:Label>
                                                <p>Autor: <%# Eval("Autor") %></p>
                                                <p><%# Eval("Descripcion") %></p>
                                                <span class="price">S/ <%# Eval("Precio", "{0:N2}") %></span>
                                                <p>Páginas: <%# Eval("Paginas") %></p>
                                                <asp:Button Text="Comprar" runat="server" OnClick="btnComprar_Click" CssClass="button"/>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </section>

        <!-- Sección de Libros Digitales -->
        <section id="libros-digitales" class="section hidden">
            <div class="content-container">
                <div class="sidebar">
                    <asp:UpdatePanel ID="UpdatePanelCategorias2" runat="server">
                        <ContentTemplate>
                            <asp:CheckBoxList ID="chkCategorias2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="chkCategorias2_SelectedIndexChanged"/>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>

                <div class="main-content">
                    <asp:UpdatePanel ID="UpdatePanelProductos2" runat="server">
                        <ContentTemplate>
                            <div class="product-grid">
                                <asp:Repeater ID="rptLibrosDigitales" runat="server">
                                    <ItemTemplate>
                                        <div class="product-card">

                                            <!-- Campo oculto para el ID del producto -->
                                            <asp:HiddenField ID="hfProductoID" runat="server" Value='<%# Eval("productoid") %>' />
                                            <!-- Campo oculto para el precio -->
                                            <asp:HiddenField ID="hfPrecio" runat="server" Value='<%# Eval("Precio") %>' />
                                            <!-- Campo oculto para la URL de la imagen -->
                                            <asp:HiddenField ID="hfUrllImagen" runat="server" Value='<%# Eval("UrllImagen") %>' />


                                            <img src='<%# Eval("UrllImagen") %>' alt='<%# Eval("Titulo") %>' />
                                            <div class="product-info">
                                                <asp:Label ID="lblTitulo" runat="server" Text='<%# Eval("Titulo") %>'></asp:Label>
                                                <p>Autor: <%# Eval("Autor") %></p>
                                                <p><%# Eval("Descripcion") %></p>
                                                <span class="price">S/ <%# Eval("Precio", "{0:N2}") %></span>
                                                <asp:Button Text="Comprar" runat="server" OnClick="btnComprar_Click" CssClass="button"/>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div> 
        </section>

        <!-- Sección de Audio Libros -->
        <section id="Audio-libros" class="section hidden">
            <div class="content-container">
                <div class="sidebar">
                    <asp:UpdatePanel ID="UpdatePanelCategorias3" runat="server">
                        <ContentTemplate>
                            <asp:CheckBoxList ID="chkCategorias3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="chkCategorias3_SelectedIndexChanged"/>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>

                <div class="main-content">
                    <asp:UpdatePanel ID="UpdatePanelProducto3" runat="server">
                        <ContentTemplate>
                            <div class="product-grid">
                                <asp:Repeater ID="rptAudiolibros" runat="server">
                                    <ItemTemplate>
                                        <div class="product-card">

                                            <!-- Campo oculto para el ID del producto -->
                                            <asp:HiddenField ID="hfProductoID" runat="server" Value='<%# Eval("productoid") %>' />
                                            <!-- Campo oculto para el precio -->
                                            <asp:HiddenField ID="hfPrecio" runat="server" Value='<%# Eval("Precio") %>' />
                                            <!-- Campo oculto para la URL de la imagen -->
                                            <asp:HiddenField ID="hfUrllImagen" runat="server" Value='<%# Eval("UrllImagen") %>' />

                                            <img src='<%# Eval("UrllImagen") %>' alt='<%# Eval("Titulo") %>' />
                                            <div class="product-info">
                                                <asp:Label ID="lblTitulo" runat="server" Text='<%# Eval("Titulo") %>'></asp:Label>
                                                <p>Autor: <%# Eval("Autor") %></p>
                                                <p><%# Eval("Descripcion") %></p>
                                                <span class="price">S/ <%# Eval("Precio", "{0:N2}") %></span>
                                                <asp:Button Text="Comprar" runat="server" OnClick="btnComprar_Click" CssClass="button"/>
                                                <button class="play-button">▶️ Reproducir</button>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </section>

        <section id="carrito" class="section hidden">
            <div class="content-container">
                <asp:UpdatePanel ID="UpdatePanelCarrito" runat="server">
                    <ContentTemplate>
                        <div class="cart-items">
                            <asp:Repeater ID="rptCarrito" runat="server">
                                <ItemTemplate>
                                    <div class="cart-item">
                                        <img src='<%# Eval("UrllImagen") %>' alt='<%# Eval("Titulo") %>' />
                                        <div class="cart-info">
                                            <asp:Label ID="lblCarritoTitulo" runat="server" Text='<%# Eval("Titulo") %>'></asp:Label>
                                            <asp:HiddenField ID="hfCarritoProductoID" runat="server" Value='<%# Eval("ProductoID") %>' />
                                            <span class="price">S/ <%# Eval("Precio", "{0:N2}") %></span>
                                            <asp:TextBox ID="txtCantidad" runat="server" Text='<%# Eval("Cantidad") %>' AutoPostBack="True" OnTextChanged="ActualizarCantidad" CssClass="quantity-box"></asp:TextBox>
                                            <p>Subtotal: S/ <%# Eval("Subtotal", "{0:N2}") %></p>
                                            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="EliminarProducto_Click" CssClass="btn-eliminar" />
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                        <div class="cart-summary">
                            <h3>Total: S/ <asp:Label ID="lblTotal" runat="server" Text="0.00"></asp:Label></h3>
                        </div>
                        <div class="cart-footer">
                            <asp:Button ID="btnFinalizarCompra" runat="server" Text="Finalizar Compra" OnClick="btnFinalizarCompra_Click" CssClass="btn-finalizar-compra" />
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </section>
    </main>

    <footer>
        <p>&copy; 2024 Katsuh - Todos los derechos reservados.</p>
    </footer>

    <script src="JavaScript.js"></script>
    </form>
</body>
</html>
