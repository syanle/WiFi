// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.update;


// Referenced classes of package com.pubinfo.freewifialliance.update:
//            AWingUpdater

class app_intro
{

    private String app_intro;
    private String app_name;
    private long app_size;
    private String download_url;
    private String public_date;
    final AWingUpdater this$0;
    private String update_grade;
    private int version_code;
    private String version_name;

    public String getAppIntro()
    {
        return app_intro;
    }

    public String getAppName()
    {
        return app_name;
    }

    public long getAppSize()
    {
        return app_size;
    }

    public String getDownloadUrl()
    {
        return download_url;
    }

    public String getPublicDate()
    {
        return public_date;
    }

    public String getUpdateGrade()
    {
        return update_grade;
    }

    public int getVersionCode()
    {
        return version_code;
    }

    public String getVersionName()
    {
        return version_name;
    }

    public void setAppIntro(String s)
    {
        app_intro = s;
    }

    public void setAppName(String s)
    {
        app_name = s;
    }

    public void setAppSize(String s)
    {
        try
        {
            app_size = Long.parseLong(s);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
    }

    public void setDownloadUrl(String s)
    {
        download_url = s;
    }

    public void setPublicDate(String s)
    {
        public_date = s;
    }

    public void setUpdateGrade(String s)
    {
        update_grade = s;
    }

    public void setVersionCode(String s)
    {
        try
        {
            version_code = Integer.parseInt(s);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
    }

    public void setVersionName(String s)
    {
        version_name = s;
    }

    ()
    {
        this$0 = AWingUpdater.this;
        super();
        app_name = "";
        version_name = "";
        version_code = 0;
        app_size = 0L;
        download_url = "";
        public_date = "";
        update_grade = "";
        app_intro = "";
    }
}
