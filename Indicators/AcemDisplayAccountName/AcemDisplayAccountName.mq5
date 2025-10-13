//+------------------------------------------------------------------+
//|                                       AcemDisplayAccountName.mq5 |
//|                                  Copyright 2023, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
#include <Acem/Cmd/AcemDisplayAccountName.mqh>
#include <Acem/Common/AcemUtility.mqh>

#define INDICATOR_SHORT_NAME "AcemDisplayAccountName"

CAcemDisplayAccountName accountName;
int OnInit()
{
    //--- indicator buffers mapping
    IndicatorSetString(INDICATOR_SHORTNAME, INDICATOR_SHORT_NAME);
    long chartId = ChartID();
    if (isSameIndicator(chartId, INDICATOR_SHORT_NAME)) {
        return (INIT_FAILED);
    }

    accountName.Init();
    //---
    return (INIT_SUCCEEDED);
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
}
//+------------------------------------------------------------------+
