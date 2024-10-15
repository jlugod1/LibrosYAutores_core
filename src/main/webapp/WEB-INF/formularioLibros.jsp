<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Agregar Libro</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h1>Agregar Nuevo Libro</h1>
    <form action="/procesa/libro" method="post">
        <div class="mb-3">
            <label for="nombreLibro" class="form-label">Nombre del Libro</label>
            <input type="text" class="form-control" id="nombreLibro" name="nombreLibro" required>
        </div>
        <div class="mb-3">
            <label for="nombreAutor" class="form-label">Nombre del Autor</label>
            <input type="text" class="form-control" id="nombreAutor" name="nombreAutor" required>
        </div>
        <button type="submit" class="btn btn-primary">Agregar Libro</button>
    </form>
    <a href="/libros" class="btn btn-secondary mt-3">Volver a la lista de libros</a>
</div>
</body>
</html>
