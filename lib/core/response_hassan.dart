class Response {
  int _statusCode;
  dynamic _object;


  Response(this._statusCode, this._object);

  dynamic get object => this._object;

  set object(dynamic value) {
    this._object = value;
  }

  int get statusCode => this._statusCode;

  set statusCode(int value) {
    this._statusCode = value;
  }
}