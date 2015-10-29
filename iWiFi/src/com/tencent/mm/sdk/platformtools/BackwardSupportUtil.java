// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tencent.mm.sdk.platformtools;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.media.ExifInterface;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.widget.ListView;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            AnimationHelperImpl22, AnimationHelperImpl21below, Log, SmoothScrollToPosition22, 
//            SmoothScrollToPosition21below

public class BackwardSupportUtil
{
    public static class AnimationHelper
    {

        public static void cancelAnimation(View view, Animation animation)
        {
            if (android.os.Build.VERSION.SDK_INT >= 8)
            {
                (new AnimationHelperImpl22()).cancelAnimation(view, animation);
                return;
            } else
            {
                (new AnimationHelperImpl21below()).cancelAnimation(view, animation);
                return;
            }
        }

        public static void overridePendingTransition(Activity activity, int i, int j)
        {
            activity.overridePendingTransition(i, j);
        }

        public AnimationHelper()
        {
        }
    }

    public static interface AnimationHelper.IHelper
    {

        public abstract void cancelAnimation(View view, Animation animation);
    }

    public static class BitmapFactory
    {

        public static Bitmap decodeFile(String s, float f)
        {
            android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
            f = 160F * f;
            options.inDensity = (int)f;
            s = android.graphics.BitmapFactory.decodeFile(s, options);
            if (s != null)
            {
                s.setDensity((int)f);
            }
            return s;
        }

        public static Bitmap decodeStream(InputStream inputstream)
        {
            android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
            options.inDensity = 160;
            options.inPreferredConfig = android.graphics.Bitmap.Config.ARGB_8888;
            return android.graphics.BitmapFactory.decodeStream(inputstream, null, options);
        }

        public static Bitmap decodeStream(InputStream inputstream, float f)
        {
            android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
            options.inDensity = (int)(160F * f);
            options.inPreferredConfig = android.graphics.Bitmap.Config.ARGB_8888;
            return android.graphics.BitmapFactory.decodeStream(inputstream, null, options);
        }

        public static int fromDPToPix(Context context, float f)
        {
            DisplayMetrics displaymetrics = new DisplayMetrics();
            ((WindowManager)context.getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
            return Math.round(((float)displaymetrics.densityDpi * f) / 160F);
        }

        public static Bitmap getBitmapFromURL(String s)
        {
            Bitmap bitmap;
            Log.d("MicroMsg.SDK.BackwardSupportUtil", (new StringBuilder("get bitmap from url:")).append(s).toString());
            s = (HttpURLConnection)(new URL(s)).openConnection();
            s.setDoInput(true);
            s.connect();
            s = s.getInputStream();
            bitmap = decodeStream(s);
            s.close();
            return bitmap;
            s;
            Log.e("MicroMsg.SDK.BackwardSupportUtil", "get bitmap from url failed");
            s.printStackTrace();
            return null;
            s;
            throw s;
        }

        public static String getDisplayDensityType(Context context)
        {
            Object obj = context.getResources().getDisplayMetrics();
            Configuration configuration = context.getResources().getConfiguration();
            if (((DisplayMetrics) (obj)).density < 1.0F)
            {
                context = (new StringBuilder()).append("").append("LDPI").toString();
            } else
            if (((DisplayMetrics) (obj)).density >= 1.5F)
            {
                context = (new StringBuilder()).append("").append("HDPI").toString();
            } else
            {
                context = (new StringBuilder()).append("").append("MDPI").toString();
            }
            obj = (new StringBuilder()).append(context);
            if (configuration.orientation == 2)
            {
                context = "_L";
            } else
            {
                context = "_P";
            }
            return ((StringBuilder) (obj)).append(context).toString();
        }

        public BitmapFactory()
        {
        }
    }

    public static class ExifHelper
    {

        public static int getExifOrientation(String s)
        {
            int i;
            try
            {
                s = new ExifInterface(s);
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                Log.e("MicroMsg.SDK.BackwardSupportUtil", (new StringBuilder("cannot read exif")).append(s).toString());
                s = null;
            }
            if (s == null) goto _L2; else goto _L1
_L1:
            i = s.getAttributeInt("Orientation", -1);
            if (i == -1) goto _L2; else goto _L3
_L3:
            i;
            JVM INSTR tableswitch 3 8: default 64
        //                       3 96
        //                       4 64
        //                       5 64
        //                       6 93
        //                       7 64
        //                       8 100;
               goto _L2 _L4 _L2 _L2 _L5 _L2 _L6
_L2:
            return 0;
_L5:
            return 90;
_L4:
            return 180;
_L6:
            return 270;
        }

        public ExifHelper()
        {
        }
    }

    public static class SmoothScrollFactory
    {

        public static void scrollTo(ListView listview, int i)
        {
            if (android.os.Build.VERSION.SDK_INT >= 8)
            {
                (new SmoothScrollToPosition22()).doScroll(listview, i);
                return;
            } else
            {
                (new SmoothScrollToPosition21below()).doScroll(listview, i);
                return;
            }
        }

        public static void scrollToTop(ListView listview)
        {
            if (android.os.Build.VERSION.SDK_INT >= 8)
            {
                (new SmoothScrollToPosition22()).doScroll(listview);
                return;
            } else
            {
                (new SmoothScrollToPosition21below()).doScroll(listview);
                return;
            }
        }

        public SmoothScrollFactory()
        {
        }
    }

    public static interface SmoothScrollFactory.IScroll
    {

        public abstract void doScroll(ListView listview);

        public abstract void doScroll(ListView listview, int i);
    }


    public static final int ANDROID_API_LEVEL_16 = 16;

    public BackwardSupportUtil()
    {
    }
}
