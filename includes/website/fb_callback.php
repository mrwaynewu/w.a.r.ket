<?php
header("Content-type:text/html; charset=UTF-8;");
define('IN_ECS', true);
require_once '../../vendor/autoload.php';
require_once 'config/facebook_config.php';
session_start();
$fb = new Facebook\Facebook([
		  'app_id' => APP_KEY,
		  'app_secret' => APP_SECRET,
		  'default_graph_version' => 'v2.2',
		 ]);

$helper = $fb->getRedirectLoginHelper();

try {
  $accessToken = $helper->getAccessToken();
} catch(Facebook\Exceptions\FacebookResponseException $e) {
  // When Graph returns an error
  echo 'Graph returned an error: ' . $e->getMessage();
  exit;
} catch(Facebook\Exceptions\FacebookSDKException $e) {
  // When validation fails or other local issues
  echo 'Facebook SDK returned an error: ' . $e->getMessage();
  exit;
}

if (! isset($accessToken)) {
  if ($helper->getError()) {
    header('HTTP/1.0 401 Unauthorized');
    echo "Error: " . $helper->getError() . "\n";
    echo "Error Code: " . $helper->getErrorCode() . "\n";
    echo "Error Reason: " . $helper->getErrorReason() . "\n";
    echo "Error Description: " . $helper->getErrorDescription() . "\n";
  } else {
    header('HTTP/1.0 400 Bad Request');
    echo 'Bad request';
  }
  exit;
}

// Logged in
echo '<h3>Access Token</h3>';
var_dump($accessToken->getValue());

// The OAuth 2.0 client handler helps us manage access tokens
$oAuth2Client = $fb->getOAuth2Client();

// Get the access token metadata from /debug_token
$tokenMetadata = $oAuth2Client->debugToken($accessToken);
echo '<h3>Metadata</h3>';
var_dump($tokenMetadata);

echo '<h3>More</h3>';
$response = $fb->get('/me?fields=id,name', $accessToken);
$user = $response->getGraphUser();

echo '<h3>USER</h3>';
var_dump($user);

// Validation (these will throw FacebookSDKException's when they fail)
$tokenMetadata->validateAppId(APP_KEY);
// If you know the user ID this access token belongs to, you can validate it here
//$tokenMetadata->validateUserId('123');
$tokenMetadata->validateExpiration();

if (! $accessToken->isLongLived()) {
  // Exchanges a short-lived access token for a long-lived one
  try {
    $accessToken = $oAuth2Client->getLongLivedAccessToken($accessToken);
  } catch (Facebook\Exceptions\FacebookSDKException $e) {
    echo "<p>Error getting long-lived access token: " . $helper->getMessage() . "</p>\n\n";
    exit;
  }

  echo '<h3>Long-lived</h3>';
  var_dump($accessToken->getValue());
}

$_SESSION['fb_access_token'] = (string) $accessToken;

	//保存用户信息
	$user_info['user_id'] = $user['id'];
	$user_info['name'] = $user['name'];
	$_SESSION['user_info'] = $user_info;
	
	echo '<h3>REQUEST</h3>';
	var_dump($_REQUEST);
	
	echo '<h3>BACK URL</h3>';
	$go_url = "../../user.php?act=other_login&type=fb&callblock=" . $_SESSION["back_url"];
	
	
	
	
	header("location:".$go_url);
// User is logged in with a long-lived access token.
// You can redirect them to a members-only page.
//header('Location: https://example.com/members.php');
?>