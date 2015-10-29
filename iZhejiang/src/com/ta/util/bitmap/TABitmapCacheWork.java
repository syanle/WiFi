// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.bitmap;

import android.content.Context;
import android.content.res.Resources;
import android.widget.ImageView;
import com.ta.util.cache.TAFileCache;
import com.ta.util.cache.TAFileCacheWork;

// Referenced classes of package com.ta.util.bitmap:
//            TADownloadBitmapHandler, TABitmapCallBackHanlder

public class TABitmapCacheWork extends TAFileCacheWork
{

    private static final String TAG = "TABitmapCacheWork";
    private com.ta.util.cache.TAFileCache.TACacheParams mCacheParams;
    private Context mContext;
    protected Resources mResources;

    public TABitmapCacheWork(Context context)
    {
        mResources = context.getResources();
        mContext = context;
    }

    protected void clearCacheInternal()
    {
        super.clearCacheInternal();
        TADownloadBitmapHandler tadownloadbitmaphandler = (TADownloadBitmapHandler)getProcessDataHandler();
        if (tadownloadbitmaphandler != null)
        {
            tadownloadbitmaphandler.clearCacheInternal();
        }
    }

    protected void closeCacheInternal()
    {
        super.closeCacheInternal();
        TADownloadBitmapHandler tadownloadbitmaphandler = (TADownloadBitmapHandler)getProcessDataHandler();
        if (tadownloadbitmaphandler != null)
        {
            tadownloadbitmaphandler.closeCacheInternal();
        }
    }

    protected void flushCacheInternal()
    {
        super.flushCacheInternal();
        TADownloadBitmapHandler tadownloadbitmaphandler = (TADownloadBitmapHandler)getProcessDataHandler();
        if (tadownloadbitmaphandler != null)
        {
            tadownloadbitmaphandler.flushCacheInternal();
        }
    }

    protected void initDiskCacheInternal()
    {
        TADownloadBitmapHandler tadownloadbitmaphandler = (TADownloadBitmapHandler)getProcessDataHandler();
        super.initDiskCacheInternal();
        if (tadownloadbitmaphandler != null)
        {
            tadownloadbitmaphandler.initDiskCacheInternal();
        }
    }

    public void loadFormCache(Object obj, ImageView imageview)
    {
        if (getCallBackHandler() == null)
        {
            setCallBackHandler(new TABitmapCallBackHanlder());
        }
        if (getProcessDataHandler() == null)
        {
            setProcessDataHandler(new TADownloadBitmapHandler(mContext, 100));
        }
        super.loadFormCache(obj, imageview);
    }

    public volatile void loadFormCache(Object obj, Object obj1)
    {
        loadFormCache(obj, (ImageView)obj1);
    }

    public void setBitmapCache(com.ta.util.cache.TAFileCache.TACacheParams tacacheparams)
    {
        mCacheParams = tacacheparams;
        setFileCache(new TAFileCache(tacacheparams));
    }
}
