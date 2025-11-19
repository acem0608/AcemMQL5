//+------------------------------------------------------------------+
//|                                         AcemExportBidAskData.mq5 |
//|                                  Copyright 2023, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+

#include <Acem/Common/AcemUtility.mqh>
#include <Acem/Cmd/AcemExportBidAsk.mqh>

#define INDICATOR_SHORT_NAME "AcemDisplaySymbolWatermark"

CAcemExportBidAsk exportBidAsk;

int OnInit()
{
    //--- indicator buffers mapping
    IndicatorSetString(INDICATOR_SHORTNAME, INDICATOR_SHORT_NAME);
    long chartId = ChartID();
    if (isSameIndicator(chartId, INDICATOR_SHORT_NAME)) {
        return (INIT_FAILED);
    }

    if (exportBidAsk.init() == false) {
        return INIT_FAILED;
    }
    
    //---
    return (INIT_SUCCEEDED);
}

void OnDeinit(const int reason)
{
    exportBidAsk.deinit(reason);
}

//+------------------------------------------------------------------+
//| Custom indicator iteration function                              |
//+------------------------------------------------------------------+
int OnCalculate(const int32_t rates_total,
                const int32_t prev_calculated,
                const datetime& time[],
                const double& open[],
                const double& high[],
                const double& low[],
                const double& close[],
                const long& tick_volume[],
                const long& volume[],
                const int32_t& spread[])
{
    //---
    exportBidAsk.OnCalculate(rates_total, prev_calculated, time, open, high, low, close, tick_volume, volume, spread);
    //--- return value of prev_calculated for next call
    return (rates_total);
}
//+------------------------------------------------------------------+
//| ChartEvent function                                              |
//+------------------------------------------------------------------+
void OnChartEvent(const int32_t id,
                  const long& lparam,
                  const double& dparam,
                  const string& sparam)
{
    //---
    exportBidAsk.OnChartEvent(id, lparam, dparam, sparam);
}
//+------------------------------------------------------------------+
