//+------------------------------------------------------------------+
//|                                             AcemShowMaxSpred.mq5 |
//|                                  Copyright 2023, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+

#include <Acem/Cmd/AcemShowMaxSpred.mqh>
#include <Acem/Common/AcemUtility.mqh>

// #property indicator_separate_window true
#property indicator_buffers 2
#property indicator_plots 2

#property indicator_label1 "Bid"
#property indicator_type1 DRAW_LINE
#property indicator_color1 clrRed
#property indicator_style1 STYLE_SOLID
#property indicator_width1 1

#property indicator_label2 "Ask"
#property indicator_type2 DRAW_LINE
#property indicator_color2 clrBlue
#property indicator_style2 STYLE_SOLID
#property indicator_width2 1

#define INDICATOR_SHORT_NAME "AcemShowMaxSpred"

double BidBuffer[];
double AskBuffer[];

CAcemShowMaxSpred showMaxSpred;

int OnInit()
{
    //--- indicator buffers mapping
    IndicatorSetString(INDICATOR_SHORTNAME, INDICATOR_SHORT_NAME);
    long chartId = ChartID();
    if (isSameIndicator(chartId, INDICATOR_SHORT_NAME)) {
        return (INIT_FAILED);
    }

    SetIndexBuffer(0, BidBuffer, INDICATOR_DATA);
    SetIndexBuffer(1, AskBuffer, INDICATOR_DATA);

    if (showMaxSpred.init() == false) {
        return INIT_FAILED;
    }

    //---
    return (INIT_SUCCEEDED);
}

void OnDeinit(const int reason)
{
    showMaxSpred.deinit(reason);
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
    showMaxSpred.calculate(rates_total,
                           prev_calculated,
                           time,
                           open,
                           high,
                           low,
                           close,
                           tick_volume,
                           volume,
                           spread);
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
