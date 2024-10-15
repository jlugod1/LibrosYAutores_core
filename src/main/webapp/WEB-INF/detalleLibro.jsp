<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detalles del libro</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="/css/estilos.css">
</head>
<body>
    <div class="container mt-5">
        <h1 class="text-center">Detalles del libro</h1>

        <c:if test="${error != null}">
    <div class="alert alert-danger" role="alert">
        <strong>Error:</strong> ${error}
    </div>
</c:if>

<c:if test="${nombre != null}">
    <h2 class="mt-4">${nombreLibro}</h2>
    <h3>autor:</h3>
    <ul class="list-group">
       
            <li class="list-group-item">${autor}</li>
      
    </ul>
</c:if>
        <div class="text-center mt-4">
            <a href="/libros" class="btn btn-primary">Volver a la lista de libros</a>
        </div>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-W8yT5e5htFvLpGhOqXLg4y+mG6P/Ogu4yhi5J7Z1zXS//5Fb7P3YJ35pR95QW6Ho" crossorigin="anonymous"></script>
</body>
</html>