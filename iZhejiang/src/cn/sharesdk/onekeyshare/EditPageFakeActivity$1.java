// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.onekeyshare;

import android.os.AsyncTask;
import com.mob.tools.utils.BitmapHelper;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package cn.sharesdk.onekeyshare:
//            EditPageFakeActivity

class this._cls0 extends AsyncTask
{

    final EditPageFakeActivity this$0;

    protected transient ageListResultsCallback doInBackground(Object aobj[])
    {
        Iterator iterator = EditPageFakeActivity.access$0(EditPageFakeActivity.this).iterator();
_L2:
        ageInfo ageinfo;
        do
        {
            if (!iterator.hasNext())
            {
                return (ageListResultsCallback)aobj[0];
            }
            ageinfo = (ageInfo)iterator.next();
        } while (ageinfo.bitmap != null);
        String s;
        s = ageinfo.srcValue;
        if (s.startsWith("http://"))
        {
            break MISSING_BLOCK_LABEL_75;
        }
        Object obj = s;
        if (!s.startsWith("https://"))
        {
            break MISSING_BLOCK_LABEL_87;
        }
        obj = BitmapHelper.downloadBitmap(EditPageFakeActivity.access$1(EditPageFakeActivity.this), s);
        obj = BitmapHelper.getBitmap(((String) (obj)));
        if (obj != null)
        {
            try
            {
                ageinfo.bitmap = ((android.graphics.Bitmap) (obj));
            }
            catch (Throwable throwable)
            {
                throwable.printStackTrace();
            }
        }
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected volatile transient Object doInBackground(Object aobj[])
    {
        return doInBackground((Object[])aobj);
    }

    protected void onPostExecute(ageListResultsCallback agelistresultscallback)
    {
        agelistresultscallback.onFinish(EditPageFakeActivity.access$0(EditPageFakeActivity.this));
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((ageListResultsCallback)obj);
    }

    ageListResultsCallback()
    {
        this$0 = EditPageFakeActivity.this;
        super();
    }
}
