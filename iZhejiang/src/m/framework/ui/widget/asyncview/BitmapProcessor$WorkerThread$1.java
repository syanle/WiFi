// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package m.framework.ui.widget.asyncview;

import android.graphics.Bitmap;
import java.io.File;
import java.io.InputStream;
import java.util.WeakHashMap;
import m.framework.network.ResponseCallback;
import m.framework.utils.Utils;

// Referenced classes of package m.framework.ui.widget.asyncview:
//            BitmapProcessor

class val.req
    implements ResponseCallback
{

    final this._cls1 this$1;
    private final File val$file;
    private final this._cls1 val$req;

    public void onResponse(InputStream inputstream)
    {
        inputstream = Utils.getBitmap(new m(inputstream));
        if (inputstream == null || inputstream.isRecycled())
        {
            cess._mth3(this._cls1.this, null);
            return;
        }
        cess._mth4(this._cls1.this, inputstream, val$file);
        if (inputstream != null)
        {
            BitmapProcessor.access$3(cess._mth5(this._cls1.this)).put(._mth0(val$req), inputstream);
            ._mth2(val$req, inputstream);
        }
        cess._mth3(this._cls1.this, null);
    }

    m()
    {
        this$1 = final_m;
        val$file = file1;
        val$req = val.req.this;
        super();
    }
}
