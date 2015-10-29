// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.util.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import com.ta.common.AndroidVersionCheckUtils;
import com.ta.util.TALogger;
import com.ta.util.cache.DiskLruCache;
import com.ta.util.cache.TAExternalOverFroyoUtils;
import com.ta.util.cache.TAExternalUnderFroyoUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

// Referenced classes of package com.ta.util.bitmap:
//            TAResizerBitmapHandler

public class TADownloadBitmapHandler extends TAResizerBitmapHandler
{

    private static final int DISK_CACHE_INDEX = 0;
    private static final String HTTP_CACHE_DIR = "http";
    private static final int HTTP_CACHE_SIZE = 0xa00000;
    private static final int IO_BUFFER_SIZE = 8192;
    private static final String TAG = "TABitmapFetcher";
    private File mHttpCacheDir;
    private DiskLruCache mHttpDiskCache;
    private final Object mHttpDiskCacheLock;
    private boolean mHttpDiskCacheStarting;

    public TADownloadBitmapHandler(Context context, int i)
    {
        super(context, i);
        mHttpDiskCacheStarting = true;
        mHttpDiskCacheLock = new Object();
        init(context);
    }

    public TADownloadBitmapHandler(Context context, int i, int j)
    {
        super(context, i, j);
        mHttpDiskCacheStarting = true;
        mHttpDiskCacheLock = new Object();
        init(context);
    }

    public static void disableConnectionReuseIfNecessary()
    {
        if (android.os.Build.VERSION.SDK_INT < 8)
        {
            System.setProperty("http.keepAlive", "false");
        }
    }

    private void init(Context context)
    {
        if (AndroidVersionCheckUtils.hasGingerbread())
        {
            mHttpCacheDir = TAExternalOverFroyoUtils.getDiskCacheDir(context, "http");
        } else
        {
            mHttpCacheDir = TAExternalUnderFroyoUtils.getDiskCacheDir(context, "http");
        }
        initDiskCacheInternal();
    }

    private void initHttpDiskCache()
    {
        if (!mHttpCacheDir.exists())
        {
            mHttpCacheDir.mkdirs();
        }
        Object obj = mHttpDiskCacheLock;
        obj;
        JVM INSTR monitorenter ;
        if (!AndroidVersionCheckUtils.hasGingerbread()) goto _L2; else goto _L1
_L1:
        long l = TAExternalOverFroyoUtils.getUsableSpace(mHttpCacheDir);
_L5:
        if (l <= 0xa00000L)
        {
            break MISSING_BLOCK_LABEL_63;
        }
        mHttpDiskCache = DiskLruCache.open(mHttpCacheDir, 1, 1, 0xa00000L);
_L3:
        mHttpDiskCacheStarting = false;
        mHttpDiskCacheLock.notifyAll();
        obj;
        JVM INSTR monitorexit ;
        return;
_L2:
        l = TAExternalUnderFroyoUtils.getUsableSpace(mHttpCacheDir);
        continue; /* Loop/switch isn't completed */
        Object obj1;
        obj1;
        mHttpDiskCache = null;
          goto _L3
        obj1;
        obj;
        JVM INSTR monitorexit ;
        throw obj1;
        if (true) goto _L5; else goto _L4
_L4:
    }

    private Bitmap processBitmap(String s)
    {
        Object obj;
        Object obj1;
        Object obj2;
        Object obj4;
        Object obj5;
        Object obj6;
        Object obj7;
        Object obj8;
        Object obj11;
        Object obj3;
        Object obj9;
        Object obj10;
        com.ta.util.cache.DiskLruCache.Snapshot snapshot;
        if (AndroidVersionCheckUtils.hasGingerbread())
        {
            obj3 = TAExternalOverFroyoUtils.hashKeyForDisk(s);
        } else
        {
            obj3 = TAExternalUnderFroyoUtils.hashKeyForDisk(s);
        }
        obj5 = null;
        obj10 = null;
        obj2 = null;
        obj6 = null;
        obj7 = null;
        obj8 = null;
        obj9 = null;
        obj11 = mHttpDiskCacheLock;
        obj11;
        JVM INSTR monitorenter ;
_L13:
        if (mHttpDiskCacheStarting) goto _L2; else goto _L1
_L1:
        obj = mHttpDiskCache;
        obj4 = obj5;
        if (obj == null) goto _L4; else goto _L3
_L3:
        obj = obj6;
        obj1 = obj7;
        obj2 = obj8;
        snapshot = mHttpDiskCache.get(((String) (obj3)));
        obj4 = snapshot;
        if (snapshot != null) goto _L6; else goto _L5
_L5:
        obj = obj6;
        obj1 = obj7;
        obj2 = obj8;
        obj4 = mHttpDiskCache.edit(((String) (obj3)));
        if (obj4 == null) goto _L8; else goto _L7
_L7:
        obj = obj6;
        obj1 = obj7;
        obj2 = obj8;
        if (!downloadUrlToStream(s, ((com.ta.util.cache.DiskLruCache.Editor) (obj4)).newOutputStream(0))) goto _L10; else goto _L9
_L9:
        obj = obj6;
        obj1 = obj7;
        obj2 = obj8;
        ((com.ta.util.cache.DiskLruCache.Editor) (obj4)).commit();
_L8:
        obj = obj6;
        obj1 = obj7;
        obj2 = obj8;
        obj4 = mHttpDiskCache.get(((String) (obj3)));
_L6:
        s = obj10;
        obj = obj9;
        if (obj4 == null)
        {
            break MISSING_BLOCK_LABEL_229;
        }
        obj = obj6;
        obj1 = obj7;
        obj2 = obj8;
        s = (FileInputStream)((com.ta.util.cache.DiskLruCache.Snapshot) (obj4)).getInputStream(0);
        obj = s;
        obj1 = s;
        obj2 = s;
        obj3 = s.getFD();
        obj1 = obj3;
        obj = s;
        s = ((String) (obj1));
        obj4 = s;
        obj2 = obj;
        if (s != null) goto _L4; else goto _L11
_L11:
        obj4 = s;
        obj2 = obj;
        if (obj == null) goto _L4; else goto _L12
_L12:
        ((FileInputStream) (obj)).close();
        obj2 = obj;
        obj4 = s;
_L4:
        obj11;
        JVM INSTR monitorexit ;
        s = null;
        if (obj4 != null)
        {
            s = decodeSampledBitmapFromDescriptor(((java.io.FileDescriptor) (obj4)), mImageWidth, mImageHeight);
        }
        IOException ioexception1;
        if (obj2 != null)
        {
            try
            {
                ((FileInputStream) (obj2)).close();
            }
            catch (IOException ioexception)
            {
                return s;
            }
        }
        return s;
_L2:
        try
        {
            mHttpDiskCacheLock.wait();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj) { }
        finally { }
          goto _L13
_L10:
        obj = obj6;
        obj1 = obj7;
        obj2 = obj8;
        ((com.ta.util.cache.DiskLruCache.Editor) (obj4)).abort();
          goto _L8
        s;
        obj2 = obj;
        TALogger.e("TABitmapFetcher", (new StringBuilder("processBitmap - ")).append(s).toString());
        obj4 = obj5;
        obj2 = obj;
        if (false) goto _L4; else goto _L14
_L14:
        obj4 = obj5;
        obj2 = obj;
        if (obj == null) goto _L4; else goto _L15
_L15:
        ((FileInputStream) (obj)).close();
        obj4 = obj5;
        obj2 = obj;
          goto _L4
        s;
        obj4 = obj5;
        obj2 = obj;
          goto _L4
        s;
        obj2 = obj1;
        TALogger.e("TABitmapFetcher", (new StringBuilder("processBitmap - ")).append(s).toString());
        obj4 = obj5;
        obj2 = obj1;
        if (false) goto _L4; else goto _L16
_L16:
        obj4 = obj5;
        obj2 = obj1;
        if (obj1 == null) goto _L4; else goto _L17
_L17:
        ((FileInputStream) (obj1)).close();
        obj4 = obj5;
        obj2 = obj1;
          goto _L4
        s;
        obj4 = obj5;
        obj2 = obj1;
          goto _L4
        s;
        if (false || obj2 == null)
        {
            break MISSING_BLOCK_LABEL_495;
        }
        try
        {
            ((FileInputStream) (obj2)).close();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj) { }
        throw s;
        obj11;
        JVM INSTR monitorexit ;
        throw s;
        ioexception1;
        obj4 = s;
        obj2 = obj;
          goto _L4
    }

    protected void clearCacheInternal()
    {
        Object obj = mHttpDiskCacheLock;
        obj;
        JVM INSTR monitorenter ;
        if (mHttpDiskCache == null) goto _L2; else goto _L1
_L1:
        boolean flag = mHttpDiskCache.isClosed();
        if (flag) goto _L2; else goto _L3
_L3:
        mHttpDiskCache.delete();
_L4:
        mHttpDiskCache = null;
        mHttpDiskCacheStarting = true;
        initHttpDiskCache();
_L2:
        obj;
        JVM INSTR monitorexit ;
        return;
        Object obj1;
        obj1;
        TALogger.e("TABitmapFetcher", (new StringBuilder("clearCacheInternal - ")).append(obj1).toString());
          goto _L4
        obj1;
        obj;
        JVM INSTR monitorexit ;
        throw obj1;
    }

    protected void closeCacheInternal()
    {
        Object obj = mHttpDiskCacheLock;
        obj;
        JVM INSTR monitorenter ;
        DiskLruCache disklrucache = mHttpDiskCache;
        if (disklrucache == null)
        {
            break MISSING_BLOCK_LABEL_38;
        }
        if (!mHttpDiskCache.isClosed())
        {
            mHttpDiskCache.close();
            mHttpDiskCache = null;
        }
_L1:
        obj;
        JVM INSTR monitorexit ;
        return;
        Object obj1;
        obj1;
        TALogger.e("TABitmapFetcher", (new StringBuilder("closeCacheInternal - ")).append(obj1).toString());
          goto _L1
        obj1;
        obj;
        JVM INSTR monitorexit ;
        throw obj1;
    }

    public boolean downloadUrlToStream(String s, OutputStream outputstream)
    {
        Object obj1;
        disableConnectionReuseIfNecessary();
        Object obj4 = null;
        Object obj = null;
        obj1 = null;
        Object obj5 = null;
        OutputStream outputstream1 = null;
        Object obj7 = null;
        Object obj6 = null;
        Object obj2 = obj7;
        Object obj3 = obj1;
        int i;
        try
        {
            s = (HttpURLConnection)(new URL(s)).openConnection();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj1)
        {
            outputstream = obj6;
            s = ((String) (obj4));
            continue; /* Loop/switch isn't completed */
        }
        finally { }
        obj2 = obj7;
        obj3 = obj1;
        obj = s;
        obj4 = s;
        obj1 = new BufferedInputStream(s.getInputStream(), 8192);
        outputstream = new BufferedOutputStream(outputstream, 8192);
_L1:
        i = ((BufferedInputStream) (obj1)).read();
        if (i != -1)
        {
            break MISSING_BLOCK_LABEL_128;
        }
        if (s != null)
        {
            s.disconnect();
        }
        if (outputstream == null)
        {
            break MISSING_BLOCK_LABEL_116;
        }
        outputstream.close();
        IOException ioexception;
        if (obj1 != null)
        {
            try
            {
                ((BufferedInputStream) (obj1)).close();
            }
            // Misplaced declaration of an exception variable
            catch (String s) { }
        }
        return true;
        outputstream.write(i);
          goto _L1
        obj;
        outputstream1 = outputstream;
        outputstream = ((OutputStream) (obj1));
        obj1 = obj;
_L5:
        obj2 = outputstream;
        obj3 = outputstream1;
        obj = s;
        TALogger.e("TABitmapFetcher", (new StringBuilder("Error in downloadBitmap - ")).append(obj1).toString());
        if (s != null)
        {
            s.disconnect();
        }
        if (outputstream1 == null)
        {
            break MISSING_BLOCK_LABEL_196;
        }
        outputstream1.close();
        if (outputstream != null)
        {
            try
            {
                outputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (String s) { }
        }
        return false;
        if (obj != null)
        {
            ((HttpURLConnection) (obj)).disconnect();
        }
        if (obj3 == null)
        {
            break MISSING_BLOCK_LABEL_225;
        }
        ((BufferedOutputStream) (obj3)).close();
        if (obj2 != null)
        {
            try
            {
                ((BufferedInputStream) (obj2)).close();
            }
            // Misplaced declaration of an exception variable
            catch (OutputStream outputstream) { }
        }
        throw s;
        outputstream;
        obj2 = obj1;
        obj3 = obj5;
        obj = s;
        s = outputstream;
        continue; /* Loop/switch isn't completed */
        obj4;
        obj2 = obj1;
        obj3 = outputstream;
        obj = s;
        s = ((String) (obj4));
        if (true) goto _L3; else goto _L2
_L3:
        break MISSING_BLOCK_LABEL_207;
        ioexception;
        outputstream = ((OutputStream) (obj1));
        obj1 = ioexception;
        if (true) goto _L5; else goto _L4
_L4:
    }

    protected void flushCacheInternal()
    {
        Object obj = mHttpDiskCacheLock;
        obj;
        JVM INSTR monitorenter ;
        DiskLruCache disklrucache = mHttpDiskCache;
        if (disklrucache == null)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        mHttpDiskCache.flush();
_L1:
        obj;
        JVM INSTR monitorexit ;
        return;
        Object obj1;
        obj1;
        TALogger.e("TABitmapFetcher", (new StringBuilder("flush - ")).append(obj1).toString());
          goto _L1
        obj1;
        obj;
        JVM INSTR monitorexit ;
        throw obj1;
    }

    protected void initDiskCacheInternal()
    {
        initHttpDiskCache();
    }

    protected Bitmap processBitmap(Object obj)
    {
        return processBitmap(String.valueOf(obj));
    }
}
