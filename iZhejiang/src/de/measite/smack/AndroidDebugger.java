// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package de.measite.smack;

import android.util.Log;
import java.io.Reader;
import java.io.Writer;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.jivesoftware.smack.Connection;
import org.jivesoftware.smack.ConnectionListener;
import org.jivesoftware.smack.PacketListener;
import org.jivesoftware.smack.debugger.SmackDebugger;
import org.jivesoftware.smack.packet.Packet;
import org.jivesoftware.smack.util.ObservableReader;
import org.jivesoftware.smack.util.ObservableWriter;
import org.jivesoftware.smack.util.ReaderListener;
import org.jivesoftware.smack.util.StringUtils;
import org.jivesoftware.smack.util.WriterListener;

public class AndroidDebugger
    implements SmackDebugger
{

    public static boolean printInterpreted = false;
    private ConnectionListener connListener;
    private Connection connection;
    private SimpleDateFormat dateFormatter;
    private PacketListener listener;
    private Reader reader;
    private ReaderListener readerListener;
    private Writer writer;
    private WriterListener writerListener;

    public AndroidDebugger(Connection connection1, Writer writer1, Reader reader1)
    {
        dateFormatter = new SimpleDateFormat("hh:mm:ss aaa");
        connection = null;
        listener = null;
        connListener = null;
        connection = connection1;
        writer = writer1;
        reader = reader1;
        createDebug();
    }

    private void createDebug()
    {
        ObservableReader observablereader = new ObservableReader(reader);
        readerListener = new ReaderListener() {

            final AndroidDebugger this$0;

            public void read(String s)
            {
                Log.d("SMACK", (new StringBuilder(String.valueOf(dateFormatter.format(new Date())))).append(" RCV  (").append(connection.hashCode()).append("): ").append(s).toString());
            }

            
            {
                this$0 = AndroidDebugger.this;
                super();
            }
        };
        observablereader.addReaderListener(readerListener);
        ObservableWriter observablewriter = new ObservableWriter(writer);
        writerListener = new WriterListener() {

            final AndroidDebugger this$0;

            public void write(String s)
            {
                Log.d("SMACK", (new StringBuilder(String.valueOf(dateFormatter.format(new Date())))).append(" SENT (").append(connection.hashCode()).append("): ").append(s).toString());
            }

            
            {
                this$0 = AndroidDebugger.this;
                super();
            }
        };
        observablewriter.addWriterListener(writerListener);
        reader = observablereader;
        writer = observablewriter;
        listener = new PacketListener() {

            final AndroidDebugger this$0;

            public void processPacket(Packet packet)
            {
                if (AndroidDebugger.printInterpreted)
                {
                    Log.d("SMACK", (new StringBuilder(String.valueOf(dateFormatter.format(new Date())))).append(" RCV PKT (").append(connection.hashCode()).append("): ").append(packet.toXML()).toString());
                }
            }

            
            {
                this$0 = AndroidDebugger.this;
                super();
            }
        };
        connListener = new ConnectionListener() {

            final AndroidDebugger this$0;

            public void connectionClosed()
            {
                Log.d("SMACK", (new StringBuilder(String.valueOf(dateFormatter.format(new Date())))).append(" Connection closed (").append(connection.hashCode()).append(")").toString());
            }

            public void connectionClosedOnError(Exception exception)
            {
                Log.d("SMACK", (new StringBuilder(String.valueOf(dateFormatter.format(new Date())))).append(" Connection closed due to an exception (").append(connection.hashCode()).append(")").toString());
                exception.printStackTrace();
            }

            public void reconnectingIn(int i)
            {
                Log.d("SMACK", (new StringBuilder(String.valueOf(dateFormatter.format(new Date())))).append(" Connection (").append(connection.hashCode()).append(") will reconnect in ").append(i).toString());
            }

            public void reconnectionFailed(Exception exception)
            {
                Log.d("SMACK", (new StringBuilder(String.valueOf(dateFormatter.format(new Date())))).append(" Reconnection failed due to an exception (").append(connection.hashCode()).append(")").toString());
                exception.printStackTrace();
            }

            public void reconnectionSuccessful()
            {
                Log.d("SMACK", (new StringBuilder(String.valueOf(dateFormatter.format(new Date())))).append(" Connection reconnected (").append(connection.hashCode()).append(")").toString());
            }

            
            {
                this$0 = AndroidDebugger.this;
                super();
            }
        };
    }

    public Reader getReader()
    {
        return reader;
    }

    public PacketListener getReaderListener()
    {
        return listener;
    }

    public Writer getWriter()
    {
        return writer;
    }

    public PacketListener getWriterListener()
    {
        return null;
    }

    public Reader newConnectionReader(Reader reader1)
    {
        ((ObservableReader)reader).removeReaderListener(readerListener);
        reader1 = new ObservableReader(reader1);
        reader1.addReaderListener(readerListener);
        reader = reader1;
        return reader;
    }

    public Writer newConnectionWriter(Writer writer1)
    {
        ((ObservableWriter)writer).removeWriterListener(writerListener);
        writer1 = new ObservableWriter(writer1);
        writer1.addWriterListener(writerListener);
        writer = writer1;
        return writer;
    }

    public void userHasLogged(String s)
    {
        boolean flag = "".equals(StringUtils.parseName(s));
        StringBuilder stringbuilder = (new StringBuilder("User logged (")).append(connection.hashCode()).append("): ");
        String s1;
        if (flag)
        {
            s1 = "";
        } else
        {
            s1 = StringUtils.parseBareAddress(s);
        }
        Log.d("SMACK", (new StringBuilder(String.valueOf(stringbuilder.append(s1).append("@").append(connection.getServiceName()).append(":").append(connection.getPort()).toString()))).append("/").append(StringUtils.parseResource(s)).toString());
        connection.addConnectionListener(connListener);
    }



}
