// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools.gui;

import android.graphics.Bitmap;
import com.mob.tools.network.RawNetworkCallback;
import com.mob.tools.utils.BitmapHelper;
import java.io.File;
import java.io.InputStream;
import java.util.WeakHashMap;

// Referenced classes of package com.mob.tools.gui:
//            BitmapProcessor

class val.req
    implements RawNetworkCallback
{

    final this._cls0 this$0;
    final File val$file;
    final this._cls0 val$req;
    final boolean val$saveAsPng;

    public void onResponse(InputStream inputstream)
        throws Throwable
    {
        inputstream = BitmapHelper.getBitmap(new m(inputstream), 1);
        if (inputstream == null || inputstream.isRecycled())
        {
            cess._mth1402(this._cls0.this, null);
            return;
        }
        cess._mth1500(this._cls0.this, inputstream, val$file, val$saveAsPng);
        if (inputstream != null)
        {
            BitmapProcessor.access$900(cess._mth1600(this._cls0.this)).put(._mth000(val$req), inputstream);
            ._mth1100(val$req, inputstream);
        }
        cess._mth1402(this._cls0.this, null);
    }

    m()
    {
        this$0 = final_m;
        val$file = file1;
        val$saveAsPng = flag;
        val$req = val.req.this;
        super();
    }
}
