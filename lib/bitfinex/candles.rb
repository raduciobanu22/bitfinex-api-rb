module Bitfinex
  module CandlesClient

    # Get candle info
    # @param timeframe [string] The timeframe to be used. Available values: '1m', '5m', '15m', '30m', '1h', '3h', '6h', '12h', '1D', '7D', '14D', '1M'
    # @param symbol [string] The name of the symbol
    # @param params :limit [int] Number of candles requested
    # @param params :start [string] Filter start (ms)
    # @param params :end   [string] Filter end (ms)
    # @param params :sort  [int]    If :sort=1 it sorts results returned from old -> new
    # @return [Array]
    # @example:
    #   client.candles
    #
    def candles(timeframe, symbol, section, params = {})
      check_params(params, %i{limit start end sort})
      get("candles/trade:#{timeframe}:#{symbol}/#{section}", params: params).body
    end

  end
end