@extends('site.layout')
@section('title', 'Título')

@section('content')
<div class="bradcam_area bradcam_bg_1">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="bradcam_text">
                <h3>{{$front_config["title"]}}</h3>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
    