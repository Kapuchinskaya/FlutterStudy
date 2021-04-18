import 'package:http/http.dart' as http;
import 'dart:convert';


const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const apiKey = 'F21A195B-7DF4-4AE8-921E-853E4642B893';
const urlBeginning = 'https://rest.coinapi.io/v1/exchangerate';

class CoinData {
  //3. Create the Asynchronous method getCoinData() that returns a Future (the price data).
  Future getCoinData(selectedCurrency1) async {
    //почему здесь selectedCurrency видна!?!?!?!?!
    http.Response response =
        await http.get('$urlBeginning/BTC/$selectedCurrency1?apikey=$apiKey');

    if (response.statusCode == 200) {
      var lastPrice = jsonDecode(response.body)['rate'];

      return lastPrice;
    } else {
      print(response.statusCode);

      throw 'Problem with the get request';
    }
  }
}


