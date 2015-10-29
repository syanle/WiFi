// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package vi.com.gdi.bgl.android.java;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.util.SparseArray;

// Referenced classes of package vi.com.gdi.bgl.android.java:
//            a

public class EnvDrawText
{

    private static final String a = vi/com/gdi/bgl/android/java/EnvDrawText.getSimpleName();
    public static boolean bBmpChange = false;
    public static Bitmap bmp = null;
    public static int buffer[] = null;
    public static Canvas canvasTemp = null;
    public static SparseArray fontCache = null;
    public static int iWordHightMax = 0;
    public static int iWordWidthMax = 0;
    public static Paint pt = null;

    public EnvDrawText()
    {
    }

    public static int[] drawText(String s, int i, int j, int ai[], int k, int l, int i1, int j1)
    {
        vi/com/gdi/bgl/android/java/EnvDrawText;
        JVM INSTR monitorenter ;
        if (pt != null) goto _L2; else goto _L1
_L1:
        pt = new Paint();
_L9:
        pt.setSubpixelText(true);
        pt.setAntiAlias(true);
        if (j == 0)
        {
            break MISSING_BLOCK_LABEL_72;
        }
        Object obj;
        if (fontCache == null)
        {
            break MISSING_BLOCK_LABEL_72;
        }
        obj = (a)fontCache.get(j);
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_72;
        }
        pt.setTypeface(((a) (obj)).a);
        pt.setTextSize(i);
        j = s.indexOf('\\', 0);
        if (j != -1) goto _L4; else goto _L3
_L3:
        obj = pt.getFontMetrics();
        j = (int)pt.measureText(s);
        i = (int)Math.ceil(((android.graphics.Paint.FontMetrics) (obj)).descent - ((android.graphics.Paint.FontMetrics) (obj)).ascent);
        ai[0] = j;
        ai[1] = i;
        j = (int)Math.pow(2D, (int)Math.ceil(Math.log(j) / Math.log(2D)));
        i = (int)Math.pow(2D, (int)Math.ceil(Math.log(i) / Math.log(2D)));
        if (iWordWidthMax < j || iWordHightMax < i)
        {
            bBmpChange = true;
            iWordWidthMax = j;
            iWordHightMax = i;
        }
        ai[2] = iWordWidthMax;
        ai[3] = iWordHightMax;
        if (!bBmpChange) goto _L6; else goto _L5
_L5:
        if (bmp != null && !bmp.isRecycled())
        {
            bmp.recycle();
        }
        bmp = Bitmap.createBitmap(iWordWidthMax, iWordHightMax, android.graphics.Bitmap.Config.ARGB_8888);
        if (canvasTemp == null)
        {
            canvasTemp = new Canvas();
        }
        canvasTemp.setBitmap(bmp);
_L10:
        if ((0xff000000 & i1) != 0) goto _L8; else goto _L7
_L7:
        canvasTemp.drawColor(0x1ffffff);
_L11:
        if (j1 == 0)
        {
            break MISSING_BLOCK_LABEL_374;
        }
        pt.setStrokeWidth(j1);
        pt.setStrokeCap(android.graphics.Paint.Cap.ROUND);
        pt.setStrokeJoin(android.graphics.Paint.Join.ROUND);
        pt.setStyle(android.graphics.Paint.Style.STROKE);
        pt.setColor(l);
        canvasTemp.drawText(s, 0.0F, 0.0F - ((android.graphics.Paint.FontMetrics) (obj)).ascent, pt);
        pt.setStyle(android.graphics.Paint.Style.FILL);
        pt.setColor(k);
        canvasTemp.drawText(s, 0.0F, 0.0F - ((android.graphics.Paint.FontMetrics) (obj)).ascent, pt);
_L21:
        i = iWordWidthMax;
        j = iWordHightMax;
        if (bBmpChange)
        {
            buffer = new int[i * j];
        }
        bmp.getPixels(buffer, 0, iWordWidthMax, 0, 0, iWordWidthMax, iWordHightMax);
        bBmpChange = false;
        s = buffer;
        vi/com/gdi/bgl/android/java/EnvDrawText;
        JVM INSTR monitorexit ;
        return s;
_L2:
        pt.reset();
          goto _L9
        s;
        throw s;
_L6:
        bmp.eraseColor(0);
          goto _L10
_L8:
        canvasTemp.drawColor(i1);
          goto _L11
_L4:
        i = (int)pt.measureText(s.substring(0, j));
        int k1;
        k1 = j + 1;
        j = 2;
_L22:
        int l1 = s.indexOf('\\', k1);
        if (l1 <= 0)
        {
            break MISSING_BLOCK_LABEL_567;
        }
        k1 = (int)pt.measureText(s.substring(k1, l1));
        break MISSING_BLOCK_LABEL_555;
        l1 = i;
        if (k1 == s.length())
        {
            break MISSING_BLOCK_LABEL_611;
        }
        k1 = (int)pt.measureText(s.substring(k1, s.length()));
        l1 = i;
        if (k1 > i)
        {
            l1 = k1;
        }
        fontmetrics = pt.getFontMetrics();
        k1 = (int)Math.ceil(fontmetrics.descent - fontmetrics.ascent);
        i = k1 * j;
        ai[0] = l1;
        ai[1] = i;
        j = (int)Math.pow(2D, (int)Math.ceil(Math.log(l1) / Math.log(2D)));
        i = (int)Math.pow(2D, (int)Math.ceil(Math.log(i) / Math.log(2D)));
        if (iWordWidthMax < j || iWordHightMax < i)
        {
            bBmpChange = true;
            iWordWidthMax = j;
            iWordHightMax = i;
        }
        ai[2] = iWordWidthMax;
        ai[3] = iWordHightMax;
        if (!bBmpChange) goto _L13; else goto _L12
_L12:
        if (bmp != null && !bmp.isRecycled())
        {
            bmp.recycle();
        }
        bmp = Bitmap.createBitmap(iWordWidthMax, iWordHightMax, android.graphics.Bitmap.Config.ARGB_8888);
        if (canvasTemp == null)
        {
            canvasTemp = new Canvas();
        }
        canvasTemp.setBitmap(bmp);
_L19:
        if ((0xff000000 & i1) != 0) goto _L15; else goto _L14
_L14:
        canvasTemp.drawColor(0x1ffffff);
        break MISSING_BLOCK_LABEL_1192;
_L18:
        i1 = s.indexOf('\\', j);
        if (i1 <= 0) goto _L17; else goto _L16
_L16:
        s1 = s.substring(j, i1);
        l1 = (int)pt.measureText(s1);
        j = i1 + 1;
        if (j1 == 0)
        {
            break MISSING_BLOCK_LABEL_946;
        }
        pt.setStrokeWidth(j1);
        pt.setStrokeCap(android.graphics.Paint.Cap.ROUND);
        pt.setStrokeJoin(android.graphics.Paint.Join.ROUND);
        pt.setStyle(android.graphics.Paint.Style.STROKE);
        pt.setColor(l);
        canvasTemp.drawText(s1, (ai[0] - l1) / 2, (float)(i * k1) - fontmetrics.ascent, pt);
        pt.setStyle(android.graphics.Paint.Style.FILL);
        pt.setColor(k);
        canvasTemp.drawText(s1, (ai[0] - l1) / 2, (float)(i * k1) - fontmetrics.ascent, pt);
        i++;
          goto _L18
_L13:
        bmp.eraseColor(0);
          goto _L19
_L15:
        canvasTemp.drawColor(i1);
        break MISSING_BLOCK_LABEL_1192;
_L17:
        if (j == s.length()) goto _L21; else goto _L20
_L20:
        s = s.substring(j, s.length());
        j = (int)pt.measureText(s);
        if (j1 == 0)
        {
            break MISSING_BLOCK_LABEL_1127;
        }
        pt.setStrokeWidth(j1);
        pt.setStrokeCap(android.graphics.Paint.Cap.ROUND);
        pt.setStrokeJoin(android.graphics.Paint.Join.ROUND);
        pt.setStyle(android.graphics.Paint.Style.STROKE);
        pt.setColor(l);
        canvasTemp.drawText(s, (ai[0] - j) / 2, (float)(i * k1) - fontmetrics.ascent, pt);
        pt.setStyle(android.graphics.Paint.Style.FILL);
        pt.setColor(k);
        canvasTemp.drawText(s, (ai[0] - j) / 2, (float)(i * k1) - fontmetrics.ascent, pt);
          goto _L21
        android.graphics.Paint.FontMetrics fontmetrics;
        String s1;
        if (k1 > i)
        {
            i = k1;
        }
        j++;
        k1 = l1 + 1;
          goto _L22
        j = 0;
        i = 0;
          goto _L18
    }

    public static short[] getTextSize(String s, int i)
    {
        int j = s.length();
        if (j != 0) goto _L2; else goto _L1
_L1:
        short aword0[] = null;
_L4:
        return aword0;
_L2:
        Paint paint = new Paint();
        paint.setSubpixelText(true);
        paint.setAntiAlias(true);
        paint.setTextSize(i);
        short aword1[] = new short[j];
        i = 0;
        do
        {
            aword0 = aword1;
            if (i >= j)
            {
                continue;
            }
            aword1[i] = (short)(int)paint.measureText(s.substring(0, i + 1));
            i++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static void registFontCache(int i, Typeface typeface)
    {
        vi/com/gdi/bgl/android/java/EnvDrawText;
        JVM INSTR monitorenter ;
        if (i != 0 && typeface != null) goto _L2; else goto _L1
_L1:
        vi/com/gdi/bgl/android/java/EnvDrawText;
        JVM INSTR monitorexit ;
        return;
_L2:
        a a1;
        if (fontCache == null)
        {
            fontCache = new SparseArray();
        }
        a1 = (a)fontCache.get(i);
        if (a1 != null)
        {
            break MISSING_BLOCK_LABEL_86;
        }
        a1 = new a();
        a1.a = typeface;
        a1.b = a1.b + 1;
        fontCache.put(i, a1);
          goto _L1
        typeface;
        throw typeface;
        a1.b = a1.b + 1;
          goto _L1
    }

    public static void removeFontCache(int i)
    {
        vi/com/gdi/bgl/android/java/EnvDrawText;
        JVM INSTR monitorenter ;
        a a1 = (a)fontCache.get(i);
        if (a1 != null) goto _L2; else goto _L1
_L1:
        vi/com/gdi/bgl/android/java/EnvDrawText;
        JVM INSTR monitorexit ;
        return;
_L2:
        a1.b = a1.b - 1;
        if (a1.b == 0)
        {
            fontCache.remove(i);
        }
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

}
