<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Netflix Home</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        body {
            background-color: #141414;
            color: #fff;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .navbar {
            background-color: #141414 !important;
        }
        .navbar-brand {
            font-weight: bold;
            color: #e50914 !important;
            font-size: 1.8rem;
        }
        .hero {
            background: url('https://assets.nflxext.com/ffe/siteui/vlv3/6c22d1b9-b87f-4db3-9c03-0f1cfadbb102/5cbf1c35-02a4-4c27-8fc1-3f8c8e7d048e/IN-en-20251019-popsignuptwoweeks-perspective_alpha_website_small.jpg') no-repeat center center;
            background-size: cover;
            height: 70vh;
            position: relative;
        }
        .hero-overlay {
            position: absolute;
            top: 0; left: 0;
            width: 100%; height: 100%;
            background: rgba(0,0,0,0.6);
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
        }
        .hero h1 {
            font-size: 3rem;
            font-weight: bold;
        }
        .hero p {
            font-size: 1.2rem;
            margin: 20px 0;
        }
        .movie-card img {
            border-radius: 5px;
            transition: transform 0.3s;
        }
        .movie-card img:hover {
            transform: scale(1.1);
        }
        .code-section {
            background: #1e1e1e;
            padding: 20px;
            border-radius: 10px;
            margin: 20px 0;
            overflow-x: auto;
            font-family: monospace;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="#">Netflix</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navMenu">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navMenu">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">TV Shows</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Movies</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">My List</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">Search <i class="fas fa-search"></i></a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero">
        <div class="hero-overlay">
            <h1>Unlimited Movies, TV Shows, and More</h1>
            <p>Watch anywhere. Cancel anytime.</p>
            <button class="btn btn-danger btn-lg">Get Started</button>
        </div>
    </section>

    <!-- Movie Carousel -->
    <section class="container mt-5">
        <h2>Popular on Netflix</h2>
        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-4 g-4 mt-2">
            <div class="col movie-card"><img src="https://i.imgur.com/8UGfF6l.jpg" class="img-fluid" alt="Movie1"></div>
            <div class="col movie-card"><img src="https://i.imgur.com/UWbXwPn.jpg" class="img-fluid" alt="Movie2"></div>
            <div class="col movie-card"><img src="https://i.imgur.com/5QfM3Ra.jpg" class="img-fluid" alt="Movie3"></div>
            <div class="col movie-card"><img src="https://i.imgur.com/2YF8d9V.jpg" class="img-fluid" alt="Movie4"></div>
        </div>
    </section>

    <!-- Code Section (Programming Languages Example) -->
    <section class="container mt-5">
        <h2>Learn Some Code</h2>
        <p>Here are examples in different programming languages:</p>

        <div class="row row-cols-1 row-cols-md-2 g-4">
            <div class="col">
                <h5>Python Example</h5>
                <div class="code-section">
<pre>
def greet(name):
    return f"Hello, {name}!"

print(greet("Netflix"))
</pre>
                </div>
            </div>
            <div class="col">
                <h5>JavaScript Example</h5>
                <div class="code-section">
<pre>
function greet(name) {
    return `Hello, ${name}!`;
}
console.log(greet("Netflix"));
</pre>
                </div>
            </div>
            <div class="col">
                <h5>Java Example</h5>
                <div class="code-section">
<pre>
public class Hello {
    public static void main(String[] args) {
        System.out.println("Hello Netflix");
    }
}
</pre>
                </div>
            </div>
            <div class="col">
                <h5>HTML Example</h5>
                <div class="code-section">
<pre>
&lt;h1&gt;Hello Netflix&lt;/h1&gt;
&lt;p&gt;Welcome to the Netflix-style homepage.&lt;/p&gt;
</pre>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="bg-dark text-white text-center p-3 mt-5">
        &copy; 2025 Netflix Clone. All rights reserved.
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Optional JS for interactivity -->
    <script>
        // Example: Add hover effect to all movie cards
        const cards = document.querySelectorAll('.movie-card img');
        cards.forEach(card => {
            card.addEventListener('mouseover', () => card.style.transform = 'scale(1.1)');
            card.addEventListener('mouseout', () => card.style.transform = 'scale(1)');
        });
    </script>

</body>
</html>

