// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;

import android.content.Context;
import com.facebook.NativeAppCallAttachmentStore;
import java.util.HashMap;

// Referenced classes of package com.facebook.widget:
//            FacebookDialog

class this._cls1
    implements this._cls1
{

    final this._cls1 this$1;

    public void onPresent(Context context)
        throws Exception
    {
        if (cess._mth5(this._cls1.this) != null && cess._mth5(this._cls1.this).size() > 0)
        {
            FacebookDialog.access$2().addAttachmentsForCall(context, pCall.pCall(), cess._mth5(this._cls1.this));
        }
        if (cess._mth6(this._cls1.this) != null && cess._mth6(this._cls1.this).size() > 0)
        {
            FacebookDialog.access$2().addAttachmentFilesForCall(context, pCall.pCall(), cess._mth6(this._cls1.this));
        }
    }

    ()
    {
        this$1 = this._cls1.this;
        super();
    }
}
