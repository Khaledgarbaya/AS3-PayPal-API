package net.khaledgarbaya.api.paypal.net
{
	import flash.net.URLRequestMethod;
	import flash.net.URLRequest;
	import flash.net.URLVariables;
	
	/**
	* PayPalRequest used to build paypal api request
	* @author Khaled Garbaya khaledgarbaya@gmail.com
	*/
	public class PayPalRequest
	{
		/**
		* paypal production api url
		**/
		public static var API_URL:String = "https://www.paypal.com/cgi-bin/webscr";
		/**
		* paypal sandbox api url
		**/
		public static var SANDBOX_API_URL:String = "https://www.sandbox.paypal.com/cgi-bin/webscr";
		
		/**
		* the request method to use when send data
		**/
		public static var API_METHOD:String = URLRequestMethod.POST;
		
		
		private var _cmd:String;
		private var _business:String;
		private var _lc:String;
		private var _item_name:String;
		private var _item_number:String;
		private var _amount:String;
		private var _success_return_uri:String;
		private var _cancel_return_uri:String;
		/**
		* create Paypal request
		* @param cmd
		* @param business
		* @param lc
		* @param item_name
		* @param item_number
		* @param amount
		* @param success_return_uri
		* @param cancel_return_uri
		*/
		public function PayPalRequest( cmd:String, business:String, lc:String, item_name:String,  item_number:String, amount:String, success_return_uri:String, cancel_return_uri:String )
		{
			this.cmd       		= cmd;
			this.business  		= business;
			this.lc        		= lc;
			this.item_name 		= item_name;
			this.item_number	= item_number;
			this.amount 		= amount;
			this.success_return_uri = success_return_uri;
			this.cancel_return_uri = cancel_return_uri;
		}
		
		public function getUrlVariables(  ):URLVariables
		{
			var urlVars:URLVariables = new URLVariables(  );
			urlVars.cmd 		   = this.cmd;
			urlVars.business	   = this.business;
			urlVars.lc			   = this.lc;
			urlVars.item_name	   = this.item_name;
			urlVars.item_number    = this.item_number;
			urlVars.amount 		   = this.amount;
			urlVars.currency_code  = "EUR";
			urlVars["return"]      = this.success_return_uri;
			urlVars.cancel_return  = this.cancel_return_uri;
			return urlVars;
		}
		public function get cmd():String 
		{
			return _cmd;
		}
		
		public function set cmd(value:String):void 
		{
			_cmd = value;
		}
		
		public function get business():String 
		{
			return _business;
		}
		
		public function set business(value:String):void 
		{
			_business = value;
		}
		
		public function get lc():String 
		{
			return _lc;
		}
		
		public function set lc(value:String):void 
		{
			_lc = value;
		}
		
		public function get item_name():String 
		{
			return _item_name;
		}
		
		public function set item_name(value:String):void 
		{
			_item_name = value;
		}
		
		public function get item_number():String 
		{
			return _item_number;
		}
		
		public function set item_number(value:String):void 
		{
			_item_number = value;
		}
		
		public function get amount():String 
		{
			return _amount;
		}
		
		public function set amount(value:String):void 
		{
			_amount = value;
		}
		public function set success_return_uri(value:String):void
		{
			_success_return_uri = value;
		}
		public function get success_return_uri():String
		{
			return _success_return_uri;
		}
		
		public function set cancel_return_uri(value:String):void
		{
			_cancel_return_uri = value;
		}
		public function get cancel_return_uri():String
		{
			return _cancel_return_uri;
		}

	}

}