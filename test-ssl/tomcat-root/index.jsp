<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Tomcat Replica</h1>
    <p>Hostname: <%= java.net.InetAddress.getLocalHost().getHostName() %></p>
    <p>Time: <%= new java.util.Date() %></p>

</body>
</html>