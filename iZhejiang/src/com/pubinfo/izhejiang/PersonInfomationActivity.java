// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.izhejiang;

import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.BitmapFactory;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.cat.data.ComData;
import com.cat.data.PublicError;
import com.cat.data.UpLoadData;
import com.cat.picture.ShowImageActivity;
import com.cat.tools.APPConf;
import com.cat.tools.AWLocalInterfaces;
import com.cat.tools.SelectPicPopupWindow;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.androidpn.client.ServiceManager;

// Referenced classes of package com.pubinfo.izhejiang:
//            ThinkAndroidBaseActivity, EditInfomationActivity

public class PersonInfomationActivity extends ThinkAndroidBaseActivity
{
    public class MyThread extends Thread
    {

        final PersonInfomationActivity this$0;

        public void run()
        {
            try
            {
                byte abyte0[] = PersonInfomationActivity.readImage(faceurl);
                FileOutputStream fileoutputstream = new FileOutputStream(new File((new StringBuilder(String.valueOf(APPConf.PHOTO_SAVE2_PATH))).append(APPConf.PHOTO_BEFORECUT_PATH).toString()));
                fileoutputstream.write(abyte0);
                fileoutputstream.close();
                mainHandler.sendEmptyMessage(4);
                return;
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
        }

        public MyThread()
        {
            this$0 = PersonInfomationActivity.this;
            super();
        }
    }

    public class MyThreadUpload extends Thread
    {

        final PersonInfomationActivity this$0;

        public void run()
        {
            try
            {
                Looper.prepare();
                Commit();
            }
            catch (Exception exception) { }
            Looper.loop();
        }

        public MyThreadUpload()
        {
            this$0 = PersonInfomationActivity.this;
            super();
        }
    }


    public static final int PHOTO_REQUEST_CAREMA = 1;
    public static final int PHOTO_REQUEST_CUT = 3;
    public static final int PHOTO_REQUEST_GALLERY = 2;
    public static final int USER_INFOMATION = 4;
    ImageButton backButton;
    LinearLayout confirmButton;
    String countrycode;
    RelativeLayout edit2;
    String email;
    String face;
    String faceurl;
    private android.view.View.OnClickListener itemsOnClick;
    private android.view.View.OnClickListener itemsOnClick2;
    TextView loading_text;
    private Handler mainHandler;
    String memberid;
    SelectPicPopupWindow menuWindow;
    TextView nameTV;
    String nick;
    String phone;
    TextView phoneTV;
    RelativeLayout relativelayout1;
    File tempFile;
    TextView title;
    Button zhuxiaoButton;

    public PersonInfomationActivity()
    {
        itemsOnClick2 = new android.view.View.OnClickListener() {

            final PersonInfomationActivity this$0;

            public void onClick(View view)
            {
                switch (view.getId())
                {
                default:
                    return;

                case 2131361978: 
                    mainHandler.sendEmptyMessage(1);
                    break;
                }
            }

            
            {
                this$0 = PersonInfomationActivity.this;
                super();
            }
        };
        itemsOnClick = new android.view.View.OnClickListener() {

            final PersonInfomationActivity this$0;

            public void onClick(View view)
            {
                menuWindow.dismiss();
                switch (view.getId())
                {
                default:
                    return;

                case 2131361820: 
                    camera();
                    return;

                case 2131361821: 
                    gallery();
                    break;
                }
            }

            
            {
                this$0 = PersonInfomationActivity.this;
                super();
            }
        };
        mainHandler = null;
    }

    public static boolean CheckIsEmail(String s)
    {
        return Pattern.compile("^[a-zA-Z][\\w\\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]\\.[a-zA-Z][a-zA-Z\\.]*[a-zA-Z]$").matcher(s).matches();
    }

    private void Commit()
    {
        String s;
        Object obj;
        obj = getSharedPreferences("LoginSucess", 0);
        s = ((SharedPreferences) (obj)).getString("username", "");
        String s1 = ((SharedPreferences) (obj)).getString("memberid", "");
        obj = new AWLocalInterfaces();
        s = ((AWLocalInterfaces) (obj)).upload(s, s1, (new StringBuilder(String.valueOf(APPConf.PHOTO_SAVE2_PATH))).append(APPConf.PHOTO_AFTERCUT_PATH).toString(), getLocalMacAddress(), getString(0x7f060001), getString(0x7f060002), getApplicationContext());
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_194;
        }
        obj = ((AWLocalInterfaces) (obj)).parseContent(s);
        if (!s.contains("OK"))
        {
            ComData.getInstance().setpError((List)obj);
            mainHandler.sendEmptyMessage(4);
            return;
        }
        try
        {
            List list = (List)obj;
            obj = getSharedPreferences("MyFragment", 0).edit();
            ((android.content.SharedPreferences.Editor) (obj)).putString("face", ((UpLoadData)list.get(0)).getFaceimg());
            ((android.content.SharedPreferences.Editor) (obj)).commit();
            mainHandler.sendEmptyMessage(5);
            return;
        }
        catch (Exception exception)
        {
            mainHandler.sendEmptyMessage(4);
        }
        return;
        mainHandler.sendEmptyMessage(4);
        return;
    }

    private void crop(Uri uri, String s)
    {
        Intent intent = new Intent(this, com/cat/picture/ShowImageActivity);
        intent.setDataAndType(uri, "image/*");
        intent.putExtra("path", s);
        startActivityForResult(intent, 3);
    }

    private void init()
    {
        title = (TextView)findViewById(0x7f0a002d);
        title.setText("\u6211\u7684");
        phoneTV = (TextView)findViewById(0x7f0a00b6);
        nameTV = (TextView)findViewById(0x7f0a00b7);
        loading_text = (TextView)findViewById(0x7f0a00a5);
        backButton = (ImageButton)findViewById(0x7f0a002c);
        confirmButton = (LinearLayout)findViewById(0x7f0a002e);
        relativelayout1 = (RelativeLayout)findViewById(0x7f0a006e);
        edit2 = (RelativeLayout)findViewById(0x7f0a0072);
        zhuxiaoButton = (Button)findViewById(0x7f0a00b8);
        SharedPreferences sharedpreferences = getSharedPreferences("LoginSucess", 0);
        phone = sharedpreferences.getString("username", "");
        memberid = sharedpreferences.getString("memberid", "");
        countrycode = sharedpreferences.getString("countrycode", "");
        sharedpreferences = getSharedPreferences("MyFragment", 0);
        face = sharedpreferences.getString("face", "");
        nick = sharedpreferences.getString("nick", "");
        email = sharedpreferences.getString("email", "");
        faceurl = sharedpreferences.getString("faceurl", "");
        if (!nick.equals("null") && !nick.equals(""))
        {
            nameTV.setText(nick);
        }
        if (!email.equals("null"))
        {
            email.equals("");
        }
        chosePhoto();
        phoneTV.setText(phone);
    }

    private void initialHandler()
    {
        mainHandler = new Handler(new android.os.Handler.Callback() {

            final PersonInfomationActivity this$0;

            public boolean handleMessage(Message message)
            {
                message.what;
                JVM INSTR tableswitch 1 5: default 40
            //                           1 42
            //                           2 78
            //                           3 104
            //                           4 172
            //                           5 189;
                   goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
                return true;
_L2:
                if (!checkNetWork())
                {
                    showMsgToast(getString(0x7f060032));
                    hideLoading();
                }
                continue; /* Loop/switch isn't completed */
_L3:
                hideLoading();
                showMsgToast(getString(0x7f060031));
                continue; /* Loop/switch isn't completed */
_L4:
                hideLoading();
                message = ComData.getInstance().getpError();
                if (message != null && message.size() > 0)
                {
                    int i = 0;
                    while (i < message.size()) 
                    {
                        String s = ((PublicError)message.get(i)).getMessage();
                        showMsgToast(s);
                        i++;
                    }
                }
                continue; /* Loop/switch isn't completed */
_L5:
                hideLoading();
                chosePhoto();
                continue; /* Loop/switch isn't completed */
_L6:
                hideLoading();
                try
                {
                    message = new File((new StringBuilder(String.valueOf(APPConf.PHOTO_SAVE2_PATH))).append(APPConf.PHOTO_AFTERCUT_PATH).toString());
                    File file = new File((new StringBuilder(String.valueOf(APPConf.PHOTO_SAVE2_PATH))).append(APPConf.PHOTO_BEFORECUT_PATH).toString());
                    file.delete();
                    message.renameTo(file);
                }
                // Misplaced declaration of an exception variable
                catch (Message message)
                {
                    message.printStackTrace();
                }
                message = new android.graphics.BitmapFactory.Options();
                message.inSampleSize = 3;
                message = new BitmapDrawable(null, BitmapFactory.decodeFile((new StringBuilder(String.valueOf(APPConf.PHOTO_SAVE2_PATH))).append(APPConf.PHOTO_BEFORECUT_PATH).toString(), message));
                relativelayout1.setBackgroundDrawable(null);
                relativelayout1.setBackgroundDrawable(message);
                if (true) goto _L1; else goto _L7
_L7:
            }

            
            {
                this$0 = PersonInfomationActivity.this;
                super();
            }
        });
    }

    public static byte[] readImage(String s)
        throws Exception
    {
        s = (HttpURLConnection)(new URL(s)).openConnection();
        s.setRequestMethod("GET");
        s.setConnectTimeout(5000);
        return readStream(s.getInputStream());
    }

    public static byte[] readStream(InputStream inputstream)
        throws Exception
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        byte abyte0[] = new byte[1024];
        do
        {
            int i = inputstream.read(abyte0);
            if (i == -1)
            {
                bytearrayoutputstream.close();
                inputstream.close();
                return bytearrayoutputstream.toByteArray();
            }
            bytearrayoutputstream.write(abyte0, 0, i);
        } while (true);
    }

    public void camera()
    {
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        if (CreatFileSdcard())
        {
            tempFile = new File(APPConf.PHOTO_SAVE2_PATH, APPConf.PHOTO_FILE_NAME);
            tempFile.delete();
            if (!tempFile.exists())
            {
                try
                {
                    tempFile.createNewFile();
                }
                catch (Exception exception) { }
            }
            intent.putExtra("output", Uri.fromFile(tempFile));
        }
        startActivityForResult(intent, 1);
    }

    public void chosePhoto()
    {
        if ((new File((new StringBuilder(String.valueOf(APPConf.PHOTO_SAVE2_PATH))).append(APPConf.PHOTO_BEFORECUT_PATH).toString())).exists())
        {
            Object obj = new android.graphics.BitmapFactory.Options();
            obj.inSampleSize = 3;
            obj = new BitmapDrawable(null, BitmapFactory.decodeFile((new StringBuilder(String.valueOf(APPConf.PHOTO_SAVE2_PATH))).append(APPConf.PHOTO_BEFORECUT_PATH).toString(), ((android.graphics.BitmapFactory.Options) (obj))));
            relativelayout1.setBackgroundDrawable(null);
            relativelayout1.setBackgroundDrawable(((android.graphics.drawable.Drawable) (obj)));
        }
    }

    public void gallery()
    {
        Intent intent = new Intent("android.intent.action.PICK");
        intent.setType("image/*");
        startActivityForResult(intent, 2);
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (i != 2 || j != -1) goto _L2; else goto _L1
_L1:
        crop(intent.getData(), null);
_L6:
        super.onActivityResult(i, j, intent);
_L4:
        return;
_L2:
        if (i == 1 && j == -1)
        {
            crop(Uri.fromFile(tempFile), tempFile.getPath());
            continue; /* Loop/switch isn't completed */
        }
        if (i == 3)
        {
            (new MyThreadUpload()).start();
            continue; /* Loop/switch isn't completed */
        }
        if (i != 4)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (intent == null) goto _L4; else goto _L3
_L3:
        String s = intent.getExtras().getString("tag");
        String s1 = intent.getExtras().getString("userinfo");
        android.content.SharedPreferences.Editor editor = getSharedPreferences("MyFragment", 0).edit();
        if (s.equals("nick"))
        {
            nameTV.setText(s1);
            editor.putString("nick", s1);
            editor.commit();
        } else
        {
            s.equals("email");
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030025);
        ll_pageInnerLoading = (LinearLayout)findViewById(0x7f0a0029);
        iv_pageInnerLoading = (ImageView)ll_pageInnerLoading.findViewById(0x7f0a00a4);
        iv_pageInnerLoading.measure(0, 0);
        msInnerLoadingAnim = (AnimationDrawable)iv_pageInnerLoading.getBackground();
        initialHandler();
        init();
        bundle = new android.view.View.OnClickListener() {

            final PersonInfomationActivity this$0;

            public void onClick(View view)
            {
                switch (view.getId())
                {
                default:
                    return;

                case 2131361906: 
                    view = new Intent(PersonInfomationActivity.this, com/pubinfo/izhejiang/EditInfomationActivity);
                    view.putExtra("usertag", "nick");
                    view.putExtra("nick", nameTV.getText().toString().trim());
                    startActivityForResult(view, 4);
                    return;

                case 2131361836: 
                    view = new Intent();
                    view.putExtra("username", phone);
                    view.putExtra("countrycode", countrycode);
                    view.putExtra("tag", "back");
                    setResult(3, view);
                    finish();
                    return;

                case 2131361976: 
                    view = getSharedPreferences("LoginSucess", 0).edit();
                    view.clear();
                    view.commit();
                    view = new Intent();
                    view.putExtra("tag", "zhuxiao");
                    setResult(3, view);
                    try
                    {
                        ServiceManager.getInstance(getApplicationContext()).disconnectPnServer();
                        view = new File((new StringBuilder(String.valueOf(APPConf.PHOTO_SAVE2_PATH))).append(APPConf.PHOTO_AFTERCUT_PATH).toString());
                        (new File((new StringBuilder(String.valueOf(APPConf.PHOTO_SAVE2_PATH))).append(APPConf.PHOTO_BEFORECUT_PATH).toString())).delete();
                        view.delete();
                    }
                    // Misplaced declaration of an exception variable
                    catch (View view)
                    {
                        view.printStackTrace();
                    }
                    finish();
                    return;

                case 2131361902: 
                    menuWindow = new SelectPicPopupWindow(PersonInfomationActivity.this, itemsOnClick);
                    menuWindow.setText("\u62CD\u6444", "\u4ECE\u624B\u673A\u76F8\u518C\u9009\u62E9");
                    menuWindow.showAtLocation(findViewById(0x7f0a0022), 81, 0, 0);
                    return;
                }
            }

            
            {
                this$0 = PersonInfomationActivity.this;
                super();
            }
        };
        edit2.setOnClickListener(bundle);
        relativelayout1.setOnClickListener(bundle);
        backButton.setOnClickListener(bundle);
        zhuxiaoButton.setOnClickListener(bundle);
        confirmButton.setVisibility(8);
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (i == 4 || i == 3)
        {
            finish();
            return true;
        } else
        {
            return super.onKeyDown(i, keyevent);
        }
    }



}
