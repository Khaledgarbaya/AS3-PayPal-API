package net.khaledgarbaya.api.paypal
{
	import net.khaledgarbaya.api.paypal.net.PayPalRequest;
	import flash.net.URLRequest;
	import flash.net.navigateToURL;
	import flash.net.URLRequestMethod;
	/**
	* PayPal the main class for making paypal requests
	* @author Khaled Garbaya khaledgarbaya@gmail.com
	*/
	public class PayPal
	{
		/**
		* @private
		**/
		private static  var urlRequest:URLRequest = new URLRequest;
		
		/**
		* @private
		**/
		private var _canInit:Boolean = false;
		
		public function PayPal()
		{
			if( !_canInit )
				throw new Error("PayPal Class cannot be instantiated");
		}
		
		/**
		* Make PayPal Request
		* @param paypalRequest PayPalRequest 
		* @param sandbox Boolean default false when you change it to true the class will redirect you to
		* http://sandbox.paypal.... so you can use test accounts to do fake payment, don't forget to change it back to false
		* when you publish your app in production server
		*/
		public static function makeRequest( paypalRequest:PayPalRequest, sandbox:Boolean=false ) : void
		{
			urlRequest.url =  sandbox ? PayPalRequest.SANDBOX_API_URL : PayPalRequest.API_URL;
			urlRequest.data  = paypalRequest.getUrlVariables();
			urlRequest.method = URLRequestMethod.POST;
			
			navigateToURL( urlRequest , "_self" );
		}
	}

}