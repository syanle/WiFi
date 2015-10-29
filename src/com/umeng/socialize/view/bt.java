// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.umeng.socialize.view;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.umeng.socialize.media.UMediaObject;

// Referenced classes of package com.umeng.socialize.view:
//            ShareActivity

class bt
    implements com.umeng.socialize.media.UMediaObject.FetchMediaDataListener
{

    final ShareActivity a;
    private final ProgressBar b;
    private final int c;

    bt(ShareActivity shareactivity, ProgressBar progressbar, int i)
    {
        a = shareactivity;
        b = progressbar;
        c = i;
        super();
    }

    private void a(int i, byte abyte0[])
    {
        try
        {
            abyte0 = BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length);
            Bitmap bitmap = Bitmap.createScaledBitmap(abyte0, 150, 150, true);
            a.a.setImageBitmap(bitmap);
            abyte0.recycle();
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            a.a.setImageResource(i);
        }
        a.a.setVisibility(0);
        ShareActivity.m(a).setVisibility(0);
    }

    public void onComplete(byte abyte0[])
    {
        if (!ShareActivity.l(a).isUrlMedia())
        {
            if (abyte0 != null)
            {
                a.setImageBytes(abyte0);
                a(c, abyte0);
            }
        } else
        if (abyte0 != null)
        {
            a(c, abyte0);
        } else
        {
            a.a.setImageResource(c);
            a.a.setVisibility(0);
            ShareActivity.m(a).setVisibility(0);
        }
        b.setVisibility(8);
    }

    public void onStart()
    {
        b.setVisibility(0);
        a.a.setVisibility(4);
    }
}
