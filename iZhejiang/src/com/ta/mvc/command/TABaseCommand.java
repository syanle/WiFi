// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.mvc.command;

import com.ta.mvc.common.TAIResponseListener;
import com.ta.mvc.common.TARequest;
import com.ta.mvc.common.TAResponse;

// Referenced classes of package com.ta.mvc.command:
//            TAICommand

public abstract class TABaseCommand
    implements TAICommand
{

    private TARequest request;
    private TAResponse response;
    private TAIResponseListener responseListener;
    private boolean terminated;

    public TABaseCommand()
    {
    }

    public TARequest getRequest()
    {
        return request;
    }

    public TAResponse getResponse()
    {
        return response;
    }

    public TAIResponseListener getResponseListener()
    {
        return responseListener;
    }

    public boolean isTerminated()
    {
        return terminated;
    }

    public void setRequest(TARequest tarequest)
    {
        request = tarequest;
    }

    public void setResponse(TAResponse taresponse)
    {
        response = taresponse;
    }

    public void setResponseListener(TAIResponseListener tairesponselistener)
    {
        responseListener = tairesponselistener;
    }

    public void setTerminated(boolean flag)
    {
        terminated = flag;
    }
}
