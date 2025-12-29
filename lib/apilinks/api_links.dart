class APILinks {
  
//! Server Link 
//static const String ip                           = "192.168.10.77";  // Home IP
static const String ip                           = "192.168.1.106"; // Office IP
static const String server                       = "http://$ip/ecommerceapp";

//! Image Link 
static const String imagepath                    = "http://$ip/ecommerceapp/upload";
static const String imagecategories              = "$imagepath/categories";
static const String imageitems                   = "$imagepath/items";

//! Test API 
static const String testapi                      = "$server/test.php";

//! Auth
static const String signuplink                   = "$server/auth/signup.php";
static const String loginlink                    = "$server/auth/login.php";
static const String verifycodesignuplink         = "$server/auth/verfiycode.php";
static const String resendCodeVerfiycodelink     = "$server/auth/resendcode.php";

//! Forget Password
static const String checemaillink                = "$server/forgetpassword/checemail.php";
static const String verifycodelink               = "$server/forgetpassword/verfiycode.php";
static const String resetpasswordlink            = "$server/forgetpassword/resetpassword.php";

//! Home Page
static const String home                         = "$server/home.php";

//! Items 
static const String items                        = "$server/itmes/items.php";

//! Favorite 
static const String addfavoritelink              = "$server/favorite/add.php";
static const String removefavoritelink           = "$server/favorite/remove.php";
static const String viewfavoritelink             = "$server/favorite/view.php";
static const String deletefavoritelink           = "$server/favorite/delete.php";

//! Cart 
static const String addCartlink                  = "$server/cart/add.php";
static const String removeCartlink               = "$server/cart/remove.php";
static const String viewCartlink                 = "$server/cart/view.php";
static const String getCountCartlink             = "$server/cart/getcountitems.php";

}



