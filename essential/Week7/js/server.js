var express = require('express')
var app = express()
var bodyParser = require('body-parser');
var multer = require('multer'); 
var mongoose=require('mongoose');


app.use(bodyParser.json()); // for parsing application/json
app.use(bodyParser.urlencoded({ extended: true })); // for parsing application/x-www-form-urlencoded
app.use(multer()); // for parsing multipart/form-data

var connectionString = process.env.OPENSHIFT_MONGODB_DB_URL || 'mongodb://localhost/MarvelDB';

mongoose.connect(connectionString);

/*app.get('/process',function(req,res){

  res.json(process.env);

});*/

  var ip = process.env.OPENSHIFT_NODEJS_IP || '127.0.0.1';
  var port  = process.env.OPENSHIFT_NODEJS_PORT || 8080;


var server = app.listen(port,ip);

  


    var flights = [{ airways: "Cathay Pacific", from: "San Francisco", to: "Mumbai", Model: "B-747" },
                 { airways: "United Airlines", from: "Los Angeles", to: "Boston", Model: "B-737" },
                 { airways: "Lufthansa", from: "Dubai", to: "Munich", Model: "A-380" },
                 { airways: "Air India", from: "Mumbai", to: "Jakarta", Model: "B-747" },
                 { airways: "Emirates", from: "Kuwait", to: "Istanbul", Model: "B-747" },
                 { airways: "British Airways", from: "London", to: "Seattle", Model: "A-380" },
                 { airways: "Malaysian Airlines", from: "Kuala-Lampur", to: "Sydney", Model: "A-380" },
                 { airways: "Air Canada", from: "Toronto", to: "New York", Model: "A-757"}];


  var movies = [{genre:"Horror",name:"The Excorcist",rating:"97"},
                {genre:"Horror",name:"Hostel",rating:"56"},
                {genre:"Action",name:"Top Gun",rating:"85"},
                {genre:"Comedy",name:"Monty Python & The Holy Grail",rating:"88"}];


 
    app.use(express.static(__dirname + '/public/'));

    app.get('/flights', function (req, res) {
        res.json(flights);
    });

   

    app.get('/flights/:index', function (req, res) {
        var idx = req.params.index;
        res.json(flights[idx]);
    });

      app.put('/flight/:index', function (req, res) {
        var idx = req.params.index;
        var updatedFlight=req.body;
        flights[idx]=updatedFlight;
        res.json(flights);
    });

    app.delete("/flights/:id", function (req, res) {
        var index = req.params.id;
        flights.splice(index, 1);
        res.json(flights);
    });

    app.post("/flight", function (req, res) {
        var newFlight = req.body;
        flights.push(newFlight);
        res.json(flights);
    });

    console.log('Example app listening at http://%s:%s', ip, port)



    var UserSchema=mongoose.Schema({
            fname  :  String,
            lname  :  String,
            email  :  String,
            password :  String
            });

    var UserModel = mongoose.model('UserModel',UserSchema);


   var MovieSchema = new mongoose.Schema({
    genre: String,
    name: String,
    rating: Number
}, {collection:'movie'});

  var MovieModel = mongoose.model('MovieModel',MovieSchema);

  MovieModel.count(function (err, count) {
    if (!err && count==0) 
    {

      for(i=0;i<movies.length;i++)
      {
         var movie=new MovieModel(movies[i]);
         movie.save();

      }
        
    }
});
  

    app.get("/movie",function(req,res)
    {
        MovieModel.find(function(err,document)
        {
          
           res.jsonp(document);
          
        });
    });


   


     app.post("/signup", function (req, res) {
       
       var user1 = new UserModel(req.body);
       user1.save();
    });


     app.post("/findMovie/:genre", function (req, res) {
       MovieModel.find({genre:req.params.genre},function(err,document)
       {
          if(err)
          {
            console.log('error occured');
           }
           else
           {
             res.jsonp(document);
             console.log(document[0].genre);
           }

       });
       
    });

    app.post("/findMovie/:genre/name/:movie", function (req, res) {
        var re = new RegExp(req.params.movie);
       MovieModel.find({genre:req.params.genre,name:{$regex:re}},function(err,document)
       {
          if(err)
          {
            console.log('error occured');
           }
           else
           {
             res.jsonp(document);
             console.log(document);
           }

       });
       
    });

    

     app.post("/login", function (req, res) {
       UserModel.find({email:req.body.email},function(err,document)
       {
          if(err)
          {
            console.log('error occured');
           }
           else
           {
           console.log(document);
           }
           if(req.body.password==document[0].password)
            res.send('success');
           else
           res.send('failure');

       });
       
    });


    app.put("/updatemovie", function (req, res) {
       MovieModel.findById(req.body._id,function(err,document)
       {
            document.genre = req.body.genre;
            document.name = req.body.name;
            document.rating = req.body.rating;
            return document.save(function(err) {
              if (!err) {
                console.log("updated");
              } else {
                console.log(err);
              }
              return res.send(document);
    });
  });
});


