<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">{{ __('Edit Book') }}</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

      <div class="modal-body">
        <form id="ajaxEditForm" class="modal-form" action="{{ route('admin.advertise.update_advertisement') }}" method="post" enctype="multipart/form-data">
          
          @csrf
          <input type="hidden" id="in_id" name="id">

          <div class="form-group">
            <label for="">{{ __('Books Name') . '*' }}</label>

            <input name="ad_type" type="txt" class="form-control"  id="in_ad_type">

            <p id="editErr_ad_type" class="mt-2 mb-0 text-danger em"></p>
          </div>



          <div class="form-group">
            <label for="">{{ __('Books Section') . '*' }}</label>
            <select name="resolution_type" class="form-control" id="in_resolution_type">
              <option selected disabled>{{ __('Select Section') }}</option>
              <option value="1">مكتبة الشبكة العربية</option>
              <option value="2">مكتبة متنوعة</option>
            </select>
            <p id="err_resolution_type" class="mt-2 mb-0 text-danger em"></p>
          </div>

          <div class="form-group" id="edit-image-input">
            <label for="">{{ __('Image') . '*' }}</label>
            <br>
            <div class="thumb-preview">
              <img src="" alt="advertisement image" class="in_image uploaded-img">
            </div>

            <div class="mt-3">
              <div role="button" class="btn btn-primary btn-sm upload-btn">
                {{ __('Choose Image') }}
                <input type="file" class="img-input" name="image">
              </div>
            </div>
            <p class="mt-2 mb-0 text-danger em" id="editErr_image"></p>
          </div>

          <div class="form-group" id="edit-url-input">
            <label for="">{{ __('Redirect URL') . '*' }}</label>
            <input type="url" class="form-control" name="url" placeholder="Enter Redirect URL" id="in_url">
            <p id="editErr_url" class="mt-2 mb-0 text-danger em"></p>
          </div>


        </form>
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">
          {{ __('Close') }}
        </button>
        <button id="updateBtn" type="button" class="btn btn-primary btn-sm">
          {{ __('Update') }}
        </button>
      </div>
    </div>
  </div>
</div>
