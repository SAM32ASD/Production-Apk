<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ingénierie de Production</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/">Ingénierie de Production</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" href="${pageContext.request.contextPath}/">Accueil</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/challenges">Enjeux</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/expectations">Attentes</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="hero-section mb-5">
        <img src="https://images.unsplash.com/photo-1581091226825-a6a2a5aee158?w=1600&auto=format" 
             class="img-fluid rounded shadow" alt="Modern Factory"
             style="width: 100%; height: 400px; object-fit: cover;">
        <div class="img-overlay"></div>
    </div>

    <div class="container mt-5">
        <h1>L'Ingénierie de Production Moderne</h1>
        <div class="row mt-4">
            <div class="col-md-6">
                <div class="card mb-4">
                    <div class="card-body">
                        <h3>Vue d'ensemble</h3>
                        <p>L'ingénierie de production est une discipline essentielle qui combine expertise technique, 
                           gestion de processus et optimisation des ressources. Elle est au cœur de l'industrie 4.0 
                           et de la transformation digitale.</p>
                        <ul>
                            <li>Optimisation des processus</li>
                            <li>Gestion de la qualité</li>
                            <li>Innovation technologique</li>
                            <li>Développement durable</li>
                        </ul>
                    </div>
                </div>
                <div class="card">
                    <img src="https://images.unsplash.com/photo-1581092160607-ee22731c2f54?w=800&auto=format" 
                         class="card-img-top" alt="Modern Manufacturing"
                         style="height: 200px; object-fit: cover;">
                    <div class="card-body">
                        <h3>Technologies Modernes</h3>
                        <ul>
                            <li>Intelligence Artificielle</li>
                            <li>Internet des Objets (IoT)</li>
                            <li>Big Data Analytics</li>
                            <li>Robotique Avancée</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card mb-4">
                    <img src="https://images.unsplash.com/photo-1581092787557-7e9f999d0739?w=800&auto=format" 
                         class="card-img-top" alt="DevOps Integration"
                         style="height: 200px; object-fit: cover;">
                    <div class="card-body">
                        <h3>DevOps en Production</h3>
                        <ul>
                            <li>Intégration Continue</li>
                            <li>Déploiement Automatisé</li>
                            <li>Monitoring en Temps Réel</li>
                            <li>Gestion des Configurations</li>
                        </ul>
                    </div>
                </div>
                <div class="card">
                    <div class="card-body">
                        <h3>Statistiques Clés</h3>
                        <div class="row text-center mt-3">
                            <div class="col-6">
                                <h4 class="text-primary">85%</h4>
                                <p>Automatisation</p>
                            </div>
                            <div class="col-6">
                                <h4 class="text-primary">60%</h4>
                                <p>Gain de Productivité</p>
                            </div>
                            <div class="col-6">
                                <h4 class="text-primary">40%</h4>
                                <p>Réduction des Coûts</p>
                            </div>
                            <div class="col-6">
                                <h4 class="text-primary">90%</h4>
                                <p>Satisfaction Client</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container mt-5 mb-5">
        <div class="card">
            <div class="card-body">
                <h3 class="text-center">Notre Approche</h3>
                <div class="row mt-4">
                    <div class="col-md-3 text-center">
                        <div class="circle-icon mb-3">
                            <i class="fas fa-cogs"></i>
                        </div>
                        <h4>Innovation</h4>
                        <p>Adoption des dernières technologies</p>
                    </div>
                    <div class="col-md-3 text-center">
                        <div class="circle-icon mb-3">
                            <i class="fas fa-chart-line"></i>
                        </div>
                        <h4>Performance</h4>
                        <p>Optimisation continue des processus</p>
                    </div>
                    <div class="col-md-3 text-center">
                        <div class="circle-icon mb-3">
                            <i class="fas fa-leaf"></i>
                        </div>
                        <h4>Durabilité</h4>
                        <p>Respect de l'environnement</p>
                    </div>
                    <div class="col-md-3 text-center">
                        <div class="circle-icon mb-3">
                            <i class="fas fa-users"></i>
                        </div>
                        <h4>Collaboration</h4>
                        <p>Travail d'équipe efficace</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://kit.fontawesome.com/your-code.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
</body>
</html>