// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.controller;

import android.os.AsyncTask;
import android.text.TextUtils;
import im.yixin.sdk.api.YXMessage;

// Referenced classes of package com.umeng.socialize.controller:
//            UMYXHandler

private class shareType extends AsyncTask
{

    private YXMessage mYXShareMsg;
    private com.umeng.socialize.media.tenersOnStart shareType;
    final UMYXHandler this$0;

    private void disposeText(YXMessage yxmessage)
    {
        if (isToCircle && TextUtils.isEmpty(yxmessage.title))
        {
            yxmessage.title = yxmessage.description;
        }
        if (!TextUtils.isEmpty(yxmessage.title) && yxmessage.title.getBytes().length >= mTitleLimit)
        {
            yxmessage.description = new String(yxmessage.description.getBytes(), 0, 512);
        }
        if (!TextUtils.isEmpty(yxmessage.description) && yxmessage.description.getBytes().length >= mDescriptionLimit)
        {
            yxmessage.description = new String(yxmessage.description.getBytes(), 0, 1024);
        }
    }

    private void initTitle()
    {
    }

    protected transient Boolean doInBackground(Void avoid[])
    {
        initTitle();
        if (shareType != com.umeng.socialize.media.AGE) goto _L2; else goto _L1
_L1:
        mYXShareMsg = getShareWebPage(mShareMedia);
_L4:
        boolean flag = false;
        if (mYXShareMsg != null)
        {
            disposeText(mYXShareMsg);
            mYXShareMsg.thumbData = compressBitmap(mYXShareMsg.thumbData);
            flag = doShare(mYXShareMsg, shareType);
        }
        return Boolean.valueOf(flag);
_L2:
        avoid = ((Void []) (createMessage(shareType)));
        if (avoid != null && (avoid instanceof YXMessage))
        {
            mYXShareMsg = (YXMessage)avoid;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected volatile transient Object doInBackground(Object aobj[])
    {
        return doInBackground((Void[])aobj);
    }

    protected void onPostExecute(Boolean boolean1)
    {
        UMYXHandler.access$8(isToCircle);
        UMYXHandler.access$9(mYXShareMsg.description);
        UMYXHandler.access$10(mShareMedia);
        UMYXHandler.access$5(mContext);
        sendReport(boolean1);
        if (UMYXHandler.access$6(UMYXHandler.this))
        {
            UMYXHandler.access$11(UMYXHandler.this);
        }
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((Boolean)obj);
    }

    protected void onPreExecute()
    {
        if (UMYXHandler.access$6(UMYXHandler.this))
        {
            UMYXHandler.access$7(UMYXHandler.this);
        }
        super.onPreExecute();
        fireAllListenersOnStart();
    }

    public (com.umeng.socialize.media.Task task)
    {
        this$0 = UMYXHandler.this;
        super();
        mYXShareMsg = null;
        shareType = task;
    }
}
