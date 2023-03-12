class DataModel {
  var ticker, high, low, open, volume, avgVolume;
  var close, pe, mktCap, beta, price;
  var eps, peg, ev, ebitda, website;

  DataModel.fromJson(Map<String, dynamic> json)
      : ticker = json['symbol'],
        open = json['open'],
        high = json['dayHigh'],
        low = json['dayLow'],
        volume = json['volume'],
        avgVolume = json['averageVolume'],
        close = json['previousClose'],
        pe = json['trailingPE'],
        mktCap = json['marketCap'],
        beta = json['beta'],
        eps = json['trailingEps'],
        peg = json['pegRatio'],
        ev = json['enterpriseValue'],
        ebitda = json['ebitda'],
        price = json['currentPrice'],
        website = json['website'];

  //a method that convert object to json
  Map<String, dynamic> toJson() => {
        'ticker': ticker,
        'open': open,
        'high': high,
        'low': low,
        'volume': volume,
        'avgVolume': avgVolume,
        'close': close,
        'PE': pe,
        'mktCap': mktCap,
        'beta': beta,
        'EPS': eps,
        'PEG': peg,
        'EV': ev,
        'EBITDA': ebitda,
        'price': price,
        'website': website
      };
}
