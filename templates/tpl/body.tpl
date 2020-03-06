<{if $mainSlides}>  
<!-- 輪播圖 -->
<style>
  .carousel-item {
    height: 100vh;
    min-height: 350px;
    background: no-repeat center center scroll;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
  }
</style>  
<header>
  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <{foreach $mainSlides as $index => $mainSlide}>
        <li data-target="#carouselExampleIndicators" data-slide-to="<{$index}>" <{if $index == '0'}>class="active" <{/if}> ></li>
      <{/foreach}>
    </ol>
    <div class="carousel-inner" role="listbox">
      
      <{foreach $mainSlides as $index => $mainSlide}>
        <!-- Slide One - Set the background image for this slide in the line below -->
        <div class="carousel-item <{if $index == '0'}>active <{/if}>" style="background-image: url('<{$mainSlide.pic}>')">
          <div class="carousel-caption d-none d-md-block">
            <h2 class="display-4"><{$mainSlide.title}></h2>
          </div>
        </div>
      <{/foreach}>

    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
  </div>
</header>


<{/if}>


<!-- About Section -->
<section class="page-section bg-primary" id="about">
<div class="container">
  <div class="row justify-content-center">
    <div class="col-lg-8 text-center">
      <h2 class="text-white mt-0">We've got what you need!</h2>
      <hr class="divider light my-4">
      <p class="text-white-50 mb-4">Start Bootstrap has everything you need to get your new website up and running in no time! Choose one of our open source, free to download, and easy to use themes! No strings attached!</p>
      <a class="btn btn-light btn-xl js-scroll-trigger" href="#services">Get Started!</a>
    </div>
  </div>
</div>
</section>

<!-- Services Section -->
<section class="page-section" id="services">
    <div class="card text-white bg-secondary my-5 py-4 text-center">
      <div class="card-body">
        <H1 class="text-white m-0">最新消息</H1>
      </div>
    </div>
<!-- Content Row -->
    <div class="row">
      <!-- /.col-md-4 -->
      <div class="col-md-4 mb-5">
        <div class="card h-100">
          <div class="card-body">
            <h2 class="card-title">Card Two</h2>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod tenetur ex natus at dolorem enim! Nesciunt pariatur voluptatem sunt quam eaque, vel, non in id dolore voluptates quos eligendi labore.</p>
          </div>
          <div class="card-footer">
            <a href="#" class="btn btn-primary btn-sm">More Info</a>
          </div>
        </div>
      </div>
      <!-- /.col-md-4 -->
      <div class="col-md-4 mb-5">
        <div class="card h-100">
          <div class="card-body">
            <h2 class="card-title">Card Two</h2>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod tenetur ex natus at dolorem enim! Nesciunt pariatur voluptatem sunt quam eaque, vel, non in id dolore voluptates quos eligendi labore.</p>
          </div>
          <div class="card-footer">
            <a href="#" class="btn btn-primary btn-sm">More Info</a>
          </div>
        </div>
      </div>
      <!-- /.col-md-4 -->
      <div class="col-md-4 mb-5">
        <div class="card h-100">
          <div class="card-body">
            <h2 class="card-title">Card Three</h2>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem magni quas ex numquam, maxime minus quam molestias corporis quod, ea minima accusamus.</p>
          </div>
          <div class="card-footer">
            <a href="#" class="btn btn-primary btn-sm">More Info</a>
          </div>
        </div>
      </div>
      <!-- /.col-md-4 -->

    </div>
</section>

<!-- Portfolio Section -->
<section id="portfolio">
<div class="container-fluid p-0">
  <div class="row no-gutters">
    <div class="col-lg-4 col-sm-6">
      <a class="portfolio-box" href="<{$xoImgUrl}>img/portfolio/fullsize/1.jpg">
        <img class="img-fluid" src="<{$xoImgUrl}>img/portfolio/thumbnails/1.jpg" alt="">
        <div class="portfolio-box-caption">
          <div class="project-category text-white-50">
            Category
          </div>
          <div class="project-name">
            Project Name
          </div>
        </div>
      </a>
    </div>
    <div class="col-lg-4 col-sm-6">
      <a class="portfolio-box" href="<{$xoImgUrl}>img/portfolio/fullsize/2.jpg">
        <img class="img-fluid" src="<{$xoImgUrl}>img/portfolio/thumbnails/2.jpg" alt="">
        <div class="portfolio-box-caption">
          <div class="project-category text-white-50">
            Category
          </div>
          <div class="project-name">
            Project Name
          </div>
        </div>
      </a>
    </div>
    <div class="col-lg-4 col-sm-6">
      <a class="portfolio-box" href="<{$xoImgUrl}>img/portfolio/fullsize/3.jpg">
        <img class="img-fluid" src="<{$xoImgUrl}>img/portfolio/thumbnails/3.jpg" alt="">
        <div class="portfolio-box-caption">
          <div class="project-category text-white-50">
            Category
          </div>
          <div class="project-name">
            Project Name
          </div>
        </div>
      </a>
    </div>
    <div class="col-lg-4 col-sm-6">
      <a class="portfolio-box" href="<{$xoImgUrl}>img/portfolio/fullsize/4.jpg">
        <img class="img-fluid" src="<{$xoImgUrl}>img/portfolio/thumbnails/4.jpg" alt="">
        <div class="portfolio-box-caption">
          <div class="project-category text-white-50">
            Category
          </div>
          <div class="project-name">
            Project Name
          </div>
        </div>
      </a>
    </div>
    <div class="col-lg-4 col-sm-6">
      <a class="portfolio-box" href="<{$xoImgUrl}>img/portfolio/fullsize/5.jpg">
        <img class="img-fluid" src="<{$xoImgUrl}>img/portfolio/thumbnails/5.jpg" alt="">
        <div class="portfolio-box-caption">
          <div class="project-category text-white-50">
            Category
          </div>
          <div class="project-name">
            Project Name
          </div>
        </div>
      </a>
    </div>
    <div class="col-lg-4 col-sm-6">
      <a class="portfolio-box" href="<{$xoImgUrl}>img/portfolio/fullsize/6.jpg">
        <img class="img-fluid" src="<{$xoImgUrl}>img/portfolio/thumbnails/6.jpg" alt="">
        <div class="portfolio-box-caption p-3">
          <div class="project-category text-white-50">
            Category
          </div>
          <div class="project-name">
            Project Name
          </div>
        </div>
      </a>
    </div>
  </div>
</div>
</section>

<!-- Call to Action Section -->
<section class="page-section bg-dark text-white">
<div class="container text-center">
  <h2 class="mb-4">Free Download at Start Bootstrap!</h2>
  <a class="btn btn-light btn-xl" href="https://startbootstrap.com/themes/creative/">Download Now!</a>
</div>
</section>

<!-- Contact Section -->
<section class="page-section" id="contact">
<div class="container">
  <div class="row justify-content-center">
    <div class="col-lg-8 text-center">
      <h2 class="mt-0">Let's Get In Touch!</h2>
      <hr class="divider my-4">
      <p class="text-muted mb-5">Ready to start your next project with us? Give us a call or send us an email and we will get back to you as soon as possible!</p>
    </div>
  </div>
  <div class="row">
    <div class="col-lg-4 ml-auto text-center mb-5 mb-lg-0">
      <i class="fas fa-phone fa-3x mb-3 text-muted"></i>
      <div>+1 (202) 555-0149</div>
    </div>
    <div class="col-lg-4 mr-auto text-center">
      <i class="fas fa-envelope fa-3x mb-3 text-muted"></i>
      <!-- Make sure to change the email address in anchor text AND the link below! -->
      <a class="d-block" href="mailto:contact@yourwebsite.com">contact@yourwebsite.com</a>
    </div>
  </div>
</div>
</section>