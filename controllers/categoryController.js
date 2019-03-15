var express = require("express");
var router = express.Router(); // this is the same as var app = express();
// we use router when we have multiple controllers
var category = require("../models/category.js");

router.get("/", function(req, res){
    category.all(function(data){
        // handlebars object
        var hbsObject = {
            // "categories:" this is a key that we need for handlebars
            categories: data
        }
        console.log(hbsObject);
        res.render("index", hbsObject);
    });
});