package net.khaledgarbaya.api.paypal
{
	import net.khaledgarbaya.api.paypal.net.PayPalRequest;
	import flash.net.URLRequest;
	import flash.net.navigateToURL;
	import flash.net.URLRequestMethod;

	public class PayPal
	{
		private static  var urlRequest:URLRequest = new URLRequest;
		private var _canInit:Boolean = false;
		public function PayPal()
		{
			if( !_canInit )
				throw new Error("PayPal Class cannot be instantiated");
		}
		
		public static function makeRequest( paypalRequest:PayPalRequest, sandbox:Boolean=false ) : void
		{
			urlRequest.url =  sandbox ? PayPalRequest.SANDBOX_API_URL : PayPalRequest.API_URL;
			urlRequest.data  = paypalRequest.getUrlVariables();
			urlRequest.method = URLRequestMethod.POST;
			
			navigateToURL( urlRequest , "_self" );
		}
	}

}