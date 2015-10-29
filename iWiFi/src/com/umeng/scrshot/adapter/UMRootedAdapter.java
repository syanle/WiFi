// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.scrshot.adapter;

import android.content.Context;
import android.graphics.Bitmap;
import com.umeng.scrshot.impl.UMBaseScrShotImpl;
import com.umeng.scrshot.impl.UMRootedScrShotImpl;

// Referenced classes of package com.umeng.scrshot.adapter:
//            UMBaseAdapter

public class UMRootedAdapter extends UMBaseAdapter
{

    private Context mContext;

    public UMRootedAdapter(Context context)
    {
        mContext = null;
        mContext = context;
        mScrShotImpl = new UMRootedScrShotImpl(mContext);
    }

    public Bitmap getBitmap()
    {
        if (!isScrShotImplNotNull())
        {
            return null;
        } else
        {
            return mScrShotImpl.getBitmap();
        }
    }
}
