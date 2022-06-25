@extends('client_layout.client')

@section('title')
    A propos
@endsection

@section('content')
    <!-- start content -->
    <style>
        h1 {
            color: green;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif
        }

        /* .image{
                        clip-path: polygon(50% 0%, 0% 100%, 100% 100%);
                    } */

        .img-fluid {
            max-width: 100%;
            height: auto;
            margin-top: 10px;
            float: left;
            margin: 0 15px 15px 0;
            clip-path: polygon(0 0, 0% 100%, 100% 51%);

        }

        .img-fluid2 {
            clip-path: polygon(0 0, 0% 100%, 77% 100%);


        }
    </style>

    <div class="container">
        <h1>A propos</h1>
        <img src="frontend/images/image_6.jpg" class="img-fluid " width="500" height="500" alt="...">

        <p> "MarketFrais" qui a été conçu par le développeur Tony Tolga ERDOGAN <br> a pour objectif de vendre des produits
            saints et bio pour satisfaire la demande de la clientèle. <br> Vous trouverez tout ce dont vous aurez besoin
            pour consommer des produits saints comme des fruits, légumes, jus, fruits secs.</p>


        <h1>Pourquoi manger bio</h1>
        <img src="frontend/images/image_5.jpg" class="img-fluid 2" width="500" height="500" alt="...">

        <p>On devrait tous avoir accès à des produits de qualité. <br>
            Quel que soit l’endroit où nous vivons.
            </p>

            <br> <br>
        <h1>Nos engagements</h1>
        <p>Vous ne trouverez pas tout chez MarketFrais. Mais vous ne trouverez pas non plus n’importe quoi. Notre catalogue
            reste à taille humaine car nous privilégions la qualité à la quantité. Nous favorisons les produits locaux, avec
            les meilleures qualités nutritionnelles, sans additifs, sans huile de palme, sans OGM, peu transformés, qui
            créent peu de déchets et qui ont une faible empreinte carbone. Tout simplement.</p> <br>
    </div>

    {{-- End content --}}
@endsection

{{-- <img src="frontend/images/image_6.jpg" width="120" height="120"> --}}
