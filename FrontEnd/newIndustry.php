<html>
  <head>
    <title>TMRCI Waybilling System - Create Industry</title>
  </head>
  <body>
    <?php require 'header.html'; ?>
    <p>This is a work in progress</p>
<form action="industryForm.php" method="post">
  <p>Town: <input type="text" name="town" /></p>
  <p>Industry Name: <input type="text" name="name" /></p>
  <p>Max Cars: <input type="text" name="max" /></p>
  <a href=industryForm.php><input type="submit" name="submit" value="Submit" /></a>
</form>
  </body>
</html>