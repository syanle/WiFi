// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.stat;


public class StatAppMonitor
{

    public static final int FAILURE_RESULT_TYPE = 1;
    public static final int LOGIC_FAILURE_RESULT_TYPE = 2;
    public static final int SUCCESS_RESULT_TYPE = 0;
    private String interfaceName;
    private long millisecondsConsume;
    private long reqSize;
    private long respSize;
    private int resultType;
    private int returnCode;
    private int sampling;

    public StatAppMonitor(String s)
    {
        interfaceName = null;
        reqSize = 0L;
        respSize = 0L;
        resultType = 0;
        millisecondsConsume = 0L;
        returnCode = 0;
        sampling = 1;
        interfaceName = s;
    }

    public StatAppMonitor(String s, int i, int j, long l, long l1, 
            long l2, int k)
    {
        interfaceName = null;
        reqSize = 0L;
        respSize = 0L;
        resultType = 0;
        millisecondsConsume = 0L;
        returnCode = 0;
        sampling = 1;
        interfaceName = s;
        reqSize = l;
        respSize = l1;
        resultType = i;
        millisecondsConsume = l2;
        returnCode = j;
        sampling = k;
    }

    public String getInterfaceName()
    {
        return interfaceName;
    }

    public long getMillisecondsConsume()
    {
        return millisecondsConsume;
    }

    public long getReqSize()
    {
        return reqSize;
    }

    public long getRespSize()
    {
        return respSize;
    }

    public int getResultType()
    {
        return resultType;
    }

    public int getReturnCode()
    {
        return returnCode;
    }

    public int getSampling()
    {
        return sampling;
    }

    public void setInterfaceName(String s)
    {
        interfaceName = s;
    }

    public void setMillisecondsConsume(long l)
    {
        millisecondsConsume = l;
    }

    public void setReqSize(long l)
    {
        reqSize = l;
    }

    public void setRespSize(long l)
    {
        respSize = l;
    }

    public void setResultType(int i)
    {
        resultType = i;
    }

    public void setReturnCode(int i)
    {
        returnCode = i;
    }

    public void setSampling(int i)
    {
        int j = i;
        if (i <= 0)
        {
            j = 1;
        }
        sampling = j;
    }
}
