// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;


public class ServerUrlSetting
{

    public String strPoiSearchUrl;
    public String strSateliteTmcUrl;
    public String strSateliteUrl;
    public String strTileUrl;
    public String strTmcTileUrl;
    public String strVectorMapUrl;

    public ServerUrlSetting()
    {
        strTileUrl = "";
        strTmcTileUrl = "";
        strPoiSearchUrl = "";
        strSateliteUrl = "";
        strSateliteTmcUrl = "";
        strVectorMapUrl = "";
    }
}
