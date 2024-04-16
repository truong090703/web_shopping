<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dolphin Sport</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Ch?nh font ch? cho navbar-brand */
        .navbar-brand {
            font-family: 'Arial', sans-serif; /* Thay 'Arial' b?ng font ch? mong mu?n */
            font-weight: bold;
            font-size: 24px; /* Kích th??c font ch? */
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="index.jsp">Dolphin Sport</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse"
                data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mx-auto"> <!-- Thêm class mx-auto ?? c?n ch?nh menu ra gi?a -->
                <li class="nav-item"><a class="nav-link" href="index.jsp"><strong>Home</strong></a></li>
                <li class="nav-item"><a class="nav-link" href="cart.jsp"><strong>Cart</strong> <span class="badge badge-danger">${cart_list.size()}</span> </a></li>
                    <% if (auth != null) { %>
                <li class="nav-item"><a class="nav-link" href="orders.jsp"><strong>Orders</strong></a></li>
                <li class="nav-item"><a class="nav-link" href="log-out"><strong>Logout</strong></a></li>
                    <% } else { %>
                <li class="nav-item"><a class="nav-link" href="login.jsp"><strong>Login</strong></a></li>
                    <% } %>
            </ul>

            <!-- Thanh tìm ki?m -->
            <form class="form-inline my-2 my-lg-0" action="search.jsp" method="get"> <!-- ?i?u h??ng ??n trang search.jsp khi tìm ki?m -->
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="query">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>

<!-- Bootstrap JS và Popper.js -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
