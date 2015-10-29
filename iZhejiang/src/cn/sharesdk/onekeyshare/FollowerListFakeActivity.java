// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package cn.sharesdk.onekeyshare;

import cn.sharesdk.framework.Platform;
import com.mob.tools.FakeActivity;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public class FollowerListFakeActivity extends FakeActivity
{
    public static class FollowersResult
    {

        public boolean hasNextPage;
        public ArrayList list;

        public FollowersResult()
        {
            hasNextPage = false;
        }
    }

    public static class Following
    {

        public String atName;
        public boolean checked;
        public String description;
        public String icon;
        public String screenName;
        public String uid;

        public Following()
        {
        }
    }


    protected Platform platform;

    public FollowerListFakeActivity()
    {
    }

    public static FollowersResult parseFollowers(String s, HashMap hashmap, HashMap hashmap1)
    {
        ArrayList arraylist;
        boolean flag1;
        if (hashmap == null || hashmap.size() <= 0)
        {
            return null;
        }
        flag1 = false;
        arraylist = new ArrayList();
        if (!"SinaWeibo".equals(s)) goto _L2; else goto _L1
_L1:
        s = ((ArrayList)hashmap.get("users")).iterator();
_L5:
        if (s.hasNext()) goto _L4; else goto _L3
_L3:
        boolean flag;
        if (((Integer)hashmap.get("total_number")).intValue() > hashmap1.size())
        {
            flag = true;
        } else
        {
            flag = false;
        }
_L7:
        s = new FollowersResult();
        s.list = arraylist;
        s.hasNextPage = flag;
        return s;
_L4:
        HashMap hashmap2 = (HashMap)s.next();
        String s3 = String.valueOf(hashmap2.get("id"));
        if (!hashmap1.containsKey(s3))
        {
            Following following4 = new Following();
            following4.uid = s3;
            following4.screenName = String.valueOf(hashmap2.get("name"));
            following4.description = String.valueOf(hashmap2.get("description"));
            following4.icon = String.valueOf(hashmap2.get("profile_image_url"));
            following4.atName = following4.screenName;
            hashmap1.put(following4.uid, Boolean.valueOf(true));
            arraylist.add(following4);
        }
          goto _L5
_L2:
        if (!"TencentWeibo".equals(s))
        {
            break MISSING_BLOCK_LABEL_460;
        }
        Following following;
        Object obj;
        if (((Integer)hashmap.get("hasnext")).intValue() == 0)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        s = ((ArrayList)hashmap.get("info")).iterator();
        flag = flag1;
        if (!s.hasNext()) goto _L7; else goto _L6
_L6:
        hashmap = (HashMap)s.next();
        obj = String.valueOf(hashmap.get("name"));
        if (!hashmap1.containsKey(obj))
        {
            following = new Following();
            following.screenName = String.valueOf(hashmap.get("nick"));
            following.uid = ((String) (obj));
            following.atName = ((String) (obj));
            obj = ((ArrayList)hashmap.get("tweet")).iterator();
            if (((Iterator) (obj)).hasNext())
            {
                following.description = String.valueOf(((HashMap)((Iterator) (obj)).next()).get("text"));
            }
            following.icon = (new StringBuilder(String.valueOf(String.valueOf(hashmap.get("head"))))).append("/100").toString();
            hashmap1.put(following.uid, Boolean.valueOf(true));
            arraylist.add(following);
        }
        break MISSING_BLOCK_LABEL_271;
        if (!"Facebook".equals(s))
        {
            break MISSING_BLOCK_LABEL_664;
        }
        s = ((ArrayList)hashmap.get("data")).iterator();
_L8:
label0:
        {
            if (s.hasNext())
            {
                break label0;
            }
            flag = ((HashMap)hashmap.get("paging")).containsKey("next");
        }
          goto _L7
        HashMap hashmap3 = (HashMap)s.next();
        String s4 = String.valueOf(hashmap3.get("id"));
        if (!hashmap1.containsKey(s4))
        {
            Following following1 = new Following();
            following1.uid = s4;
            following1.atName = (new StringBuilder("[")).append(s4).append("]").toString();
            following1.screenName = String.valueOf(hashmap3.get("name"));
            hashmap3 = (HashMap)hashmap3.get("picture");
            if (hashmap3 != null)
            {
                following1.icon = String.valueOf(((HashMap)hashmap3.get("data")).get("url"));
            }
            hashmap1.put(following1.uid, Boolean.valueOf(true));
            arraylist.add(following1);
        }
          goto _L8
        if (!"Twitter".equals(s))
        {
            break MISSING_BLOCK_LABEL_818;
        }
        s = ((ArrayList)hashmap.get("users")).iterator();
_L10:
        flag = flag1;
        if (!s.hasNext()) goto _L7; else goto _L9
_L9:
        hashmap = (HashMap)s.next();
        String s1 = String.valueOf(hashmap.get("screen_name"));
        if (!hashmap1.containsKey(s1))
        {
            Following following2 = new Following();
            following2.uid = s1;
            following2.atName = s1;
            following2.screenName = String.valueOf(hashmap.get("name"));
            following2.description = String.valueOf(hashmap.get("description"));
            following2.icon = String.valueOf(hashmap.get("profile_image_url"));
            hashmap1.put(following2.uid, Boolean.valueOf(true));
            arraylist.add(following2);
        }
          goto _L10
        flag = flag1;
        if (!"FacebookMessenger".equals(s)) goto _L7; else goto _L11
_L11:
        s = ((ArrayList)hashmap.get("users")).iterator();
_L12:
label1:
        {
            if (s.hasNext())
            {
                break label1;
            }
            flag = false;
        }
          goto _L7
        hashmap = (HashMap)s.next();
        String s2 = String.valueOf(hashmap.get("jid"));
        if (!hashmap1.containsKey(s2))
        {
            Following following3 = new Following();
            following3.uid = s2;
            following3.atName = s2;
            following3.screenName = String.valueOf(hashmap.get("name"));
            hashmap1.put(following3.uid, Boolean.valueOf(true));
            arraylist.add(following3);
        }
          goto _L12
    }

    public Platform getPlatform()
    {
        return platform;
    }

    public boolean isRadioMode(String s)
    {
        return "FacebookMessenger".equals(s);
    }

    public void setPlatform(Platform platform1)
    {
        platform = platform1;
    }

    public void setResultForChecked(ArrayList arraylist)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("selected", arraylist);
        hashmap.put("platform", platform);
        setResult(hashmap);
    }
}
