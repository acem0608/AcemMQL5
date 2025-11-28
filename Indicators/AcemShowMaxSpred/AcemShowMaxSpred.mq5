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
#property indicator_buffers 3
#property indicator_plots 3

#property indicator_label1 "Bid"
#property indicator_type1 DRAW_LINE
#property indicator_color1 clrRed
#property indicator_style1 STYLE_SOLID
#property indicator_width1 1

#property indicator_label2 "Ask"
#property indicator_type2 DRAW_LINE
#property indicator_color2 clrYellowGreen
#property indicator_style2 STYLE_SOLID
#property indicator_width2 1

#property indicator_label3 "MaxAsk"
#property indicator_type3 DRAW_LINE
#property indicator_color3 clrYellow
#property indicator_style3 STYLE_SOLID
#property indicator_width3 1

#define INDICATOR_SHORT_NAME "AcemShowMaxSpred"

double BidBuffer[];
double AskBuffer[];
double MaxAskBuffer[];

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
    SetIndexBuffer(2, MaxAskBuffer, INDICATOR_DATA);

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
/*
    for (int i = 0; i < rates_total; i++) {
        BidBuffer[i] = 155.45;
        AskBuffer[i] = 155.50;
        MaxAskBuffer[i] = 155.55;
    }
*/
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
