// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.mvc.command;

import com.ta.mvc.common.TAIResponseListener;
import com.ta.mvc.common.TARequest;
import com.ta.mvc.common.TAResponse;

public interface TAICommand
{

    public abstract void execute();

    public abstract TARequest getRequest();

    public abstract TAResponse getResponse();

    public abstract TAIResponseListener getResponseListener();

    public abstract boolean isTerminated();

    public abstract void setRequest(TARequest tarequest);

    public abstract void setResponse(TAResponse taresponse);

    public abstract void setResponseListener(TAIResponseListener tairesponselistener);

    public abstract void setTerminated(boolean flag);
}
