<?php

class Page_Controller extends ContentController
{
    /**
     * An array of actions that can be accessed via a request. Each array element should be an action name, and the
     * permissions or conditions required to allow the user to access it.
     *
     * <code>
     * array (
     *     'action', // anyone can access this action
     *     'action' => true, // same as above
     *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
     *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
     * );
     * </code>
     *
     * @var array
     */
    private static $allowed_actions = array(
    );

    public function init()
    {
        parent::init();
        // You can include any CSS or JS required by your project here.
        // See: http://doc.silverstripe.org/framework/en/reference/requirements

        Requirements::css("http://cdn.foundation5.zurb.com/foundation.css");
        Requirements::javascript("https://code.jquery.com/jquery-2.2.4.min.js");
        Requirements::javascript("https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js");
        Requirements::javascript("http://cdn.foundation5.zurb.com/foundation.js");

        Requirements::css("{$this->ThemeDir()}/css/nav.css");
        Requirements::css("{$this->ThemeDir()}/css/global.css");
    }
}
