// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.framework;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.os.Handler;
import cn.sharesdk.framework.statistics.a;
import cn.sharesdk.framework.statistics.b;
import cn.sharesdk.framework.statistics.b.d;
import com.mob.tools.utils.Ln;
import com.mob.tools.utils.R;
import dalvik.system.DexFile;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package cn.sharesdk.framework:
//            Platform, CustomPlatform, j

public class i
{

    private static boolean a = true;

    public i()
    {
    }

    private ArrayList a(PackageInfo packageinfo, Context context)
    {
        ArrayList arraylist;
        arraylist = new ArrayList();
        Object obj;
        Throwable throwable;
        try
        {
            obj = new DexFile(packageinfo.applicationInfo.sourceDir);
            packageinfo = ((DexFile) (obj)).entries();
        }
        // Misplaced declaration of an exception variable
        catch (PackageInfo packageinfo)
        {
            Ln.e(packageinfo);
            return null;
        }
        ((DexFile) (obj)).close();
_L2:
        if (packageinfo == null || !packageinfo.hasMoreElements())
        {
            break; /* Loop/switch isn't completed */
        }
        obj = (String)packageinfo.nextElement();
        if (!((String) (obj)).startsWith("cn.sharesdk") || ((String) (obj)).contains("$"))
        {
            continue; /* Loop/switch isn't completed */
        }
        obj = Class.forName(((String) (obj)));
        if (obj != null)
        {
            try
            {
                if (cn/sharesdk/framework/Platform.isAssignableFrom(((Class) (obj))) && !cn/sharesdk/framework/CustomPlatform.isAssignableFrom(((Class) (obj))))
                {
                    obj = ((Class) (obj)).getConstructor(new Class[] {
                        android/content/Context
                    });
                    ((Constructor) (obj)).setAccessible(true);
                    arraylist.add((Platform)((Constructor) (obj)).newInstance(new Object[] {
                        context
                    }));
                }
            }
            // Misplaced declaration of an exception variable
            catch (Throwable throwable)
            {
                Ln.e(throwable);
            }
        }
        continue; /* Loop/switch isn't completed */
        throwable;
        Ln.e(throwable);
        if (true) goto _L2; else goto _L1
_L1:
        return arraylist;
    }

    private PackageInfo c(Context context)
    {
        Object obj;
        obj = context.getPackageManager();
        context = context.getPackageName();
        obj = ((PackageManager) (obj)).getInstalledPackages(8192).iterator();
_L1:
        PackageInfo packageinfo;
        boolean flag;
        if (!((Iterator) (obj)).hasNext())
        {
            break MISSING_BLOCK_LABEL_67;
        }
        packageinfo = (PackageInfo)((Iterator) (obj)).next();
        flag = context.equals(packageinfo.packageName);
        if (flag)
        {
            return packageinfo;
        }
          goto _L1
        context;
        Ln.e(context);
        return null;
        return null;
    }

    private ArrayList d(Context context)
    {
        String as[] = new String[39];
        as[0] = "cn.sharesdk.douban.Douban";
        as[1] = "cn.sharesdk.evernote.Evernote";
        as[2] = "cn.sharesdk.facebook.Facebook";
        as[3] = "cn.sharesdk.renren.Renren";
        as[4] = "cn.sharesdk.sina.weibo.SinaWeibo";
        as[5] = "cn.sharesdk.sohu.suishenkan.SohuSuishenkan";
        as[6] = "cn.sharesdk.kaixin.KaiXin";
        as[7] = "cn.sharesdk.linkedin.LinkedIn";
        as[8] = "cn.sharesdk.system.email.Email";
        as[9] = "cn.sharesdk.system.text.ShortMessage";
        as[10] = "cn.sharesdk.tencent.qq.QQ";
        as[11] = "cn.sharesdk.tencent.qzone.QZone";
        as[12] = "cn.sharesdk.tencent.weibo.TencentWeibo";
        as[13] = "cn.sharesdk.twitter.Twitter";
        as[14] = "cn.sharesdk.wechat.friends.Wechat";
        as[15] = "cn.sharesdk.wechat.moments.WechatMoments";
        as[16] = "cn.sharesdk.wechat.favorite.WechatFavorite";
        as[17] = "cn.sharesdk.youdao.YouDao";
        as[18] = "cn.sharesdk.google.GooglePlus";
        as[19] = "cn.sharesdk.foursquare.FourSquare";
        as[20] = "cn.sharesdk.pinterest.Pinterest";
        as[21] = "cn.sharesdk.flickr.Flickr";
        as[22] = "cn.sharesdk.tumblr.Tumblr";
        as[23] = "cn.sharesdk.dropbox.Dropbox";
        as[24] = "cn.sharesdk.vkontakte.VKontakte";
        as[25] = "cn.sharesdk.instagram.Instagram";
        as[26] = "cn.sharesdk.yixin.friends.Yixin";
        as[27] = "cn.sharesdk.yixin.moments.YixinMoments";
        as[28] = "cn.sharesdk.mingdao.Mingdao";
        as[29] = "cn.sharesdk.line.Line";
        as[30] = "cn.sharesdk.kakao.story.KakaoStory";
        as[31] = "cn.sharesdk.kakao.talk.KakaoTalk";
        as[32] = "cn.sharesdk.system.bluetooth.Bluetooth";
        as[33] = "cn.sharesdk.whatsapp.WhatsApp";
        as[34] = "cn.sharesdk.pocket.Pocket";
        as[35] = "cn.sharesdk.instapaper.Instapaper";
        as[36] = "cn.sharesdk.facebookmessenger.FacebookMessenger";
        as[37] = "cn.sharesdk.laiwang.friends.Laiwang";
        as[38] = "cn.sharesdk.laiwang.moments.LaiwangMoments";
        ArrayList arraylist = new ArrayList();
        int l = as.length;
        int k = 0;
        while (k < l) 
        {
            Object obj = as[k];
            try
            {
                obj = Class.forName(((String) (obj))).getConstructor(new Class[] {
                    android/content/Context
                });
                ((Constructor) (obj)).setAccessible(true);
                arraylist.add((Platform)((Constructor) (obj)).newInstance(new Object[] {
                    context
                }));
            }
            catch (Throwable throwable)
            {
                Ln.e(throwable);
            }
            k++;
        }
        return arraylist;
    }

    public String a()
    {
        return "2.6.0";
    }

    public String a(int k, String s, HashMap hashmap)
    {
        hashmap = (HashMap)hashmap.get(Integer.valueOf(k));
        if (hashmap == null)
        {
            return null;
        }
        s = ((String) (hashmap.get(s)));
        if (s == null)
        {
            s = null;
        } else
        {
            s = String.valueOf(s);
        }
        return s;
    }

    public String a(Context context, Bitmap bitmap)
    {
        return cn.sharesdk.framework.statistics.a.a(context).a(bitmap);
    }

    public String a(Context context, String s)
    {
        return cn.sharesdk.framework.statistics.a.a(context).e(s);
    }

    public String a(Context context, String s, String s1, boolean flag, int k, String s2)
    {
        return cn.sharesdk.framework.statistics.a.a(context).a(s1, s, k, flag, s2);
    }

    public ArrayList a(Context context)
    {
        if (a)
        {
            context = d(context);
        } else
        {
            PackageInfo packageinfo = c(context);
            if (packageinfo == null)
            {
                return null;
            }
            context = a(packageinfo, context);
        }
        a(((ArrayList) (context)));
        return context;
    }

    public void a(int k, int l, HashMap hashmap)
    {
        hashmap.put(Integer.valueOf(l), (HashMap)hashmap.get(Integer.valueOf(k)));
    }

    public void a(int k, Platform platform)
    {
        d d1 = new d();
        k;
        JVM INSTR tableswitch 1 5: default 44
    //                   1 71
    //                   2 81
    //                   3 91
    //                   4 101
    //                   5 111;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        if (platform != null)
        {
            d1.b = platform.getPlatformId();
        }
        platform = cn.sharesdk.framework.statistics.b.a(null);
        if (platform != null)
        {
            platform.a(d1);
        }
        return;
_L2:
        d1.a = "SHARESDK_ENTER_SHAREMENU";
        continue; /* Loop/switch isn't completed */
_L3:
        d1.a = "SHARESDK_CANCEL_SHAREMENU";
        continue; /* Loop/switch isn't completed */
_L4:
        d1.a = "SHARESDK_EDIT_SHARE";
        continue; /* Loop/switch isn't completed */
_L5:
        d1.a = "SHARESDK_FAILED_SHARE";
        continue; /* Loop/switch isn't completed */
_L6:
        d1.a = "SHARESDK_CANCEL_SHARE";
        if (true) goto _L1; else goto _L7
_L7:
    }

    public void a(Context context, String s, Handler handler, boolean flag, int k)
    {
        context = cn.sharesdk.framework.statistics.b.a(context);
        context.a(s);
        context.a(handler);
        context.a(flag);
        context.a(k);
        context.startThread();
    }

    public void a(String s, int k)
    {
        b b1 = cn.sharesdk.framework.statistics.b.a(null);
        if (b1 == null)
        {
            return;
        } else
        {
            cn.sharesdk.framework.statistics.b.a a1 = new cn.sharesdk.framework.statistics.b.a();
            a1.b = s;
            a1.a = k;
            b1.a(a1);
            return;
        }
    }

    public void a(ArrayList arraylist)
    {
        if (arraylist == null)
        {
            return;
        } else
        {
            Collections.sort(arraylist, new j(this));
            return;
        }
    }

    public boolean a(HashMap hashmap, HashMap hashmap1)
    {
        if (hashmap == null || hashmap.size() <= 0)
        {
            return false;
        }
        hashmap = (ArrayList)hashmap.get("fakelist");
        if (hashmap == null)
        {
            return false;
        }
        hashmap = hashmap.iterator();
        do
        {
            if (hashmap.hasNext())
            {
                HashMap hashmap2 = (HashMap)hashmap.next();
                if (hashmap2 != null)
                {
                    String s = String.valueOf(hashmap2.get("snsplat"));
                    int k;
                    try
                    {
                        k = R.parseInt(s);
                    }
                    catch (Throwable throwable)
                    {
                        Ln.e(throwable);
                        k = -1;
                    }
                    if (k != -1)
                    {
                        hashmap1.put(Integer.valueOf(k), hashmap2);
                    }
                }
            } else
            {
                return true;
            }
        } while (true);
    }

    public int b()
    {
        return 51;
    }

    public void b(Context context)
    {
        cn.sharesdk.framework.statistics.b.a(context).stopThread();
    }

}
