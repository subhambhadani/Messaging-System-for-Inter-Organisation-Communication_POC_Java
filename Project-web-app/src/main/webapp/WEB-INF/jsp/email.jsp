<!DOCTYPE html>
<html>
  <head>
    <title>Email Page</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <style>



        
        
      html, body {
      min-height: 100%;
      }
      body, div, form, input, select, p { 
      padding: 0;
      margin: 0;
      outline: none;
      font-family: Roboto, Arial, sans-serif;
      font-size: 16px;
      color: rgb(7, 7, 7);
      align-content: center;
      }
     
      
      
      h1, h2 {
      text-transform: uppercase;
      font-weight: 400;
      }
      h2 {
      margin: 0 0 0 8px;
      }
      .main-block {
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      height: 100%;
      padding: 25px;
      background: rgba(0, 0, 0, 0.5); 
      }
      .left-part, form {
      padding: 25px;
      }
      .left-part {
      text-align: center;
      }
      
      form {
      background: rgb(253, 252, 252); 
      
      }
      .title {
      display: flex;
      align-items: center;
      margin-bottom: 20px;
      }
      .info {
      display: flex;
      flex-direction: column;
      }
      .form{
          align-content: center;
      }
      input, select {
      padding: 5px;
      margin-bottom: 10px;
      background: transparent;
     <!-- border: none;-->
      border-bottom: 1px solid rgb(235, 227, 227);
      }
      input::placeholder {
      color: rgb(14, 12, 12);
      }
      .btn-item, button {
      padding: 10px 5px;
      margin-top: 20px;
      border-radius: 5px; 
      border: none;
      background: #26a9e0; 
      text-decoration: none;
      font-size: 15px;
      font-weight: 100;
      color: rgb(20, 20, 20);
      }
      .btn-item {
      display: inline-block;
      margin: 20px 5px 0;
      }
      button {
      width: 10%;
      }
      button:hover, .btn-item:hover {
      background: #85d6de;
      }
      @media (min-width: 25px) {
      html, body {
      height: 50%;
      }
      .main-block {
      flex-direction:row;
      height: calc(100% - 50px);
      align-content: center;
      }
      .left-part, form {
      flex: 1;
      height: auto;
      }
      }
      .form{
          width: 50%;
      }
    </style>
    
  </head>
  <body>
    <div class="main-block">
     
      <form action = "/success" method = "post">
        <div class="title">
          <i class="fa fa-envelope" style="font-size:30px;color:red"></i> 
          <h2>Email</h2>
        </div>
        <div class="info">
            <label>From:</label>
          <input class="text" type="email" name="from" required value="nishasalimath13@gmail.com" readonly>

         
          
          <label>To:</label>
          <input type="email" name="to" required>
           <label>Cc:</label>
          <input type="email" name="cc" >
          <label>Subject:</label>
          <input type="text" name="subject" required>
         
          <br>
          
          <label>Body:</label>
          <textarea rows="4" cols="50" type="text" name="body">
          </textarea>
        
         </div>
         <br>
        <input type = "submit" value="Mail Send" style="font-size:30px;color:red">
      </form>
    </div>
  </body>
</html>