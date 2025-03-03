<?php

namespace App\Http\Controllers\BackEnd\Curriculum;

use App\Http\Controllers\Controller;
use App\Http\Requests\CourseCategoryRequest;
use App\Models\Curriculum\CourseCategory;
use App\Models\Language;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CategoryController extends Controller
{
  public function index(Request $request)
  {
    $language = Language::where('code', $request->language)->first();
    $information['language'] = $language;

    $information['categories'] = CourseCategory::where('language_id', $language->id)
      ->orderByDesc('id')
      ->get();

    $information['langs'] = Language::all();

    $information['themeInfo'] = DB::table('basic_settings')->select('theme_version')->first();

    return view('backend.curriculum.category.index', $information);
  }

  public function store(CourseCategoryRequest $request)
  {
    $ins = $request->all();
    $ins['slug'] = createSlug($request->name);
    CourseCategory::create($ins);

    session()->flash('success', 'New course category added successfully!');

    return response()->json(['status' => 'success'], 200);
  }

  public function updateFeatured(Request $request, $id)
  {
    $category = CourseCategory::find($id);

    if ($request['is_featured'] == 'yes') {
      $category->update(['is_featured' => 'yes']);

      session()->flash('success', 'Category featured successfully!');
    } else {
      $category->update(['is_featured' => 'no']);

      session()->flash('success', 'Category unfeatured successfully!');
    }

    return redirect()->back();
  }

  public function update(CourseCategoryRequest $request)
  {
    $ins = $request->all();
    $ins['slug'] = createSlug($request->name);
    CourseCategory::find($request->id)->update($ins);

    session()->flash('success', 'Course category updated successfully!');

    return response()->json(['status' => 'success'], 200);
  }

  public function destroy($id)
  {
    $category = CourseCategory::find($id);

    if ($category->courseInfoList()->count() > 0) {
      return redirect()->back()->with('warning', 'First delete all the course related to this category!');
    } else {
      $category->delete();

      return redirect()->back()->with('success', 'Course category deleted successfully!');
    }
  }

  public function bulkDestroy(Request $request)
  {
    $ids = $request->ids;

    $errorOccured = false;

    foreach ($ids as $id) {
      $category = CourseCategory::find($id);
      $courseCount = $category->courseInfoList()->count();

      if ($courseCount > 0) {
        $errorOccured = true;
        break;
      } else {
        $category->delete();
      }
    }

    if ($errorOccured == true) {
      session()->flash('warning', 'First delete all the course related to this categories!');
    } else {
      session()->flash('success', 'Course categories deleted successfully!');
    }

    return response()->json(['status' => 'success'], 200);
  }
}
