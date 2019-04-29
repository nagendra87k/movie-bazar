<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/

$route['default_controller'] = "login";
$route['404_override'] = 'myerror';


/****************************************Login-Signup***************************************/

$route['loginMe'] = 'login/loginMe';
$route['signup'] = 'login/addUserAccount';
$route['checkEmailExist'] = 'login/checkEmailExist';
$route['dashboard'] = 'user';
$route['logout'] = 'user/logout';


$route['userListing'] = 'user/userListing';
$route['userListing/(:num)'] = "user/userListing/$1";
$route['addNew'] = "user/addNew";

/********************************Dashboard-User*************************************/

$route['addNewUser'] = "user/addNewUser";
$route['editOld'] = "user/editOld";
$route['editOld/(:num)'] = "user/editOld/$1";
$route['editUser'] = "user/editUser";
$route['deleteUser'] = "user/deleteUser";
$route['loadChangePass'] = "user/loadChangePass";
$route['changePassword'] = "user/changePassword";
$route['pageNotFound'] = "user/pageNotFound";
$route['checkEmailExists'] = "user/checkEmailExists";
$route['login-history'] = "user/loginHistoy";
$route['login-history/(:num)'] = "user/loginHistoy/$1";
$route['login-history/(:num)/(:num)'] = "user/loginHistoy/$1/$2";
$route['approved'] = "user/approved";
$route['userVerification/(:any)'] = "login/userVerification/$1";


/************************Forgot-Password*********************************************/

$route['forgotPassword'] = "login/forgotPassword";
$route['resetPasswordUser'] = "login/resetPasswordUser";
$route['resetPasswordConfirmUser'] = "login/resetPasswordConfirmUser";
$route['resetPasswordConfirmUser/(:any)'] = "login/resetPasswordConfirmUser/$1";
$route['resetPasswordConfirmUser/(:any)/(:any)'] = "login/resetPasswordConfirmUser/$1/$2";
$route['createPasswordUser'] = "login/createPasswordUser";


/************************Cagetory Module*********************************************/
$route['categories-list'] = 'category/categoryListing';
$route['add-new-category'] = "category/addNewCategory";
$route['deleteCategory'] = "category/deleteCategory";
$route['update-category/(:num)'] = "category/updateCategory/$1";
$route['cat-name-is-exist'] = 'category/checkCategoryIsExist';


/************************Sub-cagetory Module*********************************************/
$route['sub-category-list/(:num)'] = 'subCategory/subCategoriesList/$1';
$route['add-new-sub-category/(:num)'] = "subCategory/addSubCategory/$1";
$route['update-sub-category/(:num)'] = "subCategory/updateSubCategory/$1";


/******************************Video*****************************************************/
$route['add-video/(:num)/(:num)'] = "video/addNewVideo/$1/$1";
$route['videos-list/(:num)/(:num)'] = "video/videosListing/$1/$1";
$route['updateVideo/(:num)'] = "video/updateVideo/$1";
$route['viewVideo/(:num)'] = "video/viewVideo/$1";
$route['deleteVideo'] = "video/deleteVideo";
$route['addFullVideo/(:num)'] = "video/addFullVideo/$1";

/******************************Subscription*****************************************************/
$route['addNewPlan'] = "subscription/addNewPlan";
$route['plansListing'] = "subscription/plansListing";
$route['updatePlan/(:num)'] = "subscription/updatePlan/$1";
$route['deletePlan'] = "subscription/deletePlan";

/******************************Cast&Crew*****************************************************/
$route['add-cast-and-crew/(:num)'] = "cast/addCastAndCrew/$1";
$route['update-cast-and-crew/(:num)'] = "cast/updateCastAndCrew/$1";

/******************************Showcase*****************************************************/
$route['showcase-list/(:num)']      = "showcase/ShowcaseList/$1";
$route['add-showcase/(:num)']       = "showcase/addShowcase/$1";
$route['update-showcase/(:num)/(:num)']    = "showcase/updateShowcase/$1/$1";
$route['deleteShowcase'] = "showcase/deleteShowcase";




/*****************************API*************************************************************/
$route['auth/login']['post']           = 'auth/login';
$route['auth/logout']['post']          = 'auth/logout';


/* End of file routes.php */
/* Location: ./application/config/routes.php */