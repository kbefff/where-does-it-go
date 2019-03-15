var orm = require("../config/orm.js");



var category = {
    all: function(cb){
        orm.all("category", function(result){
            cb(result);
        });
    },
    create: function(cols, vals, cb){
        orm.create("category", cols, vals, function(result){
            cb(result);
        });
    },
    update: function(objColVals, condition, cb){
        orm.update("category", objColVals, condition, function(result){
            cb(result);
        });
    },
    delete: function(condition, cb){
        orm.delete("category", condition, function(result){
            cb(result);
        });
    }
};

module.exports = category;