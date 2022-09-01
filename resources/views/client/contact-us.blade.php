<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

    <style>
        body {
            background-image: url('https://medias.toutelanutrition.com/blog/2020/08/banner-fruits.jpg');
            font-family: Arial, Helvetica, sans-serif;
        }

        * {
            box-sizing: border-box;
        }

        input[type=text],
        select,
        textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-top: 6px;
            margin-bottom: 16px;
            resize: vertical;
        }

        input[type=submit] {
            background-color: #04AA6D;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type=submit]:hover {
            background-color: #45a049;
        }

        .container {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
        }

        .submit {}
    </style>
</head>

<body>


    <div class="container">
        @if (Session::has('message_sent'))
            <div class="alert alert-success" role="alert">
                {{ Session::get('message_sent') }}
            </div>
        @endif
        <form method="POST" action="{{ route('contact.send') }}" enctype="multipart/form-data">
            @csrf

            <h3>Formulaire de contact</h3>

            <label for="name">Nom</label>
            <input type="text" name="name" placeholder="Votre nom..">

            <label for="email">Email</label>
            <input type="text" name="email" placeholder="Votre email..">

            <label for="phone">Numéro de téléphone</label>
            <input type="text" name="phone" placeholder="Votre numéro..">


            <label for="msg">Message</label>
            <textarea name="msg" placeholder="Ecrivez quelque-chose.." style="height:200px"></textarea>

            <div class="row d-flex justify-content-between">
                <div class="col-md-2">
                    <input type="submit" value="Envoyer">
                </div>
                <div class="col-md-3">
                    <p><a href="{{ url('/') }}" class="btn btn-primary py-3 px-4">Retourner à l'accueil</a></p>

                </div>
            </div>

        </form>
    </div>

</body>

</html>














{{-- <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Contactez Nous</title>

    <link rel="stylesheet" href="	https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous">
    </script>
    <link rel="stylesheet" href="	https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">

</head>

<body>

    <section style="padding-top:60px">
        <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-3"></div>
                <div class="card">
                    <div class="card-header">
                        Contactez Nous
                        <div class="card-body">
                            <form method="POST" enctype="multipart/form-data">
                                @csrf
                                <div class="form-group">
                                    <label for="name">Nom</label>
                                    <input type="text" name="name" class="form-control">
                                </div>

                                <div class="form-group">
                                    <label for="email">Email</label>
                                    <input type="text" name="email" class="form-control">
                                </div>

                                <div class="form-group">
                                    <label for="phone">Numéro</label>
                                    <input type="text" name="phone" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="msg">Message</label>
                                    <textarea name="msg" class="form-control"></textarea>
                                </div>
                                <button type="submit" class="btn btn-primary float-right">Envoyer</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous">
    </script>



</body>

</html> --}}
