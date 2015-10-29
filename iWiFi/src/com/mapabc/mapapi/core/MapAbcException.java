// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mapabc.mapapi.core;


public class MapAbcException extends Exception
{

    public static final String ERROR_CONNECTION = "http\u8FDE\u63A5\u5931\u8D25 - ConnectionException";
    public static final String ERROR_INVALID_PARAMETER = "\u65E0\u6548\u7684\u53C2\u6570 - IllegalArgumentException";
    public static final String ERROR_INVALID_PB = "protobuf\u89E3\u6790\u9519\u8BEF - InvalidProtocolBufferException";
    public static final String ERROR_INVOCATION_CLASS = "\u53CD\u5C04\u9519\u8BEF - InvocationTargetException";
    public static final String ERROR_IO = "IO \u64CD\u4F5C\u5F02\u5E38 - IOException";
    public static final String ERROR_NO_SUCH_METHOD = "\u6CA1\u6709\u627E\u5230\u8C03\u7528\u65B9\u6CD5 - NoSuchMethodException";
    public static final String ERROR_NULL_PARAMETER = "\u7A7A\u6307\u9488\u5F02\u5E38 - NullPointException";
    public static final String ERROR_PB_STATE1 = "\u65E0\u67E5\u8BE2\u7ED3\u679C-000001";
    public static final String ERROR_PB_STATE10 = "IP\u9A8C\u8BC1\u5931\u8D25-020004";
    public static final String ERROR_PB_STATE11 = "\u57CE\u5E02\u9A8C\u8BC1\u5931\u8D25-020005";
    public static final String ERROR_PB_STATE12 = "\u57FA\u7840\u6A21\u578B\u9A8C\u8BC1\u5931\u8D25-020006";
    public static final String ERROR_PB_STATE13 = "\u7F51\u5361\u5730\u5740\u4E0D\u5339\u914D-020007";
    public static final String ERROR_PB_STATE14 = "license\u914D\u7F6E\u9519\u8BEF-020008";
    public static final String ERROR_PB_STATE15 = "\u57CE\u5E02\u53F7\u4E0D\u5339\u914D-020009";
    public static final String ERROR_PB_STATE16 = "\u5934\u6587\u4EF6\u4E0D\u5339\u914D-020010";
    public static final String ERROR_PB_STATE17 = "\u8BF7\u6C42\u6570\u8D85\u51FA\u6700\u5927\u8303\u56F4-020011";
    public static final String ERROR_PB_STATE18 = "\u7F13\u5B58\u670D\u52A1\u5668\u5F02\u5E38-030001";
    public static final String ERROR_PB_STATE19 = "\u67E5\u8BE2\u670D\u52A1\u8FDE\u63A5\u5F02\u5E38-040001";
    public static final String ERROR_PB_STATE2 = "\u8C03\u7528\u670D\u52A1\u53D1\u751F\u5F02\u5E38-000002";
    public static final String ERROR_PB_STATE20 = "\u67E5\u8BE2\u670D\u52A1\u8FD4\u56DE\u683C\u5F0F\u89E3\u6790\u5F02\u5E38-040002";
    public static final String ERROR_PB_STATE21 = "\u5F53\u524D\u683C\u5F0F\u4E0D\u652F\u6301-050001";
    public static final String ERROR_PB_STATE3 = "\u975E\u6CD5\u5750\u6807\u683C\u5F0F-010001";
    public static final String ERROR_PB_STATE4 = "\u5B57\u7B26\u96C6\u7F16\u7801\u9519\u8BEF-010002";
    public static final String ERROR_PB_STATE5 = "Apikey\u4E3A\u7A7A-010003";
    public static final String ERROR_PB_STATE6 = "Apikey\u4E0D\u6B63\u786E-020001";
    public static final String ERROR_PB_STATE7 = "\u4EA7\u54C1\u672A\u6388\u6743-020000";
    public static final String ERROR_PB_STATE8 = "Api\u8D26\u53F7\u4E0D\u5B58\u5728-020002";
    public static final String ERROR_PB_STATE9 = "\u6CA1\u6709\u670D\u52A1\u8BBF\u95EE\u6743\u9650-020003";
    public static final String ERROR_PROTOCOL = "\u534F\u8BAE\u89E3\u6790\u9519\u8BEF - ProtocolException";
    public static final String ERROR_SOCKET = "socket \u8FDE\u63A5\u5F02\u5E38 - SocketException";
    public static final String ERROR_SOCKE_TIME_OUT = "socket \u8FDE\u63A5\u8D85\u65F6 - SocketTimeoutException";
    public static final String ERROR_UNKNOWN = "\u672A\u77E5\u7684\u9519\u8BEF";
    public static final String ERROR_UNKNOW_HOST = "\u672A\u77E5\u4E3B\u673A - UnKnowHostException";
    public static final String ERROR_UNKNOW_SERVICE = "\u670D\u52A1\u5668\u8FDE\u63A5\u5931\u8D25 - UnknownServiceException";
    public static final String ERROR_URL = "url\u5F02\u5E38 - MalformedURLException";
    private String a;

    public MapAbcException()
    {
        a = "\u672A\u77E5\u7684\u9519\u8BEF";
    }

    public MapAbcException(String s)
    {
        a = "\u672A\u77E5\u7684\u9519\u8BEF";
        a = s;
    }

    public String getErrorMessage()
    {
        return a;
    }
}
