<?php

$xemnhieu = DB::table('tintucs')
    ->orderBy('luotxem', 'DESC')
    ->take(4)
    ->get();

$user = DB::table('users')->get();
?>

<div class="main--sidebar col-md-4 col-sm-5 ptop--30 pbottom--30" data-sticky-content="true">
    <div class="sticky-content-inner">




        <!-- Widget Start -->
        <div class="widget">
            <div class="widget--title">
                <h2 class="h4">Tin tức nổi bật</h2>
                <i class="icon fa fa-newspaper-o"></i>
            </div>

            <!-- List Widgets Start -->
            <div class="list--widget list--widget-1">
                <!-- Post Items Start -->
                <div class="post--items post--items-3" data-ajax-content="outer">
                    <ul class="nav" data-ajax-content="inner">
                        @foreach ($xemnhieu as $xuhuong)
                            <li>
                                <!-- Post Item Start -->
                                <div class="post--item post--layout-3">
                                    <div class="post--img">
                                        <a href="{{ route('bai-viet', ['slug' => $xuhuong->slug]) }}" class="thumb"><img
                                                src="/uploads/tintuc/{{ $xuhuong->hinhanh }}" alt=""></a>

                                        <div class="post--info">
                                            <div class="title">
                                                <h3 class="h4"><a href="{{ route('bai-viet', ['slug' => $xuhuong->slug]) }}"
                                                        class="btn-link">{{ $xuhuong->title }}</a></h3>
                                            </div>
                                            <ul class="nav meta">
                                                @foreach ($user as $u)
                                                    @if ($u->id == $xuhuong->tacgia)
                                                        <li><a href="#">{{ $u->name }}</a>
                                                        </li>
                                                    @endif
                                                @endforeach
                                                <li><a href="#">{{ $xuhuong->ngayduyet }}</a></li>
                                            </ul>

                                           
                                        </div>
                                    </div>
                                </div>
                                <!-- Post Item End -->
                            </li>
                        @endforeach
                    </ul>


                </div>
                <!-- Post Items End -->
            </div>
            <!-- List Widgets End -->
        </div>
        <!-- Widget End -->


    </div>
</div>
