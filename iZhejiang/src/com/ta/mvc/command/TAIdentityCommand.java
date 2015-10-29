// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.mvc.command;

import com.ta.mvc.common.TARequest;
import com.ta.mvc.common.TAResponse;

// Referenced classes of package com.ta.mvc.command:
//            TACommand

public class TAIdentityCommand extends TACommand
{

    public TAIdentityCommand()
    {
    }

    protected void executeCommand()
    {
        TARequest tarequest = getRequest();
        TAResponse taresponse = new TAResponse();
        taresponse.setTag(tarequest.getTag());
        taresponse.setData(tarequest.getData());
        taresponse.setActivityKey(tarequest.getActivityKey());
        taresponse.setActivityKeyResID(tarequest.getActivityKeyResID());
        setResponse(taresponse);
        notifyListener(true);
    }

    protected void notifyListener(boolean flag)
    {
        if (getResponseListener() != null)
        {
            sendMessage(4);
        }
    }
}
