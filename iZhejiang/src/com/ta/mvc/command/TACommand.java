// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.ta.mvc.command;

import android.os.Handler;
import android.os.Message;
import com.ta.mvc.common.TAIResponseListener;
import com.ta.mvc.common.TAResponse;

// Referenced classes of package com.ta.mvc.command:
//            TABaseCommand

public abstract class TACommand extends TABaseCommand
{

    protected static final int command_failure = 3;
    protected static final int command_finish = 5;
    protected static final int command_runting = 2;
    protected static final int command_start = 1;
    protected static final int command_success = 4;
    private Handler handler;
    private TAIResponseListener listener;

    public TACommand()
    {
        handler = new Handler() {

            final TACommand this$0;

            public void handleMessage(Message message)
            {
                switch (message.what)
                {
                default:
                    return;

                case 1: // '\001'
                    listener.onStart();
                    return;

                case 2: // '\002'
                    listener.onRuning(getResponse());
                    return;

                case 4: // '\004'
                    listener.onSuccess(getResponse());
                    return;

                case 3: // '\003'
                    listener.onFailure(getResponse());
                    return;

                case 5: // '\005'
                    listener.onFinish();
                    break;
                }
            }

            
            {
                this$0 = TACommand.this;
                super();
            }
        };
    }

    public final void execute()
    {
        onPreExecuteCommand();
        executeCommand();
        onPostExecuteCommand();
    }

    protected abstract void executeCommand();

    protected void onPostExecuteCommand()
    {
    }

    protected void onPreExecuteCommand()
    {
        sendStartMessage();
    }

    public void sendFailureMessage(Object obj)
    {
        TAResponse taresponse = new TAResponse();
        taresponse.setData(obj);
        setResponse(taresponse);
        sendMessage(3);
    }

    public void sendFinishMessage()
    {
        sendMessage(5);
    }

    protected void sendMessage(int i)
    {
        listener = getResponseListener();
        if (listener != null)
        {
            handler.sendEmptyMessage(i);
        }
    }

    public void sendRuntingMessage(Object obj)
    {
        TAResponse taresponse = new TAResponse();
        taresponse.setData(obj);
        setResponse(taresponse);
        sendMessage(2);
    }

    public void sendStartMessage()
    {
        sendMessage(1);
    }

    public void sendSuccessMessage(Object obj)
    {
        TAResponse taresponse = new TAResponse();
        taresponse.setData(obj);
        setResponse(taresponse);
        sendMessage(4);
    }

}
