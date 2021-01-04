const aliens= require('./aliens');

module.exports =(app)=>{

  // aliens route
  app.use('/api/aliens', aliens)

  // API home page  
  app.use('/', 
    (req, res)=>{
      res.send('Hello 🌎, welcome on Aliens 👽 API!');
    }
  )
}