.class public Lorg/jivesoftware/smack/sasl/SASLMechanism$AuthMechanism;
.super Lorg/jivesoftware/smack/packet/Packet;
.source "SASLMechanism.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/sasl/SASLMechanism;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AuthMechanism"
.end annotation


# instance fields
.field private final authenticationText:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field final synthetic this$0:Lorg/jivesoftware/smack/sasl/SASLMechanism;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/sasl/SASLMechanism;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "authenticationText"    # Ljava/lang/String;

    .prologue
    .line 198
    iput-object p1, p0, Lorg/jivesoftware/smack/sasl/SASLMechanism$AuthMechanism;->this$0:Lorg/jivesoftware/smack/sasl/SASLMechanism;

    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/Packet;-><init>()V

    .line 199
    if-nez p2, :cond_0

    .line 200
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "SASL mechanism name shouldn\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_0
    iput-object p2, p0, Lorg/jivesoftware/smack/sasl/SASLMechanism$AuthMechanism;->name:Ljava/lang/String;

    .line 203
    iput-object p3, p0, Lorg/jivesoftware/smack/sasl/SASLMechanism$AuthMechanism;->authenticationText:Ljava/lang/String;

    .line 204
    return-void
.end method


# virtual methods
.method public toXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .local v0, "stanza":Ljava/lang/StringBuilder;
    const-string v1, "<auth mechanism=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/sasl/SASLMechanism$AuthMechanism;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string v1, "\" xmlns=\"urn:ietf:params:xml:ns:xmpp-sasl\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget-object v1, p0, Lorg/jivesoftware/smack/sasl/SASLMechanism$AuthMechanism;->authenticationText:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lorg/jivesoftware/smack/sasl/SASLMechanism$AuthMechanism;->authenticationText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 212
    iget-object v1, p0, Lorg/jivesoftware/smack/sasl/SASLMechanism$AuthMechanism;->authenticationText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :cond_0
    const-string v1, "</auth>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
