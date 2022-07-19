 @extends('layouts.app')
 @section('title')
  <title>Kcnews - Dashboard</title>
 @endsection
 @section('main')
 
     <!-- Content Wrapper. Contains page content -->
    
         <!-- Content Header (Page header) -->
         <div class="content-header">
             <div class="container-fluid">
                 <div class="row mb-2">
                     <div class="col-sm-6">
                         <h1 class="m-0">Dashboard </h1>
                     </div><!-- /.col -->
                     <div class="col-sm-6">
                         <ol class="breadcrumb float-sm-right">
                             <li class="breadcrumb-item"><a href="#">Home</a></li>
                             <li class="breadcrumb-item active">Dashboard </li>
                         </ol>
                     </div><!-- /.col -->
                 </div><!-- /.row -->
             </div><!-- /.container-fluid -->
         </div>
         <!-- /.content-header -->

         <!-- Main content -->
         <section class="content">
             <div class="container-fluid">
                 <!-- Info boxes -->
                 @if(auth()->user()->hasRole('Admin')|auth()->user()->hasRole('Chủ biên'))
                 <div class="row">
                     <!-- /.col -->
                     <div class="col-12 col-sm-6 col-md-3">
                         <div class="info-box mb-3">
                             <span class="info-box-icon bg-danger elevation-1"><i class="fas fa-thumbs-up"></i></span>

                             <div class="info-box-content">
                                 <span class="info-box-text">Likes</span>
                                 <span class="info-box-number">{{ $like->count() }}</span>
                             </div>
                             <!-- /.info-box-content -->
                         </div>
                         <!-- /.info-box -->
                     </div>
                     <!-- /.col -->

                     <!-- fix for small devices only -->
                     <div class="clearfix hidden-md-up"></div>

                     <div class="col-12 col-sm-6 col-md-3">
                         <div class="info-box mb-3">
                             <span class="info-box-icon bg-success elevation-1"><i class="fas fa-shopping-cart"></i></span>

                             <div class="info-box-content">
                                 <span class="info-box-text">Số lượng bài viết</span>
                                 <span class="info-box-number">{{ $tintuc->count() }}</span>
                             </div>
                             <!-- /.info-box-content -->
                         </div>
                         <!-- /.info-box -->
                     </div>
                     <!-- /.col -->
                     <div class="col-12 col-sm-6 col-md-3">
                         <div class="info-box mb-3">
                             <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-users"></i></span>

                             <div class="info-box-content">
                                 <span class="info-box-text">Người dùng hệ thống</span>
                                 <span class="info-box-number">{{ $user->count() }}</span>
                             </div>
                             <!-- /.info-box-content -->
                         </div>
                         <!-- /.info-box -->
                     </div>
                     <!-- /.col -->
                 </div>
                
                 @endif

                 
             </div>
             <!--/. container-fluid -->
         </section>
         <p>Danh sách bài viết xem nhiều nhất:</p>
         <?php

         ?>
         <table border="1px" style="margin-: 30px" width="900px">
             <tr>
                 <td style="padding: 5px 5px 5px 5px">ID</td>
                 <td style="padding: 5px 5px 5px 5px">Tên bài viết</td>
                 <td style="padding: 5px 5px 5px 5px">Lượt xem</td>
                 <td style="padding: 5px 5px 5px 5px">Người đăng</td>
             </tr>
             <?php 
             foreach($listView as $view)
             {
                 echo "<tr>";
                     echo "<td style='padding: 5px 5px 5px 5px'>".$view->id."</td>";
                     echo "<td style='padding: 5px 5px 5px 5px'>".
                     "<a href='"."tintuc/".$view->id."'>".
                     $view->title."</a></td>";
                     echo "<td style='padding: 5px 5px 5px 5px'>".$view->luotxem."</td>";
                     foreach ($user as $key) {
                        if($key->id == $view->tacgia)
                            echo "<td style='padding: 5px 5px 5px 5px'>".$key->name."</td>";
                     }
                    
                 echo "</tr>";
             }
             ?>
         </table>
          <br></br>
          <p>Danh sách bình luận chờ duyệt:</p>
         <?php

         ?>
         <table border="1px" style="margin-left: 30px" width="900px">
             <tr>
                <td style="padding: 5px 5px 5px 5px">ID</td>
                <td style="padding: 5px 5px 5px 5px">Nội dung bình luận</td>
                <td style="padding: 5px 5px 5px 5px">Tên bài viết</td>
                <td style="padding: 5px 5px 5px 5px">Người bình luận</td>
                <td style="padding: 5px 5px 5px 5px">Ngày bình luận</td>

             </tr>
             <?php 
             foreach($commentActive as $view)
             {
                 echo "<tr>";
                     echo "<td style='padding: 5px 5px 5px 5px'>".$view->id."</td>";
                     echo "<td style='padding: 5px 5px 5px 5px'>".
                                 "<a href='"."binhluan/".$view->id_tintuc."'>".
                                 $view->noidung."</a></td>";
                     // echo "<td style='padding: 5px 5px 5px 5px'>".$view->noidung."</td>";
                     foreach ($tintuc as $key) {
                        if($key->id == $view->id_tintuc)
                            echo "<td style='padding: 5px 5px 5px 5px'>".$key->title."</td>";

                     }
                     foreach ($user as $key) {
                        if($key->id == $view->id_user)
                            echo "<td style='padding: 5px 5px 5px 5px'>".$key->name."</td>";
                     }
                     echo "<td style='padding: 5px 5px 5px 5px'>".$view->created_at."</td>";
                 echo "</tr>";
             }
             ?>
         </table>
         <!-- /.content -->
     </div>
     <!-- /.content-wrapper -->
 @endsection
