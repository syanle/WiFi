// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.weibo.sdk.android.network;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.tencent.weibo.sdk.android.network:
//            HttpReq

public class HttpService
{

    private static HttpService instance = null;
    private final int TAG_RUNNING = 1;
    private final int TAG_WAITTING = 0;
    private List mRunningReqList;
    private int mThreadNum;
    private List mWaitReqList;

    private HttpService()
    {
        mWaitReqList = null;
        mRunningReqList = null;
        mThreadNum = 4;
        mWaitReqList = new LinkedList();
        mRunningReqList = new LinkedList();
    }

    public static HttpService getInstance()
    {
        if (instance == null)
        {
            instance = new HttpService();
        }
        return instance;
    }

    public void SetAsynchronousTaskNum(int i)
    {
    }

    public void addImmediateReq(HttpReq httpreq)
    {
        httpreq.setServiceTag(1);
        mRunningReqList.add(httpreq);
        httpreq.execute(new Void[0]);
    }

    public void addNormalReq(HttpReq httpreq)
    {
        if (mRunningReqList.size() < mThreadNum)
        {
            httpreq.setServiceTag(1);
            mRunningReqList.add(httpreq);
            httpreq.execute(new Void[0]);
            return;
        } else
        {
            httpreq.setServiceTag(0);
            mWaitReqList.add(httpreq);
            return;
        }
    }

    public void cancelAllReq()
    {
        Iterator iterator = mRunningReqList.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                mWaitReqList.clear();
                return;
            }
            ((HttpReq)iterator.next()).cancel(true);
        } while (true);
    }

    public void cancelReq(HttpReq httpreq)
    {
        Iterator iterator;
        if (httpreq.getServiceTag() != 1)
        {
            break MISSING_BLOCK_LABEL_61;
        }
        iterator = mRunningReqList.iterator();
_L3:
        if (iterator.hasNext()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if ((HttpReq)iterator.next() == httpreq)
        {
            httpreq.cancel(true);
            mRunningReqList.remove(httpreq);
        }
          goto _L3
        if (httpreq.getServiceTag() == 0)
        {
            Iterator iterator1 = mWaitReqList.iterator();
            while (iterator1.hasNext()) 
            {
                if (httpreq == iterator1.next())
                {
                    mWaitReqList.remove(httpreq);
                }
            }
        }
          goto _L1
    }

    public void onReqFinish(HttpReq httpreq)
    {
        Object obj = mRunningReqList.iterator();
_L2:
        if (((Iterator) (obj)).hasNext())
        {
            continue; /* Loop/switch isn't completed */
        }
_L3:
        if (mWaitReqList.size() > 0 && mRunningReqList.size() < mThreadNum)
        {
            httpreq = mWaitReqList.iterator();
            obj = (HttpReq)httpreq.next();
            httpreq.remove();
            ((HttpReq) (obj)).setServiceTag(1);
            mRunningReqList.add(obj);
            ((HttpReq) (obj)).execute(new Void[0]);
        }
        return;
        if (httpreq != (HttpReq)((Iterator) (obj)).next()) goto _L2; else goto _L1
_L1:
        ((Iterator) (obj)).remove();
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

}
