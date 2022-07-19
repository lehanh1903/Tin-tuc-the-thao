<!DOCTYPE html>
<html dir="ltr" lang="en">
@include('frontend.manager.header')

<body class="boxed" data-bg-img="{{ url('/frontend') }}/img/9c973fc03f0b6b86647f5a5669724494.jpg">

    <!-- Preloader Start -->
    {{-- <div id="preloader">
        <div class="preloader bg--color-1--b" data-preloader="1">
            <div class="preloader--inner"></div>
        </div>
    </div> --}}
    <!-- Preloader End -->

    <div class="wrapper">

        @include('frontend.manager.navbar')

        @yield('main')

        @include('frontend.manager.footer')
    </div>
    <!-- Wrapper End -->




    <!-- Back To Top Button Start -->
    <div id="backToTop">
        <a href="#"><i class="fa fa-angle-double-up"></i></a>
    </div>
    <!-- Back To Top Button End -->

    @include('frontend.manager.link.js')

</body>

</html>
