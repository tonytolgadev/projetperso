@extends('admin_layout.admin')

@section('title')
    Dashboard
@endsection

@section('content')
    {{-- Start content --}}

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0 text-dark">Bienvenue sur l'espace administrateur</h1>
                    </div><!-- /.col -->

                    <div class="container">

                    <a class="navbar-brand" href="#">
                        <img src="{{ asset('backend/dist/img/logo.png') }}" alt="" >
                    </a>
                </div>
                </div>
            </div>
                    </section>
                    <!-- /.content -->
                <!-- /.content-wrapper -->

                {{-- End Content --}}
            @endsection
