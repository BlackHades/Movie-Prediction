<html>
@include('partials._head')
<body class="font">
<div class="page charts-page" style="background-color: white!important;">
    <header>
        @include('partials._navbar')
        <div class="page-content d-flex align-items-stretch">
            @include('Partials._sidebar')
            @yield('content')
        </div>
    </header>
</div>
@yield('script')
</body>
</html>
