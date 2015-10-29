// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mob.tools.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.text.TextUtils;
import android.view.View;
import com.mob.tools.network.NetworkHelper;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.lang.reflect.Array;

// Referenced classes of package com.mob.tools.utils:
//            Ln, R

public class BitmapHelper
{

    public BitmapHelper()
    {
    }

    public static Bitmap blur(Bitmap bitmap, int i, int j)
    {
        int k = bitmap.getWidth();
        int l = bitmap.getHeight();
        i = (int)((float)i / (float)j + 0.5F);
        Bitmap bitmap1 = Bitmap.createBitmap((int)((float)k / (float)j + 0.5F), (int)((float)l / (float)j + 0.5F), android.graphics.Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap1);
        canvas.scale(1.0F / (float)j, 1.0F / (float)j);
        Paint paint = new Paint();
        paint.setFlags(2);
        canvas.drawBitmap(bitmap, 0.0F, 0.0F, paint);
        blur(bitmap1, i, true);
        return bitmap1;
    }

    private static Bitmap blur(Bitmap bitmap, int i, boolean flag)
    {
        if (!flag)
        {
            bitmap = bitmap.copy(bitmap.getConfig(), true);
        }
        if (i < 1)
        {
            return null;
        }
        int l10 = bitmap.getWidth();
        int i11 = bitmap.getHeight();
        int ai[] = new int[l10 * i11];
        bitmap.getPixels(ai, 0, l10, 0, 0, l10, i11);
        int i10 = l10 - 1;
        int j11 = i11 - 1;
        int j = l10 * i11;
        int k11 = i + i + 1;
        int ai1[] = new int[j];
        int ai2[] = new int[j];
        int ai3[] = new int[j];
        int ai4[] = new int[Math.max(l10, i11)];
        j = k11 + 1 >> 1;
        int l = j * j;
        int ai5[] = new int[l * 256];
        for (j = 0; j < l * 256; j++)
        {
            ai5[j] = j / l;
        }

        int ai6[][] = (int[][])Array.newInstance(Integer.TYPE, new int[] {
            k11, 3
        });
        int l11 = i + 1;
        int k6 = 0;
        j = 0;
        for (int i6 = 0; i6 < i11; i6++)
        {
            int i1 = 0;
            int i7 = -i;
            int j2 = 0;
            int l2 = 0;
            int j3 = 0;
            int l3 = 0;
            int j4 = 0;
            int i5 = 0;
            int k5 = 0;
            int l1 = 0;
            while (i7 <= i) 
            {
                int l7 = ai[Math.min(i10, Math.max(i7, 0)) + j];
                int ai7[] = ai6[i7 + i];
                ai7[0] = (0xff0000 & l7) >> 16;
                ai7[1] = (0xff00 & l7) >> 8;
                ai7[2] = l7 & 0xff;
                l7 = l11 - Math.abs(i7);
                k5 += ai7[0] * l7;
                i5 += ai7[1] * l7;
                j4 += l7 * ai7[2];
                if (i7 > 0)
                {
                    j2 += ai7[0];
                    l1 += ai7[1];
                    i1 += ai7[2];
                } else
                {
                    l3 += ai7[0];
                    j3 += ai7[1];
                    l2 += ai7[2];
                }
                i7++;
            }
            i7 = i5;
            boolean flag1 = false;
            i5 = i;
            int i8 = k5;
            k5 = j4;
            for (int k4 = ((flag1) ? 1 : 0); k4 < l10; k4++)
            {
                ai1[j] = ai5[i8];
                ai2[j] = ai5[i7];
                ai3[j] = ai5[k5];
                int ai8[] = ai6[((i5 - i) + k11) % k11];
                int l12 = ai8[0];
                int i12 = ai8[1];
                int i9 = ai8[2];
                if (i6 == 0)
                {
                    ai4[k4] = Math.min(k4 + i + 1, i10);
                }
                int i13 = ai[ai4[k4] + k6];
                ai8[0] = (0xff0000 & i13) >> 16;
                ai8[1] = (0xff00 & i13) >> 8;
                ai8[2] = i13 & 0xff;
                j2 += ai8[0];
                l1 += ai8[1];
                i1 += ai8[2];
                i8 = (i8 - l3) + j2;
                i7 = (i7 - j3) + l1;
                k5 = (k5 - l2) + i1;
                i5 = (i5 + 1) % k11;
                ai8 = ai6[i5 % k11];
                l3 = (l3 - l12) + ai8[0];
                j3 = (j3 - i12) + ai8[1];
                l2 = (l2 - i9) + ai8[2];
                j2 -= ai8[0];
                l1 -= ai8[1];
                i1 -= ai8[2];
                j++;
            }

            k6 += l10;
        }

        for (int k = 0; k < l10; k++)
        {
            int l5 = 0;
            int l6 = -i * l10;
            int j6 = -i;
            int l4 = 0;
            int i3 = 0;
            int k3 = 0;
            int i4 = 0;
            int j1 = 0;
            int k2 = 0;
            int i2 = 0;
            int j5 = 0;
            while (j6 <= i) 
            {
                int j7 = Math.max(0, l6) + k;
                int ai9[] = ai6[j6 + i];
                ai9[0] = ai1[j7];
                ai9[1] = ai2[j7];
                ai9[2] = ai3[j7];
                int j8 = l11 - Math.abs(j6);
                int j9 = ai1[j7];
                int j10 = ai2[j7];
                int j12 = ai3[j7];
                if (j6 > 0)
                {
                    l4 += ai9[0];
                    j5 += ai9[1];
                    l5 += ai9[2];
                } else
                {
                    i4 += ai9[0];
                    k3 += ai9[1];
                    i3 += ai9[2];
                }
                j7 = l6;
                if (j6 < j11)
                {
                    j7 = l6 + l10;
                }
                j6++;
                j1 = j12 * j8 + j1;
                k2 = j10 * j8 + k2;
                i2 = j9 * j8 + i2;
                l6 = j7;
            }
            int k8 = k2;
            int k9 = i2;
            boolean flag2 = false;
            i2 = k;
            j6 = l5;
            l6 = j5;
            int k7 = l4;
            k2 = i3;
            i3 = k3;
            k3 = i4;
            i4 = i;
            l5 = k9;
            j5 = k8;
            l4 = j1;
            for (int k1 = ((flag2) ? 1 : 0); k1 < i11; k1++)
            {
                ai[i2] = 0xff000000 & ai[i2] | ai5[l5] << 16 | ai5[j5] << 8 | ai5[l4];
                int ai10[] = ai6[((i4 - i) + k11) % k11];
                int k10 = ai10[0];
                int l9 = ai10[1];
                int l8 = ai10[2];
                if (k == 0)
                {
                    ai4[k1] = Math.min(k1 + l11, j11) * l10;
                }
                int k12 = ai4[k1] + k;
                ai10[0] = ai1[k12];
                ai10[1] = ai2[k12];
                ai10[2] = ai3[k12];
                k7 += ai10[0];
                l6 += ai10[1];
                j6 += ai10[2];
                l5 = (l5 - k3) + k7;
                j5 = (j5 - i3) + l6;
                l4 = (l4 - k2) + j6;
                i4 = (i4 + 1) % k11;
                ai10 = ai6[i4];
                k3 = (k3 - k10) + ai10[0];
                i3 = (i3 - l9) + ai10[1];
                k2 = (k2 - l8) + ai10[2];
                k7 -= ai10[0];
                l6 -= ai10[1];
                j6 -= ai10[2];
                i2 += l10;
            }

        }

        bitmap.setPixels(ai, 0, l10, 0, 0, l10, i11);
        return bitmap;
    }

    private static boolean bytesStartWith(byte abyte0[], byte abyte1[])
    {
        boolean flag1 = false;
        if (abyte0 != abyte1) goto _L2; else goto _L1
_L1:
        boolean flag = true;
_L4:
        return flag;
_L2:
        flag = flag1;
        if (abyte0 != null)
        {
            flag = flag1;
            if (abyte1 != null)
            {
                flag = flag1;
                if (abyte0.length >= abyte1.length)
                {
                    int i = 0;
label0:
                    do
                    {
label1:
                        {
                            if (i >= abyte1.length)
                            {
                                break label1;
                            }
                            flag = flag1;
                            if (abyte0[i] != abyte1[i])
                            {
                                break label0;
                            }
                            i++;
                        }
                    } while (true);
                }
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
        return true;
    }

    public static Bitmap captureView(View view, int i, int j)
        throws Throwable
    {
        Bitmap bitmap = Bitmap.createBitmap(i, j, android.graphics.Bitmap.Config.ARGB_8888);
        view.draw(new Canvas(bitmap));
        return bitmap;
    }

    public static Bitmap cropBitmap(Bitmap bitmap, int i, int j, int k, int l)
        throws Throwable
    {
        k = bitmap.getWidth() - i - k;
        l = bitmap.getHeight() - j - l;
        if (k == bitmap.getWidth() && l == bitmap.getHeight())
        {
            return bitmap;
        } else
        {
            Bitmap bitmap1 = Bitmap.createBitmap(k, l, android.graphics.Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmap1);
            Paint paint = new Paint();
            canvas.drawBitmap(bitmap, -i, -j, paint);
            return bitmap1;
        }
    }

    public static String downloadBitmap(Context context, String s)
        throws Throwable
    {
        return (new NetworkHelper()).downloadCache(context, s, "images", true);
    }

    public static int[] fixRect(int ai[], int ai1[])
    {
        int ai2[] = new int[2];
        if ((float)ai[0] / (float)ai[1] > (float)ai1[0] / (float)ai1[1])
        {
            ai2[0] = ai1[0];
            ai2[1] = (int)(((float)ai[1] * (float)ai1[0]) / (float)ai[0] + 0.5F);
            return ai2;
        } else
        {
            ai2[1] = ai1[1];
            ai2[0] = (int)(((float)ai[0] * (float)ai1[1]) / (float)ai[1] + 0.5F);
            return ai2;
        }
    }

    public static int[] fixRect_2(int ai[], int ai1[])
    {
        int ai2[] = new int[2];
        if ((float)ai[0] / (float)ai[1] > (float)ai1[0] / (float)ai1[1])
        {
            ai2[1] = ai1[1];
            ai2[0] = (int)(((float)ai[0] * (float)ai1[1]) / (float)ai[1] + 0.5F);
            return ai2;
        } else
        {
            ai2[0] = ai1[0];
            ai2[1] = (int)(((float)ai[1] * (float)ai1[0]) / (float)ai[0] + 0.5F);
            return ai2;
        }
    }

    public static Bitmap getBitmap(Context context, String s)
        throws Throwable
    {
        return getBitmap(downloadBitmap(context, s));
    }

    public static Bitmap getBitmap(File file, int i)
        throws Throwable
    {
        if (file == null || !file.exists())
        {
            return null;
        } else
        {
            file = new FileInputStream(file);
            Bitmap bitmap = getBitmap(((InputStream) (file)), i);
            file.close();
            return bitmap;
        }
    }

    public static Bitmap getBitmap(InputStream inputstream, int i)
    {
        if (inputstream == null)
        {
            return null;
        } else
        {
            android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
            options.inPreferredConfig = android.graphics.Bitmap.Config.RGB_565;
            options.inPurgeable = true;
            options.inInputShareable = true;
            options.inSampleSize = i;
            return BitmapFactory.decodeStream(inputstream, null, options);
        }
    }

    public static Bitmap getBitmap(String s)
        throws Throwable
    {
        return getBitmap(s, 1);
    }

    public static Bitmap getBitmap(String s, int i)
        throws Throwable
    {
        if (TextUtils.isEmpty(s))
        {
            return null;
        } else
        {
            return getBitmap(new File(s), i);
        }
    }

    public static android.graphics.Bitmap.CompressFormat getBmpFormat(String s)
    {
        String s1 = s.toLowerCase();
        if (s1.endsWith("png") || s1.endsWith("gif"))
        {
            return android.graphics.Bitmap.CompressFormat.PNG;
        }
        if (s1.endsWith("jpg") || s1.endsWith("jpeg") || s1.endsWith("bmp") || s1.endsWith("tif"))
        {
            return android.graphics.Bitmap.CompressFormat.JPEG;
        }
        s = getMime(s);
        if (s.endsWith("png") || s.endsWith("gif"))
        {
            return android.graphics.Bitmap.CompressFormat.PNG;
        } else
        {
            return android.graphics.Bitmap.CompressFormat.JPEG;
        }
    }

    public static android.graphics.Bitmap.CompressFormat getBmpFormat(byte abyte0[])
    {
label0:
        {
            String s = getMime(abyte0);
            android.graphics.Bitmap.CompressFormat compressformat = android.graphics.Bitmap.CompressFormat.JPEG;
            abyte0 = compressformat;
            if (s == null)
            {
                break label0;
            }
            if (!s.endsWith("png"))
            {
                abyte0 = compressformat;
                if (!s.endsWith("gif"))
                {
                    break label0;
                }
            }
            abyte0 = android.graphics.Bitmap.CompressFormat.PNG;
        }
        return abyte0;
    }

    private static String getMime(String s)
    {
        try
        {
            s = new FileInputStream(s);
            byte abyte0[] = new byte[8];
            s.read(abyte0);
            s.close();
            s = getMime(abyte0);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            Ln.w(s);
            return null;
        }
        return s;
    }

    private static String getMime(byte abyte0[])
    {
        if (bytesStartWith(abyte0, new byte[] {
    -1, -40, -1, -32
}) || bytesStartWith(abyte0, new byte[] {
    -1, -40, -1, -31
}))
        {
            return "jpg";
        }
        if (bytesStartWith(abyte0, new byte[] {
    -119, 80, 78, 71
}))
        {
            return "png";
        }
        if (bytesStartWith(abyte0, "GIF".getBytes()))
        {
            return "gif";
        }
        if (bytesStartWith(abyte0, "BM".getBytes()))
        {
            return "bmp";
        }
        if (bytesStartWith(abyte0, new byte[] {
    73, 73, 42
}) || bytesStartWith(abyte0, new byte[] {
    77, 77, 42
}))
        {
            return "tif";
        } else
        {
            return null;
        }
    }

    public static boolean isBlackBitmap(Bitmap bitmap)
        throws Throwable
    {
        boolean flag = false;
        if (bitmap != null && !bitmap.isRecycled()) goto _L2; else goto _L1
_L1:
        flag = true;
_L5:
        return flag;
_L2:
        int ai[];
        int i;
        ai = new int[bitmap.getWidth() * bitmap.getHeight()];
        bitmap.getPixels(ai, 0, bitmap.getWidth(), 0, 0, bitmap.getWidth(), bitmap.getHeight());
        i = 0;
_L6:
        if (i >= ai.length)
        {
            break MISSING_BLOCK_LABEL_82;
        }
        if ((ai[i] & 0xffffff) == 0) goto _L4; else goto _L3
_L3:
        i = 1;
_L7:
        if (i == 0)
        {
            return true;
        }
          goto _L5
_L4:
        i++;
          goto _L6
        i = 0;
          goto _L7
    }

    public static int mixAlpha(int i, int j)
    {
        int k = i >>> 24;
        int l = (((0xff0000 & i) >>> 16) * k + ((0xff0000 & j) >>> 16) * (255 - k)) / 255;
        int i1 = (((0xff00 & i) >>> 8) * k + (255 - k) * ((0xff00 & j) >>> 8)) / 255;
        return ((255 - k) * (j & 0xff) + k * (i & 0xff)) / 255 | (l << 16 | 0xff000000 | i1 << 8);
    }

    public static Bitmap roundBitmap(Bitmap bitmap, int i, int j, float f, float f1, float f2, float f3)
        throws Throwable
    {
        int k = bitmap.getWidth();
        int l = bitmap.getHeight();
        Rect rect = new Rect(0, 0, k, l);
        Bitmap bitmap1;
        Canvas canvas;
        Paint paint;
        Rect rect1;
        float af[];
        ShapeDrawable shapedrawable;
        if (k != i || l != j)
        {
            bitmap1 = Bitmap.createBitmap(i, j, android.graphics.Bitmap.Config.ARGB_8888);
        } else
        {
            bitmap1 = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), android.graphics.Bitmap.Config.ARGB_8888);
        }
        canvas = new Canvas(bitmap1);
        paint = new Paint();
        rect1 = new Rect(0, 0, i, j);
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(0xff424242);
        af = new float[8];
        af[0] = f;
        af[1] = f;
        af[2] = f1;
        af[3] = f1;
        af[4] = f2;
        af[5] = f2;
        af[6] = f3;
        af[7] = f3;
        shapedrawable = new ShapeDrawable(new RoundRectShape(af, new RectF(0.0F, 0.0F, 0.0F, 0.0F), af));
        shapedrawable.setBounds(rect1);
        shapedrawable.draw(canvas);
        paint.setXfermode(new PorterDuffXfermode(android.graphics.PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect1, paint);
        return bitmap1;
    }

    public static String saveBitmap(Context context, Bitmap bitmap)
        throws Throwable
    {
        return saveBitmap(context, bitmap, android.graphics.Bitmap.CompressFormat.JPEG, 80);
    }

    public static String saveBitmap(Context context, Bitmap bitmap, android.graphics.Bitmap.CompressFormat compressformat, int i)
        throws Throwable
    {
        Object obj = R.getCachePath(context, "images");
        context = ".jpg";
        if (compressformat == android.graphics.Bitmap.CompressFormat.PNG)
        {
            context = ".png";
        }
        context = new File(((String) (obj)), (new StringBuilder()).append(String.valueOf(System.currentTimeMillis())).append(context).toString());
        obj = new FileOutputStream(context);
        bitmap.compress(compressformat, i, ((java.io.OutputStream) (obj)));
        ((FileOutputStream) (obj)).flush();
        ((FileOutputStream) (obj)).close();
        return context.getAbsolutePath();
    }

    public static String saveViewToImage(View view)
        throws Throwable
    {
        if (view != null)
        {
            int i = view.getWidth();
            int j = view.getHeight();
            if (i > 0 && j > 0)
            {
                return saveViewToImage(view, i, j);
            }
        }
        return null;
    }

    public static String saveViewToImage(View view, int i, int j)
        throws Throwable
    {
        Bitmap bitmap = captureView(view, i, j);
        if (bitmap == null || bitmap.isRecycled())
        {
            return null;
        } else
        {
            view = new File(R.getCachePath(view.getContext(), "screenshot"), (new StringBuilder()).append(String.valueOf(System.currentTimeMillis())).append(".jpg").toString());
            FileOutputStream fileoutputstream = new FileOutputStream(view);
            bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 100, fileoutputstream);
            fileoutputstream.flush();
            fileoutputstream.close();
            return view.getAbsolutePath();
        }
    }

    public static Bitmap scaleBitmapByHeight(Context context, int i, int j)
        throws Throwable
    {
        context = BitmapFactory.decodeResource(context.getResources(), i);
        Bitmap bitmap;
        if (j != context.getHeight())
        {
            i = 1;
        } else
        {
            i = 0;
        }
        bitmap = scaleBitmapByHeight(((Bitmap) (context)), j);
        if (i != 0)
        {
            context.recycle();
        }
        return bitmap;
    }

    public static Bitmap scaleBitmapByHeight(Bitmap bitmap, int i)
        throws Throwable
    {
        return Bitmap.createScaledBitmap(bitmap, (bitmap.getWidth() * i) / bitmap.getHeight(), i, true);
    }
}
