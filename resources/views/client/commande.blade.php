@extends('client_layout.client')

@section('title')
    Accueil
@endsection

@section('content')
    <!-- start content -->
 <!-- Content Wrapper. Contains page content -->
 <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Commande</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Accueil</a></li>
              <li class="breadcrumb-item active">Commande</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Toutes les commandes</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>Date</th>
                    <th>Adresse</th>
                    <th>Nom du client</th>
                    <th>Commande</th>
                    <th>Actions</th>
                  </tr>
                  </thead>
                  <tbody>
                      @foreach ($orders as $order)
                      <tr>
                        <td>{{$order->created_at}}</td>
                        <td>{{$order->adresse}}</td>
                        <td>{{$order->names}}</td>
                        <td>
                            @foreach ($order->panier->items as $item)
                            {{$item['product_name']}}
                            @endforeach
                        </td>
                        <td>
                          <a href="{{url('voircommandepdf/'.$order->id)}}" class="btn btn-primary"><i class="nav-icon fas fa-eye"></i></a>
                          <a href="{{url('delete_orders/'.$order->id)}}" id="delete" class="btn btn-danger" ><i class="nav-icon fas fa-trash"></i></a>

                        </td>
                      </tr>
                      @endforeach
                  </tbody>
                  <tfoot>
                  <tr>
                    <th>Date</th>
                    <th>Adresse</th>
                    <th>Nom du client</th>
                    <th>Commande</th>
                    <th>Actions</th>
                  </tr>
                  </tfoot>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

    <!-- end content -->
@endsection

@section('scripts')


@endsection
