<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pizza Mut | Order</title>
    <%--VIEWPORT--%>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%--FAVICON--%>
    <link rel="shortcut icon" href="../img/MoonConceptSmallPatch01.svg" type="image/x-icon">
    <%--BOOTSTRAP--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <div class="card">
            <div class="card-header">
                <h2>Order you Pizza!</h2>
            </div>
            <div class="card-body">
                <form method="post">
                    <h5>Select Style...</h5>
                    <div class="input-group mb-3">
                        <label for="crust" class="input-group-text">Crust</label>
                        <select name="crust" id="crust" class="form-select">
                            <option value="thn">Thin</option>
                            <option value="med">Medium</option>
                            <option value="thk">Thick</option>
                            <option value="ny">New York</option>
                            <option value="ch">Chicago</option>
                        </select>
                    </div>
                    <div class="input-group mb-3">
                        <label for="sauce" class="input-group-text">Sauce</label>
                        <select name="sauce" id="sauce" class="form-select">
                            <option value="lt">Light</option>
                            <option value="std">Normal</option>
                            <option value="ex">Extra</option>
                        </select>
                    </div>
                    <div class="input-group mb-3">
                        <label for="size" class="input-group-text block">Size</label>
                        <select name="size" id="size" class="form-select">
                            <option value="sm">Personal Pan</option>
                            <option value="md">15 inch</option>
                            <option value="lg">24 inch</option>
                            <option value="ul">42 inch</option>
                        </select>
                    </div>
                    <hr>
                    <h5>Select Toppings...</h5>
                    <div class="row">
                        <!--Meats-->
                        <div class="col-4">
                            <p class="h4">Meats:</p>
                            <div class="form-check">
                                <input type="checkbox"
                                       name="meat"
                                       id="meat01"
                                       value="peperoni"
                                       class="form-check-input">
                                <label for="meat01" class="form-check-label">Peperoni</label>
                            </div>
                            <div class="form-check">
                                <input type="checkbox"
                                       name="meat"
                                       id="meat02"
                                       value="hamburger"
                                       class="form-check-input">
                                <label for="meat02" class="form-check-label">Hamburger</label>
                            </div>
                            <div class="form-check">
                                <input type="checkbox"
                                       name="meat"
                                       id="meat03"
                                       value="sausage"
                                       class="form-check-input">
                                <label for="meat03" class="form-check-label">Sausage</label>
                            </div>
                            <div class="form-check">
                                <input type="checkbox"
                                       name="meat"
                                       id="meat04"
                                       value="ham"
                                       class="form-check-input">
                                <label for="meat04" class="form-check-label">Ham</label>
                            </div>
                        </div>
                        <%--Veg--%>
                        <div class="col-4">
                            <p class="h4">Vegetables:</p>
                            <div class="form-check">
                                <input type="checkbox"
                                       name="veg"
                                       id="veg01"
                                       value="mushroom"
                                       class="form-check-input">
                                <label for="veg01" class="form-check-label">Mushroom</label>
                            </div>
                            <div class="form-check">
                                <input type="checkbox"
                                       name="veg"
                                       id="veg02"
                                       value="peppers"
                                       class="form-check-input">
                                <label for="veg02" class="form-check-label">Peppers</label>
                            </div>
                            <div class="form-check">
                                <input type="checkbox"
                                       name="veg"
                                       id="veg03"
                                       value="olives"
                                       class="form-check-input">
                                <label for="veg03" class="form-check-label">Olives</label>
                            </div>
                            <div class="form-check">
                                <input type="checkbox"
                                       name="veg"
                                       id="veg04"
                                       value="onions"
                                       class="form-check-input">
                                <label for="veg04" class="form-check-label">Onions</label>
                            </div>
                        </div>
                        <%--Cheese--%>
                        <div class="col-4">
                            <p class="h4">Cheese:</p>
                            <div class="form-check">
                                <input type="checkbox"
                                       name="cheese"
                                       id="cheese01"
                                       value="mozzarella"
                                       class="form-check-input">
                                <label for="cheese01" class="form-check-label">Mozzarella</label>
                            </div>
                            <div class="form-check">
                                <input type="checkbox"
                                       name="cheese"
                                       id="cheese02"
                                       value="parmesan"
                                       class="form-check-input">
                                <label for="cheese02" class="form-check-label">parmesan</label>
                            </div>
                            <div class="form-check">
                                <input type="checkbox"
                                       name="cheese"
                                       id="cheese03"
                                       value="gouda"
                                       class="form-check-input">
                                <label for="cheese03" class="form-check-label">Gouda</label>
                            </div>
                            <div class="form-check">
                                <input type="checkbox"
                                       name="cheese"
                                       id="cheese04"
                                       value="goat"
                                       class="form-check-input">
                                <label for="cheese04" class="form-check-label">Goat</label>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="form-group mt-3">
                        <label class="mb-1" for="address">Enter Address</label>
                        <input type="text" class="form-control" id="address">
                    </div>
                    <div class="card-footer w-100">
                        <button type="submit" class="btn btn-primary btn-block w-100 mt-3">Submit</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

</body>
</html>