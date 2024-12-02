function showSection(sectionId) {
    // Ocultar todas las secciones
    const sections = document.querySelectorAll('.section');
    sections.forEach(section => {
        section.classList.remove('active');
    });

    // Mostrar la sección seleccionada
    const activeSection = document.getElementById(sectionId);
    activeSection.classList.add('active');
}

// Mostrar la sección de "Inicio" por defecto al cargar la página
document.addEventListener("DOMContentLoaded", function () {
    showSection('inicio');
});




