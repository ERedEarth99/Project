<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Bootstrap Site</title>
  <link ref="stylesheet" href="./WebProject.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>    
</head>
<body>
<h1>Movies</h1>
<!-- // Movie Forms -->
<form action="movieForms.php">
<label for="Mname">Movie: 
</label><br>
<input type="text" id="Mname"
name="Mname" value="">

<label for="Ymovie">Year: 
</label>
<input type="text" id="Ymovie"
name="Ymovie" value="">

<label for="Mdirector"> Director: 
</label>
<input type="text" id="Mdirector"
name="Mdirector" value="">

<label for="Mpublisher"> Publisher: 
</label>
<input type="text" id="Mpublisher"
name="Mpublisher" value="">

<label for="Mgenre"> Genre: 
</label>
<input type="text" id="Mgenre"
name="Mgenre" value="">

<label for="Mrating"> Rating: 
</label>
<input type="text" id="Mrating"
name="Mrating" value=""><br>

<input type="Submit" value="Submit">
</form>
</body>
</html>