<?php
  class HomePage extends Page{

  }

  class HomePage_Controller extends Page_Controller{

    public function init(){
      parent::init();
      Requirements::css("{$this->ThemeDir()}/css/home.css");
    }

    // Get latest articles to be pulled into the template
    // TODO: change to categories as per template once they have been confirmed
    public function LatestArticles($count = 2){
      return ArticlePage::get()
        ->sort('Created', 'DESC')
        ->limit($count);
    }
  }
 ?>
