// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.baidu.platform.comjni.map.basemap;

import android.os.Bundle;

// Referenced classes of package com.baidu.platform.comjni.map.basemap:
//            BaseMapCallback

public class JNIBaseMap
{

    int a;

    public JNIBaseMap()
    {
    }

    public static native int MapProc(int i, int j, int k, int l);

    public native int AddLayer(int i, int j, int k, String s);

    public native void ClearLayer(int i, int j);

    public native int Create();

    public native int CreateDuplicate(int i);

    public native String GeoPtToScrPoint(int i, int j, int k);

    public native boolean GetBaiduHotMapCityInfo(int i);

    public native Bundle GetMapStatus(int i);

    public native String GetNearlyObjID(int i, int j, int k, int l, int i1);

    public native int[] GetScreenBuf(int i, int ai[]);

    public native float GetZoomToBound(int i, Bundle bundle);

    public native boolean Init(int i, String s, String s1, String s2, String s3, String s4, String s5, 
            int j, int k, int l, int i1, int j1, int k1, int l1);

    public native String OnHotcityGet(int i);

    public native void OnPause(int i);

    public native boolean OnRecordAdd(int i, int j);

    public native String OnRecordGetAll(int i);

    public native String OnRecordGetAt(int i, int j);

    public native boolean OnRecordImport(int i, boolean flag, boolean flag1);

    public native boolean OnRecordRemove(int i, int j, boolean flag);

    public native boolean OnRecordStart(int i, int j, boolean flag, int k);

    public native boolean OnRecordSuspend(int i, int j, boolean flag, int k);

    public native void OnResume(int i);

    public native String OnSchcityGet(int i, String s);

    public native void PostStatInfo(int i);

    public native int Release(int i);

    public native void ResetImageRes(int i);

    public native void SaveScreenToLocal(int i, String s);

    public native String ScrPtToGeoPoint(int i, int j, int k);

    public native int SetCallback(int i, BaseMapCallback basemapcallback);

    public native int SetMapControlMode(int i, int j);

    public native void SetMapStatus(int i, Bundle bundle);

    public native void ShowHotMap(int i, boolean flag);

    public native void ShowLayers(int i, int j, boolean flag);

    public native void ShowSatelliteMap(int i, boolean flag);

    public native void ShowTrafficMap(int i, boolean flag);

    public native void UpdateLayers(int i, int j);

    public native void addOneOverlayItem(int i, Bundle bundle);

    public native void clearHeatMapLayerCache(int i);

    public native void enableDrawHouseHeight(int i, boolean flag);

    public native Bundle getDrawingMapStatus(int i);

    public native boolean isDrawHouseHeightEnable(int i);

    public native void removeOneOverlayItem(int i, Bundle bundle);

    public native void updateOneOverlayItem(int i, Bundle bundle);
}
