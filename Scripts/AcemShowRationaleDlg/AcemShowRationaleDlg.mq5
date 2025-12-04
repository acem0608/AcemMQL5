//+------------------------------------------------------------------+
//|                                         AcemShowRationaleDlg.mq5 |
//|                                             Copyright 2023, Acem |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+

#include <Acem/Common/AcemDefine.mqh>

void OnStart()
  {
//---
    EventChartCustom(ChartID(), ACEM_CUSTOM_EVENT_ID, 0, 0.0, ACEM_CUSTOM_EVENT_CMD_SHOW_RATIONALLE_DLG);
  }
//+------------------------------------------------------------------+
