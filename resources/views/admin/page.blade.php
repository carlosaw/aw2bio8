@extends('admin.template')

@section('title', 'Aw2Web - 123 - Links')

@section('content')
  <div class="preheader">
    Página: 123
  </div>

  <div class="area">
    <div class="leftside">
      <header>
        <ul>
          <li @if($menu=='links') class="active" @endif><a href="{{url('admin/123/links')}}">Links</a></li>
          <li @if($menu=='design') class="active" @endif><a href="{{url('admin/123/design')}}">Aparência</a></li>
          <li @if($menu=='stats') class="active" @endif><a href="{{url('admin/123/stats')}}">Estatísticas</a></li>
        </ul>
      </header>

      @yield('body')

    </div>
    <div class="rightside">
      <iframe frameborder="0" src="{{url('/slug')}}"></iframe>
    </div>
  </div>

@endsection