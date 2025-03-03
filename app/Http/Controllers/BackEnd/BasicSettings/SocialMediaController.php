<?php

namespace App\Http\Controllers\BackEnd\BasicSettings;

use App\Http\Controllers\Controller;
use App\Http\Requests\SocialMediaRequest;
use App\Models\BasicSettings\SocialMedia;
use Illuminate\Http\Request;

class SocialMediaController extends Controller
{
  public function index()
  {
    $information['medias'] = SocialMedia::orderByDesc('id')->get();

    return view('backend.basic-settings.social-media.index', $information);
  }

  public function store(SocialMediaRequest $request)
  {
    SocialMedia::create($request->all());

    session()->flash('success', 'New social media added successfully!');

    return response()->json(['status' => 'success'], 200);
  }

  public function update(SocialMediaRequest $request)
  {
    SocialMedia::find($request->id)->update($request->all());

    session()->flash('success', 'Social media updated successfully!');

    return response()->json(['status' => 'success'], 200);
  }

  public function destroy($id)
  {
    SocialMedia::find($id)->delete();

    return redirect()->back()->with('success', 'Social media deleted successfully!');
  }
}
