@extends('admin.template')

@section('title', 'Aw2Web - Home')

@section('content')

  <header>
    <h2>Suas Páginas</h2>
  </header>

  <table>
    <thead>
      <tr>
        <th>Título</th>
        <th width="20">Ações</th>
      </tr>
      <tbody>
        @foreach($pages as $page)
          <tr>
            <td>{{$page->op_title}} ({{$page->slug}})</td>
            <td>
              <a href="{{url('/'.$page->slug)}}" target="_blank">Abrir</a><br/>
              <a href="{{url('/admin/'.$page->slug.'/links')}}">Links</a>
              <a href="{{url('/admin/'.$page->slug.'/design')}}">Aparência</a>
              <a href="{{url('/admin/'.$page->slug.'/stats')}}">Estatísticas</a>
            </td>
          </tr>
        @endforeach
      </tbody>
    </thead>
  </table>

@endsection