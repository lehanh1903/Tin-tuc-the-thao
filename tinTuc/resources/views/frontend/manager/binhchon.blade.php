<?php
$luachon = DB::table('tintucs')
    ->orderBy('luotxem', 'ASC')
    ->take(4)
    ->get();
$user = DB::table('users')->get();
$binhluan = DB::table('binhluans')
    ->take(4)
    ->get();
?>

<div class="main--sidebar col-md-4 col-sm-5 ptop--30 pbottom--30" data-sticky-content="true">
    <div class="sticky-content-inner">
        <!-- Widget Start -->



        <!-- Widget Start -->
        <div class="widget">
            <div class="widget--title" data-ajax="tab">
                <h2 class="h4">Ý KIẾN NGƯỜI ĐỌC</h2>
            </div>

            <!-- List Widgets Start -->
            <div class="list--widget list--widget-2" data-ajax-content="outer">
                <!-- Post Items Start -->
                <div class="post--items post--items-3">
                    <ul class="nav" data-ajax-content="inner">
                        @foreach ($binhluan as $binhluan)
                            <li>
                                <!-- Post Item Start -->
                                <div class="post--item post--layout-3">
                                    <div class="post--img">
                                        <span class="thumb"><img
                                                src="{{ url('/frontend') }}/img/widgets-img/readers-opinion-01.png"
                                                alt=""></span>

                                        <div class="post--info">
                                            <div class="title">
                                                <h3 class="h4">{{ $binhluan->noidung }}</h3>
                                            </div>

                                            <ul class="nav meta">
                                                <li><span>
                                                        @foreach ($user as $u)
                                                            @if ($u->id == $binhluan->id_user)
                                                                {{ $u->name }}
                                                            @endif
                                                        @endforeach
                                                    </span></li>
                                                <li><span>16 April 2017</span></li>
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

        <!-- Widget Start -->
        <div class="widget">
            <div class="widget--title" data-ajax="tab">
                <h2 class="h4">Lựa chọn của biên tập viên</h2>


            </div>

            <!-- List Widgets Start -->
            <div class="list--widget list--widget-1" data-ajax-content="outer">
                <!-- Post Items Start -->
                <div class="post--items post--items-3">
                    <ul class="nav" data-ajax-content="inner">
                        @foreach ($luachon as $luachon)
                            <li>
                                <!-- Post Item Start -->
                                <div class="post--item post--layout-3">
                                    <div class="post--img">
                                        <a href="{{ route('bai-viet', ['slug' => $luachon->slug]) }}"
                                            class="thumb"><img
                                                src="/uploads/tintuc/{{ $luachon->hinhanh }}" alt=""></a>

                                        <div class="post--info">
                                            <ul class="nav meta">
                                                @foreach ($user as $u)
                                                    @if ($u->id == $luachon->tacgia)
                                                        <li><a href="#">{{ $u->name }}</a>
                                                        </li>
                                                    @endif
                                                @endforeach
                                                <li><a href="#">{{ $luachon->ngayduyet }}</a></li>
                                            </ul>

                                            <div class="title">
                                                <h3 class="h4"><a
                                                        href="{{ route('bai-viet', ['slug' => $luachon->slug]) }}"
                                                        class="btn-link">{{ $luachon->title }}</a></h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Post Item End -->
                            </li>
                        @endforeach
                    </ul>

                    <!-- Preloader Start -->
                    <div class="preloader bg--color-0--b" data-preloader="1">
                        <div class="preloader--inner"></div>
                    </div>
                    <!-- Preloader End -->
                </div>
                <!-- Post Items End -->
            </div>
            <!-- List Widgets End -->
        </div>
        <!-- Widget End -->
    </div>
</div>
