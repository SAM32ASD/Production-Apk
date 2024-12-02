<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Enjeux - Ingénierie de Production</title>
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
                        <a class="nav-link active" href="/challenges">Enjeux</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/expectations">Attentes</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="hero-section mb-5">
        <img src="https://images.unsplash.com/photo-1587440871875-191322ee64b0?w=1600&auto=format" 
             class="img-fluid rounded shadow" alt="Production Challenges"
             style="width: 100%; height: 400px; object-fit: cover;">
        <div class="img-overlay"></div>
    </div>

    <div class="container mt-5">
        <h1>Les Enjeux de l'Ingénierie de Production</h1>
        <div class="row mt-4">
            <div class="col-md-6">
                <div class="card mb-4">
                    <img src="https://images.unsplash.com/photo-1581092334651-ddf26d9a09d0?w=800&auto=format" 
                         class="card-img-top" alt="Process Optimization"
                         style="height: 200px; object-fit: cover;">
                    <div class="card-body">
                        <h3>Optimisation des Processus</h3>
                        <ul>
                            <li>Réduction des temps de cycle</li>
                            <li>Amélioration de la productivité</li>
                            <li>Gestion des flux de production</li>
                            <li>Réduction des coûts opérationnels</li>
                        </ul>
                    </div>
                </div>
                <div class="card">
                    <img src="https://images.unsplash.com/photo-1581092160607-ee22731c2f54?w=800&auto=format" 
                         class="card-img-top" alt="Quality Management"
                         style="height: 200px; object-fit: cover;">
                    <div class="card-body">
                        <h3>Qualité et Normes</h3>
                        <ul>
                            <li>Respect des standards ISO</li>
                            <li>Contrôle qualité continu</li>
                            <li>Traçabilité des produits</li>
                            <li>Certification des processus</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card mb-4">
                    <img src="https://images.unsplash.com/photo-1581091226825-a6a2a5aee158?w=800&auto=format" 
                         class="card-img-top" alt="Innovation"
                         style="height: 200px; object-fit: cover;">
                    <div class="card-body">
                        <h3>Innovation Technologique</h3>
                        <ul>
                            <li>Industrie 4.0 et digitalisation</li>
                            <li>Automatisation des processus</li>
                            <li>IoT et capteurs intelligents</li>
                            <li>Big Data et Analytics</li>
                        </ul>
                    </div>
                </div>
                <div class="card">
                    <img src="https://images.unsplash.com/photo-1581092787557-7e9f999d0739?w=800&auto=format" 
                         class="card-img-top" alt="Sustainable Development"
                         style="height: 200px; object-fit: cover;">
                    <div class="card-body">
                        <h3>Développement Durable</h3>
                        <ul>
                            <li>Efficacité énergétique</li>
                            <li>Gestion des déchets industriels</li>
                            <li>Économie circulaire</li>
                            <li>Réduction de l'empreinte carbone</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container mt-5 mb-5">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <h3 class="text-center mb-4">Statistiques Clés</h3>
                        <div class="row text-center">
                            <div class="col-md-3">
                                <h4 class="text-primary">40%</h4>
                                <p>Gain de productivité moyen</p>
                            </div>
                            <div class="col-md-3">
                                <h4 class="text-primary">60%</h4>
                                <p>Réduction des déchets</p>
                            </div>
                            <div class="col-md-3">
                                <h4 class="text-primary">30%</h4>
                                <p>Économie d'énergie</p>
                            </div>
                            <div class="col-md-3">
                                <h4 class="text-primary">50%</h4>
                                <p>Amélioration qualité</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
</body>
</html>