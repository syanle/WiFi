// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.sina.weibo;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.PlatformDb;
import com.mob.tools.utils.BitmapHelper;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.Ln;
import com.mob.tools.utils.R;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;

// Referenced classes of package cn.sharesdk.sina.weibo:
//            a, d, i, e

public class SinaWeibo extends Platform
{
    public static class ShareParams extends cn.sharesdk.framework.Platform.ShareParams
    {

        public String imageUrl;
        public float latitude;
        public float longitude;

        public ShareParams()
        {
        }
    }


    public static final String NAME = cn/sharesdk/sina/weibo/SinaWeibo.getSimpleName();
    private String a;
    private String b;
    private String c;
    private boolean d;

    public SinaWeibo(Context context)
    {
        super(context);
    }

    static PlatformActionListener a(SinaWeibo sinaweibo)
    {
        return sinaweibo.listener;
    }

    private void a(cn.sharesdk.framework.Platform.ShareParams shareparams)
    {
        Intent intent;
        a a1;
        if (shareparams.getImageData() == null && TextUtils.isEmpty(shareparams.getImagePath()) && !TextUtils.isEmpty(shareparams.getImageUrl()))
        {
            try
            {
                File file = new File(BitmapHelper.downloadBitmap(getContext(), shareparams.getImageUrl()));
                if (file.exists())
                {
                    shareparams.setImagePath(file.getAbsolutePath());
                }
            }
            catch (Throwable throwable)
            {
                Ln.e(throwable);
            }
        }
        intent = new Intent();
        intent.putExtra("platformID", 1);
        intent.putExtra("action", 2);
        a1 = new a(this, a, c);
        a1.a(listener, shareparams, d);
        a1.show(getContext(), intent);
    }

    static void a(SinaWeibo sinaweibo, int i1, Object obj)
    {
        sinaweibo.afterRegister(i1, obj);
    }

    private void a(String as[])
    {
        a a1 = new a(this, a, c);
        a1.a(new d(this), as, isSSODisable());
        as = new Intent();
        as.putExtra("platformID", 1);
        as.putExtra("action", 1);
        a1.show(getContext(), as);
    }

    static PlatformActionListener b(SinaWeibo sinaweibo)
    {
        return sinaweibo.listener;
    }

    private void b(cn.sharesdk.framework.Platform.ShareParams shareparams)
    {
        Object obj;
        i i1;
        String s;
        String s1;
        obj = shareparams.getText();
        if (TextUtils.isEmpty(((CharSequence) (obj))))
        {
            int j1 = R.getStringRes(getContext(), "weibo_upload_content");
            if (j1 > 0)
            {
                obj = getContext().getString(j1);
            }
        }
        i1 = cn.sharesdk.sina.weibo.i.a(this);
        obj = getShortLintk(((String) (obj)), false);
        s = shareparams.getImagePath();
        s1 = shareparams.getImageUrl();
        if (!d || !i1.a()) goto _L2; else goto _L1
_L1:
        i1.a(((String) (obj)), shareparams, listener);
_L4:
        return;
        shareparams;
        listener.onError(this, 9, shareparams);
        return;
_L2:
        try
        {
            float f1 = shareparams.getLatitude();
            obj = i1.a(((String) (obj)), s1, s, shareparams.getLongitude(), f1);
        }
        // Misplaced declaration of an exception variable
        catch (cn.sharesdk.framework.Platform.ShareParams shareparams)
        {
            listener.onError(this, 9, shareparams);
            return;
        }
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_172;
        }
        if (listener == null) goto _L4; else goto _L3
_L3:
        listener.onError(this, 9, new Throwable());
        return;
        if (!((HashMap) (obj)).containsKey("error_code") || ((Integer)((HashMap) (obj)).get("error_code")).intValue() == 0)
        {
            break MISSING_BLOCK_LABEL_236;
        }
        if (listener == null) goto _L4; else goto _L5
_L5:
        shareparams = (new Hashon()).fromHashMap(((HashMap) (obj)));
        listener.onError(this, 9, new Throwable(shareparams));
        return;
        ((HashMap) (obj)).put("ShareParams", shareparams);
        if (listener != null)
        {
            listener.onComplete(this, 9, ((HashMap) (obj)));
            return;
        }
          goto _L4
    }

    static void b(SinaWeibo sinaweibo, int i1, Object obj)
    {
        sinaweibo.afterRegister(i1, obj);
    }

    private void b(String as[])
    {
        i i1 = cn.sharesdk.sina.weibo.i.a(this);
        i1.a(a, b);
        i1.a(c);
        i1.a(as);
        i1.a(new e(this, i1), isSSODisable());
    }

    static PlatformActionListener c(SinaWeibo sinaweibo)
    {
        return sinaweibo.listener;
    }

    static PlatformActionListener d(SinaWeibo sinaweibo)
    {
        return sinaweibo.listener;
    }

    static PlatformDb e(SinaWeibo sinaweibo)
    {
        return sinaweibo.db;
    }

    static PlatformDb f(SinaWeibo sinaweibo)
    {
        return sinaweibo.db;
    }

    static PlatformDb g(SinaWeibo sinaweibo)
    {
        return sinaweibo.db;
    }

    static PlatformDb h(SinaWeibo sinaweibo)
    {
        return sinaweibo.db;
    }

    static PlatformDb i(SinaWeibo sinaweibo)
    {
        return sinaweibo.db;
    }

    static PlatformActionListener j(SinaWeibo sinaweibo)
    {
        return sinaweibo.listener;
    }

    static PlatformActionListener k(SinaWeibo sinaweibo)
    {
        return sinaweibo.listener;
    }

    static PlatformActionListener l(SinaWeibo sinaweibo)
    {
        return sinaweibo.listener;
    }

    static PlatformActionListener m(SinaWeibo sinaweibo)
    {
        return sinaweibo.listener;
    }

    protected boolean checkAuthorize(int i1, Object obj)
    {
        ActivityInfo aactivityinfo[];
        int l1;
        aactivityinfo = getContext().getPackageManager().getPackageInfo(getContext().getPackageName(), 1).activities;
        l1 = aactivityinfo.length;
        int k1 = 0;
_L4:
        if (k1 >= l1)
        {
            break MISSING_BLOCK_LABEL_182;
        }
        if (!"cn.sharesdk.sina.weibo.SinaActivity".equals(aactivityinfo[k1].name)) goto _L2; else goto _L1
_L1:
        i j1;
        for (k1 = 1; k1 == 0; k1 = 0)
        {
            try
            {
                throw new Throwable("cn.sharesdk.sina.weibo.SinaActivity is not registered");
            }
            catch (Throwable throwable)
            {
                k1 = 0;
            }
            break MISSING_BLOCK_LABEL_75;
        }

          goto _L3
_L2:
        k1++;
          goto _L4
_L3:
        Class.forName("com.sina.weibo.sdk.auth.AuthInfo");
        k1 = 1;
        j1 = cn.sharesdk.sina.weibo.i.a(this);
        if (k1 != 0 && i1 == 9 && j1.a() || i1 == 9 && d && j1.a())
        {
            return true;
        }
        if (isAuthValid())
        {
            j1.a(a, b);
            j1.b(db.getToken());
            return true;
        } else
        {
            innerAuthorize(i1, obj);
            return false;
        }
    }

    protected void doAuthorize(String as[])
    {
        boolean flag = true;
        ActivityInfo aactivityinfo[];
        int j1;
        aactivityinfo = getContext().getPackageManager().getPackageInfo(getContext().getPackageName(), 1).activities;
        j1 = aactivityinfo.length;
        int i1 = 0;
_L4:
        if (i1 >= j1)
        {
            break MISSING_BLOCK_LABEL_97;
        }
        if (!"cn.sharesdk.sina.weibo.SinaActivity".equals(aactivityinfo[i1].name)) goto _L2; else goto _L1
_L1:
        i1 = ((flag) ? 1 : 0);
_L5:
        if (i1 == 0)
        {
            try
            {
                throw new Throwable("cn.sharesdk.sina.weibo.SinaActivity is not registered");
            }
            catch (Throwable throwable)
            {
                b(as);
            }
            return;
        }
          goto _L3
_L2:
        i1++;
          goto _L4
_L3:
        Class.forName("com.sina.weibo.sdk.auth.AuthInfo");
        a(as);
        return;
        i1 = 0;
          goto _L5
    }

    protected void doCustomerProtocol(String s, String s1, int i1, HashMap hashmap, HashMap hashmap1)
    {
        try
        {
            s = cn.sharesdk.sina.weibo.i.a(this).a(s, s1, hashmap, hashmap1);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            listener.onError(this, i1, s);
            return;
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_25;
        }
        if (s.size() > 0)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        if (listener != null)
        {
            listener.onError(this, i1, new Throwable());
            return;
        }
        break MISSING_BLOCK_LABEL_147;
        if (s.containsKey("error_code") && ((Integer)s.get("error_code")).intValue() != 0)
        {
            if (listener != null)
            {
                s = (new Hashon()).fromHashMap(s);
                listener.onError(this, i1, new Throwable(s));
                return;
            }
            break MISSING_BLOCK_LABEL_147;
        }
        if (listener != null)
        {
            listener.onComplete(this, i1, s);
        }
    }

    protected void doShare(cn.sharesdk.framework.Platform.ShareParams shareparams)
    {
        boolean flag = true;
        ActivityInfo aactivityinfo[];
        int j1;
        aactivityinfo = getContext().getPackageManager().getPackageInfo(getContext().getPackageName(), 1).activities;
        j1 = aactivityinfo.length;
        int i1 = 0;
_L4:
        if (i1 >= j1)
        {
            break MISSING_BLOCK_LABEL_97;
        }
        if (!"cn.sharesdk.sina.weibo.SinaActivity".equals(aactivityinfo[i1].name)) goto _L2; else goto _L1
_L1:
        i1 = ((flag) ? 1 : 0);
_L5:
        if (i1 == 0)
        {
            try
            {
                throw new Throwable("cn.sharesdk.sina.weibo.SinaActivity is not registered");
            }
            catch (Throwable throwable)
            {
                b(shareparams);
            }
            return;
        }
          goto _L3
_L2:
        i1++;
          goto _L4
_L3:
        Class.forName("com.sina.weibo.sdk.api.share.WeiboShareSDK");
        a(shareparams);
        return;
        i1 = 0;
          goto _L5
    }

    protected cn.sharesdk.framework.statistics.b.f.a filterShareContent(cn.sharesdk.framework.Platform.ShareParams shareparams, HashMap hashmap)
    {
        cn.sharesdk.framework.statistics.b.f.a a1 = new cn.sharesdk.framework.statistics.b.f.a();
        a1.b = shareparams.getText();
        if (hashmap != null)
        {
            a1.a = String.valueOf(hashmap.get("id"));
            a1.d.add(String.valueOf(hashmap.get("original_pic")));
            a1.g = hashmap;
        }
        return a1;
    }

    protected void follow(String s)
    {
        i i1 = cn.sharesdk.sina.weibo.i.a(this);
        try
        {
            s = i1.d(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            listener.onError(this, 6, s);
            return;
        }
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_42;
        }
        if (listener != null)
        {
            listener.onError(this, 6, new Throwable());
            return;
        }
        break MISSING_BLOCK_LABEL_141;
        if (s.containsKey("error_code") && ((Integer)s.get("error_code")).intValue() != 0)
        {
            if (listener != null)
            {
                s = (new Hashon()).fromHashMap(s);
                listener.onError(this, 6, new Throwable(s));
                return;
            }
            break MISSING_BLOCK_LABEL_141;
        }
        if (listener != null)
        {
            listener.onComplete(this, 6, s);
        }
    }

    protected void getFriendList(int i1, int j1, String s)
    {
        String s1 = s;
        if (TextUtils.isEmpty(s))
        {
            s1 = db.getUserId();
        }
        s = s1;
        if (TextUtils.isEmpty(s1))
        {
            s = db.get("nickname");
        }
        if (!TextUtils.isEmpty(s)) goto _L2; else goto _L1
_L1:
        if (listener != null)
        {
            listener.onError(this, 2, new RuntimeException("Both weibo id and screen_name are null"));
        }
_L4:
        return;
_L2:
        i k1 = cn.sharesdk.sina.weibo.i.a(this);
        try
        {
            s = k1.b(i1, j1, s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            listener.onError(this, 2, s);
            return;
        }
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_136;
        }
        if (listener == null) goto _L4; else goto _L3
_L3:
        listener.onError(this, 2, new Throwable());
        return;
        if (!s.containsKey("error_code") || ((Integer)s.get("error_code")).intValue() == 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (listener == null) goto _L4; else goto _L5
_L5:
        s = (new Hashon()).fromHashMap(s);
        listener.onError(this, 2, new Throwable(s));
        return;
        if (listener == null) goto _L4; else goto _L6
_L6:
        listener.onComplete(this, 2, s);
        return;
    }

    public String getName()
    {
        return NAME;
    }

    protected int getPlatformId()
    {
        return 1;
    }

    public int getVersion()
    {
        return 1;
    }

    protected void initDevInfo(String s)
    {
        a = getDevinfo("AppKey");
        b = getDevinfo("AppSecret");
        c = getDevinfo("RedirectUrl");
        d = "true".equals(getDevinfo("ShareByAppClient"));
    }

    public boolean isClientValid()
    {
        return cn.sharesdk.sina.weibo.i.a(this).a();
    }

    protected void setNetworkDevinfo()
    {
        a = getNetworkDevinfo("app_key", "AppKey");
        b = getNetworkDevinfo("app_secret", "AppSecret");
        c = getNetworkDevinfo("redirect_uri", "RedirectUrl");
    }

    protected void timeline(int i1, int j1, String s)
    {
        String s1 = s;
        if (TextUtils.isEmpty(s))
        {
            s1 = db.getUserId();
        }
        s = s1;
        if (TextUtils.isEmpty(s1))
        {
            s = db.get("nickname");
        }
        if (!TextUtils.isEmpty(s)) goto _L2; else goto _L1
_L1:
        if (listener != null)
        {
            listener.onError(this, 7, new RuntimeException("Both weibo id and screen_name are null"));
        }
_L4:
        return;
_L2:
        i k1 = cn.sharesdk.sina.weibo.i.a(this);
        try
        {
            s = k1.a(i1, j1, s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            listener.onError(this, 7, s);
            return;
        }
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_139;
        }
        if (listener == null) goto _L4; else goto _L3
_L3:
        listener.onError(this, 7, new Throwable());
        return;
        if (!s.containsKey("error_code") || ((Integer)s.get("error_code")).intValue() == 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (listener == null) goto _L4; else goto _L5
_L5:
        s = (new Hashon()).fromHashMap(s);
        listener.onError(this, 7, new Throwable(s));
        return;
        if (listener == null) goto _L4; else goto _L6
_L6:
        listener.onComplete(this, 7, s);
        return;
    }

    protected void userInfor(String s)
    {
        String s1;
        boolean flag;
        boolean flag1 = true;
        flag = false;
        s1 = s;
        if (TextUtils.isEmpty(s))
        {
            s1 = db.getUserId();
            flag = true;
        }
        if (TextUtils.isEmpty(s1))
        {
            s1 = db.get("nickname");
            flag = flag1;
        }
        if (!TextUtils.isEmpty(s1)) goto _L2; else goto _L1
_L1:
        if (listener != null)
        {
            listener.onError(this, 8, new RuntimeException("Both weibo id and screen_name are null"));
        }
_L4:
        return;
_L2:
        s = cn.sharesdk.sina.weibo.i.a(this);
        try
        {
            s = s.c(s1);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            listener.onError(this, 8, s);
            return;
        }
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_139;
        }
        if (listener != null)
        {
            listener.onError(this, 8, new Throwable());
            return;
        }
        continue; /* Loop/switch isn't completed */
        if (!s.containsKey("error_code") || ((Integer)s.get("error_code")).intValue() == 0)
        {
            break; /* Loop/switch isn't completed */
        }
        if (listener != null)
        {
            s = (new Hashon()).fromHashMap(s);
            listener.onError(this, 8, new Throwable(s));
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (!flag)
        {
            continue; /* Loop/switch isn't completed */
        }
        db.putUserId(String.valueOf(s.get("id")));
        db.put("nickname", String.valueOf(s.get("screen_name")));
        db.put("icon", String.valueOf(s.get("avatar_hd")));
        if (!String.valueOf(s.get("verified")).equals("true")) goto _L6; else goto _L5
_L5:
        db.put("secretType", "1");
_L10:
        db.put("secret", String.valueOf(s.get("verified_reason")));
        s1 = String.valueOf(s.get("gender"));
        if (!s1.equals("m")) goto _L8; else goto _L7
_L7:
        db.put("gender", "0");
_L11:
        db.put("snsUserUrl", (new StringBuilder()).append("http://weibo.com/").append(String.valueOf(s.get("profile_url"))).toString());
        db.put("resume", String.valueOf(s.get("description")));
        db.put("followerCount", String.valueOf(s.get("followers_count")));
        db.put("favouriteCount", String.valueOf(s.get("friends_count")));
        db.put("shareCount", String.valueOf(s.get("statuses_count")));
        long l1 = R.dateToLong(String.valueOf(s.get("created_at")));
        db.put("snsregat", String.valueOf(l1));
        if (listener == null) goto _L4; else goto _L9
_L9:
        listener.onComplete(this, 8, s);
        return;
_L6:
        db.put("secretType", "0");
          goto _L10
_L8:
label0:
        {
            if (!s1.equals("f"))
            {
                break label0;
            }
            db.put("gender", "1");
        }
          goto _L11
        db.put("gender", "2");
          goto _L11
    }

}
