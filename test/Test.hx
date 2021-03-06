class Test {
	static function main() {
		var parser = new PrintfParser(byte.ByteData.ofString("Valu$$e: $-050.2f kg"));
		trace(parser.parse());
		
		var parser = new JSONParser(byte.ByteData.ofString('{ "key": [true, false, null], "other\tkey": [12, 12.1, 0, 0.1, 0.9e, 0.9E, 9E-] }'), "jsontest");
		trace(parser.parse());
		
		// Using haxe.Utf8
		var value = 'âêùあ𠀀';
		var lexer = new UnicodeTestLexer( byte.ByteData.ofString( value ), 'uft8-test' );
		var tokens = [];

		try while (true) {
			tokens.push( lexer.token( UnicodeTestLexer.root ) );
		} catch (_e:Dynamic) {
			trace(_e);
		}
		trace( tokens );
	}
}