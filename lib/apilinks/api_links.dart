class APILinks {
  
//! Server Link 

static const String ip                         = "192.168.1.8";
static const String server                     = "http://$ip/ecommerceapp" ;

//! Image Link 

static const String imagepath                  = "http://$ip/ecommerceapp/upload";
static const String imagecategories            = "$imagepath/categories";
static const String imageitems                 = "$imagepath/items";

//! Test API
static const String testapi                    = "$server/test.php";

//! Auth

static const String signuplink                 = "$server/auth/signup.php";
static const String loginlink                  = "$server/auth/login.php";
static const String verifycodesignuplink       = "$server/auth/verfiycode.php";

//! Forget Password

static const String checemaillink               = "$server/forgetpassword/checemail.php";
static const String verifycodelink              = "$server/forgetpassword/verfiycode.php";
static const String resetpasswordlink           = "$server/forgetpassword/resetpassword.php";

//! Home Page

static const String home                        = "$server/home.php";

//! Items 

static const String items                       = "$server/itmes/items.php";



}



