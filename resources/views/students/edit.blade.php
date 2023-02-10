<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Add New Record</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
</head>

<body>
    <div class="container">
        <h1 class="text-center py-2">Add New Record</h1>
        <p>
            <a href="{{ url()->previous() }}" type="button" class="btn btn-dark">Go Back</a>
            <a href="{{ route('students.index') }}" type="button" class="btn btn-primary"><i class="bi bi-house-door"></i> Home</a>
        </p>
        @if (session()->has('message'))
            <div class="alert {{ session()->get('alert-type') }} alert-dismissible fade show" role="alert">
                {{-- to print html code within blade template following syntax is used --}}
                {!! session()->get('message') !!}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        @endif
        <div class="col-md-12 col-lg-12">
            <form method="POST" action="{{ route('students.update', $student->id) }}" class="needs-validation" novalidate="">
                @csrf
                @method('PUT')
              <div class="row g-3">
                <div class="col-12">
                  <label for="fullName" class="form-label">Full name</label>
                  <input type="text" name="name" class="form-control" id="fullName" placeholder="write your full name" value="{{ $student->name }}" required="required">
                  <div class="invalid-feedback">
                    Your full name should match your birth certificate name.
                  </div>
                </div>

                <div class="col-12">
                  <label for="email" class="form-label">Email</label>
                  <input type="email" name="email" class="form-control" id="email" placeholder="you@example.com" required="required" value="{{ $student->email }}">
                  <div class="invalid-feedback">
                    Please enter a valid email address for shipping updates.
                  </div>
                </div>

                <div class="col-12">
                  <label for="phoneNumber" class="form-label">Pnone Number</label>
                  <input type="text" name="phone_number" class="form-control" id="phoneNumber" placeholder="+880 123465789" value="{{ $student->phone_number }}" required="required">
                  <div class="invalid-feedback">
                    Please enter your shipping address.
                  </div>
                </div>
              </div>
              <hr>
              <button class="w-100 btn btn-primary btn-lg" type="submit">Update Data</button>
            </form>
          </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous">
    </script>
</body>

</html>







