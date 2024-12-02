<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Attentes - Ingénierie de Production</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="/">Ingénierie de Production</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="/">Accueil</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/challenges">Enjeux</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="/expectations">Attentes</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="card mb-4">
        <img src="https://images.unsplash.com/photo-1581092160607-ee22731c2f54?w=800&auto=format" 
             class="card-img-top" alt="Technical Skills"
             style="height: 200px; object-fit: cover;">
        <div class="card-body">
            <!-- contenu existant -->
        </div>
    </div>
    
    <div class="card">
        <img src="https://images.unsplash.com/photo-1581092787557-7e9f999d0739?w=800&auto=format" 
             class="card-img-top" alt="Career Growth"
             style="height: 200px; object-fit: cover;">
        <div class="card-body">
            <!-- contenu existant -->
        </div>
    </div>
    <div class="container mt-5">
        <h1>Attentes et Compétences en Ingénierie de Production</h1>
        <div class="row mt-4">
            <div class="col-md-6">
                <div class="card mb-4">
                    <div class="card-body">
                        <h3>Compétences Techniques</h3>
                        <ul>
                            <li>Maîtrise des outils de GPAO</li>
                            <li>Connaissance des normes ISO</li>
                            <li>Expertise en méthodes Lean</li>
                            <li>Gestion de maintenance</li>
                        </ul>
                    </div>
                </div>
                <div class="card">
                    <div class="card-body">
                        <h3>Soft Skills</h3>
                        <ul>
                            <li>Leadership et management</li>
                            <li>Communication efficace</li>
                            <li>Résolution de problèmes</li>
                            <li>Adaptabilité</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card mb-4">
                    <div class="card-body">
                        <h3>Évolution de Carrière</h3>
                        <ul>
                            <li>Directeur de production</li>
                            <li>Responsable amélioration continue</li>
                            <li>Chef de projet industriel</li>
                            <li>Consultant en organisation</li>
                        </ul>
                    </div>
                </div>
                <div class="card">
                    <div class="card-body">
                        <h3>Formation Continue</h3>
                        <ul>
                            <li>Certifications Lean Six Sigma</li>
                            <li>Management de la qualité</li>
                            <li>Gestion de projet</li>
                            <li>Industrie 4.0</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
</body>
</html>