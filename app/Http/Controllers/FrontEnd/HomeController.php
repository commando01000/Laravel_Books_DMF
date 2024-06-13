<?php

namespace App\Http\Controllers\FrontEnd;

use App\Http\Controllers\Controller;
use App\Models\BasicSettings\Basic;
use App\Models\Curriculum\Course;
use App\Models\Curriculum\CourseEnrolment;
use App\Models\HomePage\Section;
use App\Models\Journal\Blog;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
  public function index()
  {
    $themeInfo = DB::table('basic_settings')->select('theme_version')->first();

    $language = $this->getLanguage();

    $queryResult['seoInfo'] = $language->seoInfo()->select('meta_keyword_home', 'meta_description_home')->first();

    // get the sections of selected home version
    $sectionInfo = Section::first();
    $queryResult['secInfo'] = $sectionInfo;

    $queryResult['heroInfo'] = $language->heroSec()->first();

    $queryResult['secTitleInfo'] = $language->sectionTitle()->first();



    if ($sectionInfo->course_categories_section_status == 1) {
      $queryResult['courseCategoryData'] = Basic::select('course_categories_section_image')->first();
    }

    $categories = $language->courseCategory()->where('status', 1)->orderBy('serial_number', 'asc')
      ->when($themeInfo->theme_version == 3, function ($query) {
        return $query->where('is_featured', '=', 'yes');
      })
      ->get();

    if ($themeInfo->theme_version == 3) {
      $categories->map(function ($category) use ($language) {
        $category['courses'] = Course::join('course_informations', 'courses.id', '=', 'course_informations.course_id')
          ->join('instructors', 'instructors.id', '=', 'course_informations.instructor_id')
          ->where('courses.status', '=', 'published')
          ->where('courses.is_featured', '=', 'yes')
          ->where('course_informations.language_id', '=', $language->id)
          ->where('course_informations.course_category_id', '=', $category->id)
          ->select('courses.id', 'courses.thumbnail_image', 'courses.pricing_type', 'courses.previous_price', 'courses.current_price', 'courses.average_rating', 'course_informations.title', 'course_informations.slug', 'course_informations.description', 'instructors.name as instructorName')
          ->orderByDesc('courses.id')
          ->get();
      });
    }

    $queryResult['categories'] = $categories;

    if ($sectionInfo->call_to_action_section_status == 1) {
      $queryResult['callToActionInfo'] = $language->actionSec()->first();
    }

    if ($sectionInfo->featured_courses_section_status == 1 && $themeInfo->theme_version != 3) {
      $courses = Course::join('course_informations', 'courses.id', '=', 'course_informations.course_id')
        ->join('course_categories', 'course_categories.id', '=', 'course_informations.course_category_id')
        ->join('instructors', 'instructors.id', '=', 'course_informations.instructor_id')
        ->where('courses.status', '=', 'published')
        ->where('courses.is_featured', '=', 'yes')
        ->where('course_informations.language_id', '=', $language->id)
        ->select('courses.id', 'courses.thumbnail_image', 'courses.pricing_type', 'courses.previous_price', 'courses.current_price', 'courses.average_rating', 'courses.duration', 'course_informations.title', 'course_informations.slug', 'course_categories.name as categoryName', 'course_categories.slug as categorySlug', 'instructors.image as instructorImage', 'instructors.name as instructorName')
        ->orderByDesc('courses.id')
        ->get();

      $courses->map(function ($course) {
        $course['enrolmentCount'] = CourseEnrolment::query()->where('course_id', '=', $course->id)
          ->where('payment_status', 'completed')
          ->count();
      });

      $queryResult['courses'] = $courses;
    }

    $queryResult['currencyInfo'] = $this->getCurrencyInfo();

    if ($sectionInfo->features_section_status == 1) {
      $queryResult['featureData'] = Basic::select('features_section_image')->first();

      $queryResult['features'] = $language->feature()->orderBy('serial_number', 'asc')->get();
    }

    if ($sectionInfo->video_section_status == 1) {
      $queryResult['videoData'] = $language->videoSec()->first();
    }

    if ($sectionInfo->fun_facts_section_status == 1) {
      $queryResult['factData'] = $language->funFactSec()->first();

      $queryResult['countInfos'] = $language->countInfo()->orderBy('serial_number', 'asc')->get();
    }

    if ($sectionInfo->testimonials_section_status == 1) {
      $queryResult['testimonialData'] = Basic::select('testimonials_section_image')->first();

      $queryResult['testimonials'] = $language->testimonial()->orderBy('serial_number', 'asc')->get();
    }

    if ($sectionInfo->newsletter_section_status == 1) {
      $queryResult['newsletterData'] = $language->newsletterSec()->first();
    }

    if ($sectionInfo->featured_instructors_section_status == 1) {
      $queryResult['instructors'] = $language->instructor()->where('is_featured', '=', 'yes')->get();
    }

    if ($sectionInfo->about_us_section_status == 1) {
      $queryResult['aboutUsInfo'] = $language->aboutUsSec()->first();
    }

    if ($sectionInfo->latest_blog_section_status == 1) {
      $queryResult['blogs'] = Blog::join('blog_informations', 'blogs.id', '=', 'blog_informations.blog_id')
        ->join('blog_categories', 'blog_categories.id', '=', 'blog_informations.blog_category_id')
        ->where('blog_informations.language_id', '=', $language->id)
        ->select('blogs.image', 'blog_informations.author', 'blog_informations.title', 'blog_informations.slug', 'blog_categories.name AS categoryName', 'blog_categories.slug AS categorySlug')
        ->orderByDesc('blogs.created_at')
        ->limit(3)
        ->get();
    }


    if ($themeInfo->theme_version == 1) {
      return view('frontend.home.index-v1', $queryResult);
    } else if ($themeInfo->theme_version == 2) {
      return view('frontend.home.index-v2', $queryResult);
    } else {
      return view('frontend.home.index-v3', $queryResult);
    }
  }
}
