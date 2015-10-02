<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>The Collaborative International Dictionary of English</title>

    <!-- Bootstrap core CSS -->
    <link href="{{ url.path() }}assets/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="{{ url.path() }}assets/css/main.css" rel="stylesheet">
    <link href="{{ url.path() }}assets/css/font-awesome.min.css" rel="stylesheet">
    <link href="{{ url.path() }}assets/css/loaders.css" rel="stylesheet">

    <script src="{{ url.path() }}assets/js/jquery-1.10.2.min.js"></script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="/vendor/js/html5shiv.js"></script>
    <script src="/vendor/js/respond.min.js"></script>
    <![endif]-->


    {{ helper.javascript('head') }}

    <style>

    </style>

</head>

<body{% if view.bodyClass %} class="{{ view.bodyClass }}"{% endif %}>

{{ content() }}

</body>
</html>