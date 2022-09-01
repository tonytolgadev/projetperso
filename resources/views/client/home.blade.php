@extends('client_layout.client')

@section('title')
    Accueil
@endsection

@section('content')
    <!-- start content -->

    <section id="home-section" class="hero">
        <div class="home-slider owl-carousel">
            @foreach ($sliders as $slider)
                <div class="slider-item" style="background-image: url(storage/slider_images/{{ $slider->slider_image }});">
                    <div class="overlay"></div>
                    <div class="container">
                        <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">

                            <div class="col-md-12 ftco-animate text-center">
                                <h1 class="mb-2">Nous servons des légumes frais &amp; Des fruits</h1>
                                <h2 class="subheading mb-4">Nous livrons des légumes bio &amp; des fruits</h2>
                                <p><a href="{{ url('/shop') }}" class="btn btn-primary">Achetez maintenant</a></p>
                            </div>

                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </section>

    <section class="ftco-section">
        <div class="container">
            <div class="row no-gutters ftco-services">
                <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
                    <div class="media block-6 services mb-md-0 mb-4">
                        <div class="icon bg-color-1 active d-flex justify-content-center align-items-center mb-2">
                            <span class="flaticon-shipped"></span>
                        </div>
                        <div class="media-body">
                            <h3 class="heading">Livraison gratuite</h3>
                            <span>Pour les commandes de plus de 50€</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
                    <div class="media block-6 services mb-md-0 mb-4">
                        <div class="icon bg-color-2 d-flex justify-content-center align-items-center mb-2">
                            <span class="flaticon-diet"></span>
                        </div>
                        <div class="media-body">
                            <h3 class="heading">Produits frais</h3>
                            <span>Produits toujours bien emballé</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
                    <div class="media block-6 services mb-md-0 mb-4">
                        <div class="icon bg-color-3 d-flex justify-content-center align-items-center mb-2">
                            <span class="flaticon-award"></span>
                        </div>
                        <div class="media-body">
                            <h3 class="heading">Qualité excellente</h3>
                            <span>Produits de qualité</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
                    <div class="media block-6 services mb-md-0 mb-4">
                        <div class="icon bg-color-4 d-flex justify-content-center align-items-center mb-2">
                            <span class="flaticon-customer-service"></span>
                        </div>
                        <div class="media-body">
                            <h3 class="heading">Support</h3>
                            <span>24/7 Support</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section ftco-category ftco-no-pt">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="row">
                        <div class="col-md-6 order-md-last align-items-stretch d-flex">
                            <div class="category-wrap-2 ftco-animate img align-self-stretch d-flex"
                                style="background-image: url(frontend/images/category.jpg);">
                                <div class="text text-center">
                                    <h2>Légumes</h2>
                                    <p>Protégez la santé de chaque foyer</p>
                                    {{-- <p><a href="{{ url('/shop') }}" class="btn btn-primary">Achetez maintenant</a></p> --}}
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="category-wrap ftco-animate img mb-4 d-flex align-items-end"
                                style="background-image: url(frontend/images/category-1.jpg);">
                                <div class="text px-3 py-1">
                                    <h2 class="mb-0"><a href="#">Fruits</a></h2>
                                </div>
                            </div>
                            <div class="category-wrap ftco-animate img d-flex align-items-end"
                                style="background-image: url(frontend/images/category-2.jpg);">
                                <div class="text px-3 py-1">
                                    <h2 class="mb-0"><a href="#">Légumes</a></h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="category-wrap ftco-animate img mb-4 d-flex align-items-end"
                        style="background-image: url(frontend/images/category-3.jpg);">
                        <div class="text px-3 py-1">
                            <h2 class="mb-0"><a href="#">Jus</a></h2>
                        </div>
                    </div>
                    <div class="category-wrap ftco-animate img d-flex align-items-end"
                        style="background-image: url(frontend/images/category-4.jpg);">
                        <div class="text px-3 py-1">
                            <h2 class="mb-0"><a href="#">Fruits secs</a></h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section">
        <div class="container">
            <div class="row justify-content-center mb-3 pb-3">
                <div class="col-md-12 heading-section text-center ftco-animate">
                    <span class="subheading">Produits populaires</span>
                    <h2 class="mb-4r">Nos produits</h2>
                    {{-- <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia</p> --}}
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                @foreach ($products as $product)
                    <div class="col-md-6 col-lg-3 ftco-animate">
                        <div class="product">
                            <a href="#" class="img-prod"><img class="img-fluid"
                                    src="storage/product_images/{{ $product->product_image }}" alt="Colorlib Template">
                                <div class="overlay"></div>
                            </a>
                            <div class="text py-3 pb-4 px-3 text-center">
                                <h3><a href="#">{{ $product->product_name }}</a></h3>
                                <div class="d-flex">
                                    <div class="pricing">
                                        <p class="price"><span>{{ $product->product_price }}€</span></p>
                                    </div>
                                </div>
                                <div class="bottom-area d-flex px-3">
                                    <div class="m-auto d-flex">
                                        {{-- <a href="#"
                                            class="add-to-cart d-flex justify-content-center align-items-center text-center">
                                            <span><i class="ion-ios-menu"></i></span>
                                        </a> --}}
                                        <a href="{{ url('ajouteraupanier/' . $product->id) }}"
                                            class="buy-now d-flex justify-content-center align-items-center mx-1">
                                            <span><i class="ion-ios-cart"></i></span>
                                        </a>
                                        {{-- <a href="#" class="heart d-flex justify-content-center align-items-center ">
                                            <span><i class="ion-ios-heart"></i></span>
                                        </a> --}}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </section>

    <section class="ftco-section img" style="background-image: url(frontend/images/bg_3.jpg);">
        <div class="container">
            <div class="row justify-content-end">
                <div class="col-md-6 heading-section ftco-animate deal-of-the-day ftco-animate">
                    <span class="subheading">Meilleur prix pour vous</span>
                    <h2 class="mb-4">Offre du jour</h2>
                    {{-- <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia</p> --}}
                    <h3><a href="#">Epinards</a></h3>
                    <span class="price">€10 <a href="#">maintenant €5 seulement</a></span>
                    {{-- <div id="timer" class="d-flex mt-5">
                        <div class="time" id="days"></div>
                        <div class="time pl-3" id="hours"></div>
                        <div class="time pl-3" id="minutes"></div>
                        <div class="time pl-3" id="seconds"></div>
                    </div> --}}
                </div>
            </div>
        </div>
    </section>

    <section class="ftco-section testimony-section">
        <div class="container">
            <div class="row justify-content-center mb-5 pb-3">
                <div class="col-md-7 heading-section ftco-animate text-center">
                    <span class="subheading">Témoignage</span>
                    <h2 class="mb-4">Nos clients satisfait disent</h2>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live
                        the blind texts. Separated they live in</p>
                </div>
            </div>
            <div class="row ftco-animate">
                <div class="col-md-12">
                    <div class="carousel-testimony owl-carousel">
                        <div class="item">
                            <div class="testimony-wrap p-4 pb-5">
                                <div class="user-img mb-5" style="background-image: url(frontend/images/icon-female.png)">
                                    <span class="quote d-flex align-items-center justify-content-center">
                                        <i class="icon-quote-left"></i>
                                    </span>
                                </div>
                                <div class="text text-center">
                                    <p class="mb-5 pl-4 line">Livraison rapide</p>
                                    <p class="name">Julie</p>
                                    <span class="position">Cliente</span>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimony-wrap p-4 pb-5">
                                <div class="user-img mb-5" style="background-image: url(frontend/images/icon-male.jpg)">
                                    <span class="quote d-flex align-items-center justify-content-center">
                                        <i class="icon-quote-left"></i>
                                    </span>
                                </div>
                                <div class="text text-center">
                                    <p class="mb-5 pl-4 line">Produits de qualité, je recommande</p>
                                    <p class="name">Dimitri</p>
                                    <span class="position">Client</span>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimony-wrap p-4 pb-5">
                                <div class="user-img mb-5" style="background-image: url(frontend/images/icon-male.jpg)">
                                    <span class="quote d-flex align-items-center justify-content-center">
                                        <i class="icon-quote-left"></i>
                                    </span>
                                </div>
                                <div class="text text-center">
                                    <p class="mb-5 pl-4 line">Difficile de trouver mieux</p>
                                    <p class="name">Benoît</p>
                                    <span class="position">Client</span>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimony-wrap p-4 pb-5">
                                <div class="user-img mb-5" style="background-image: url(frontend/images/icon-female.png)">
                                    <span class="quote d-flex align-items-center justify-content-center">
                                        <i class="icon-quote-left"></i>
                                    </span>
                                </div>
                                <div class="text text-center">
                                    <p class="mb-5 pl-4 line">Excellent, rien à signaler</p>
                                    <p class="name">Sarah</p>
                                    <span class="position">Cliente</span>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="testimony-wrap p-4 pb-5">
                                <div class="user-img mb-5" style="background-image: url(frontend/images/icon-male.jpg)">
                                    <span class="quote d-flex align-items-center justify-content-center">
                                        <i class="icon-quote-left"></i>
                                    </span>
                                </div>
                                <div class="text text-center">
                                    <p class="mb-5 pl-4 line">Pas déçu, je compte recommander chez MarketFrais</p>
                                    <p class="name">Kylian</p>
                                    <span class="position">Client</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <hr>

    <section class="ftco-section ftco-partner">
        <div class="container">
            <div class="row">
                <div class="col-sm ftco-animate">
                    <a href="#" class="partner"><img src="frontend/images/partner-1.png" class="img-fluid"
                            alt="Colorlib Template"></a>
                </div>
                <div class="col-sm ftco-animate">
                    <a href="#" class="partner"><img src="frontend/images/partner-2.png" class="img-fluid"
                            alt="Colorlib Template"></a>
                </div>
                <div class="col-sm ftco-animate">
                    <a href="#" class="partner"><img src="frontend/images/partner-3.png" class="img-fluid"
                            alt="Colorlib Template"></a>
                </div>
                <div class="col-sm ftco-animate">
                    <a href="#" class="partner"><img src="frontend/images/partner-4.png" class="img-fluid"
                            alt="Colorlib Template"></a>
                </div>
                <div class="col-sm ftco-animate">
                    <a href="#" class="partner"><img src="frontend/images/partner-5.png" class="img-fluid"
                            alt="Colorlib Template"></a>
                </div>
            </div>
        </div>
    </section>

    <!-- end content -->
@endsection

@section('scripts')
    <script>
            // Alerted = variable qui check le cache localstorage, il regarde si l'item alerted est present.
            var alerted = localStorage.getItem('alerted') || '';

            // Il  vérifie la présence de l'item
            if (alerted != 'yes') {

            // Affichage de l'alerte si il ne trouve pas l'item
            setTimeout(() => {
                alert('Bienvenue sur notre site MarketFrais!\nBonne Visite🍌🥝🍏🍉🍅🍈🍍🍒🍇')
            }, 500);

            // Stockage de l'item en cache
            localStorage.setItem('alerted', 'yes');
        }
    </script>

@endsection
