<%--
  Created by IntelliJ IDEA.
  User: jasoncameron
  Date: 4/29/22
  Time: 10:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Pizza Order Form" />
    </jsp:include>
</head>
<body>
    <form  method="post">
        <div class="container">
            <div class="card mt-5">
                <div class="card-header">
                    <p class="h2">Get Started with Your custom Pizza!</p>
                </div>
                <div class="body">
                    <!--Crust Size-->
                    <div class="input-group mb-3">
                        <label for="crust-size" class="input-group-text">Size</label>
                        <select name="crust-size" id="crust-size" class="form-select">
                            <option selected>Choose...</option>
                            <option value="size-ten-inch">Personal Pan</option>
                            <option value="size-twelve-inch">Regular</option>
                            <option value="size-sixteen-inch">Medium</option>
                            <option value="size-twenty-inch">Large</option>
                            <option value="size-thirty-two-inch">Ultra Large</option>
                        </select>
                    </div>
                    <!--Crust Type-->
                    <div class="input-group mb-3">
                        <label for="crust-type" class="input-group-text">Crust</label>
                        <select name="crust-type" id="crust-type" class="form-select">
                            <option selected>Choose...</option>
                            <option value="type-thin">Thin</option>
                            <option value="type-regular">Regular</option>
                            <option value="type-thick">Thick</option>
                            <option value="type-new-york">New York</option>
                            <option value="type-chicago">Chicago</option>
                        </select>
                    </div>
                    <!--Sauce Amount-->
                    <div class="input-group mb-3">
                        <label for="sauce" class="input-group-text">Sauce</label>
                        <select name="sauce" id="sauce" class="form-select">
                            <option selected>Choose...</option>
                            <option value="sauce-light">Light</option>
                            <option value="sauce-regular">Regular</option>
                            <option value="sauce-extra">Extra Sauce</option>
                        </select>
                    </div>
                    <!--Toppings-->
                    <div class="container">
                        <div class="row">
                            <p class="h4">Choose Your Toppings...</p>
                            <hr>
                            <!--Meats-->
                            <div class="container col-4">
                                <div class="h5">Meat:</div>
                                <hr>
                                <div class="form-check">
                                    <input value="peperoni" type="checkbox" name="meat" id="meat-peperoni" class="form-check-input">
                                    <label for="meat-peperoni" class="form-check-label">Peperoni</label>
                                </div>
                                <div class="form-check">
                                    <input value="hamburger" type="checkbox" name="meat" id="meat-hamburger" class="form-check-input">
                                    <label for="meat-hamburger" class="form-check-label">Hamburger</label>
                                </div>
                                <div class="form-check">
                                    <input value="Ham" type="checkbox" name="meat" id="meat-ham" class="form-check-input">
                                    <label for="meat-ham" class="form-check-label">Ham</label>
                                </div>
                                <div class="form-check">
                                    <input value="sausage" type="checkbox" name="meat" id="meat-sausage" class="form-check-input">
                                    <label for="meat-sausage" class="form-check-label">Sausage</label>
                                </div>
                            </div>
                            <!--Veg-->
                            <div class="container col-4">
                                <div class="h4">Vegetables:</div>
                                <hr>
                                <div class="form-check">
                                    <input value="mushrooms" type="checkbox" name="veg" id="veg-mushroom" class="form-check-input">
                                    <label for="veg-mushroom" class="form-check-label">Mushroom</label>
                                </div>
                                <div class="form-check">
                                    <input value="peppers" type="checkbox" name="veg" id="veg-peppers" class="form-check-input">
                                    <label for="veg-peppers" class="form-check-label">Peppers</label>
                                </div>
                                <div class="form-check">
                                    <input value="olives" type="checkbox" name="veg" id="veg-olives" class="form-check-input">
                                    <label for="veg-olives" class="form-check-label">Olives</label>
                                </div>
                                <div class="form-check">
                                    <input value="onions" type="checkbox" name="veg" id="veg-onions" class="form-check-input">
                                    <label for="veg-onions" class="form-check-label">Onions</label>
                                </div>
                            </div>
                            <!--Cheese-->
                            <div class="container col-4">
                                <div class="h4">Cheese:</div>
                                <hr>
                                <div class="form-check">
                                    <input value="mozzarella" type="checkbox" name="cheese" id="cheese-mozzarella" checked class="form-check-input">
                                    <label for="cheese-mozzarella" class="form-check-label">Mozzarella</label>
                                </div>
                                <div class="form-check">
                                    <input value="parmesan" type="checkbox" name="cheese" id="cheese-parmesan" class="form-check-input">
                                    <label for="cheese-parmesan" class="form-check-label">Parmesan</label>
                                </div>
                                <div class="form-check">
                                    <input value="gouda" type="checkbox" name="cheese" id="cheese-gouda" class="form-check-input">
                                    <label for="cheese-gouda" class="form-check-label">Gouda</label>
                                </div>
                                <div class="form-check">
                                    <input value="goat" type="checkbox" name="cheese" id="cheese-goat" class="form-check-input">
                                    <label for="cheese-goat" class="form-check-label">Goat</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--Address-->
                    <div class="container">
                            <hr>
                            <div class="mb-3">
                                <label for="address" class="form-label">Please Enter Your Address...</label>
                                <textarea name="address" id="address" cols="3" rows="5"
                                          class="form-control"></textarea>
                            </div>
                            </div>
                    </div>
                </div>
                <div class="card-footer">
                    <button class="btn btn-primary btn-block w-100">Submit</button>
                </div>
            </div>


        </div>
    </form>



</body>
</html>
