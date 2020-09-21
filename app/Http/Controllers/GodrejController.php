<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Products;

class GodrejController extends Controller
{

    public function index()
    {
        $posts = Products::all();
        return view('Godrej.godrej_landing')->with('posts', $posts);
    }

    public function aboutGodrej()
    {
        return view('Godrej.godrej_aboutus');
    }

    public function catalog_download()
    {
        $file = public_path()."/storage/pdf/catalogue.pdf";
        $header = [
            'Content-Type' => 'application/pdf',
        ];
        return response()->download($file,'catalogue.pdf',$header);
    }

}
