.class public Lcom/loopj/android/http/SerializableCookie;
.super Ljava/lang/Object;
.source "SerializableCookie.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x58765a8013aeb70cL


# instance fields
.field private transient clientCookie:Lorg/apache/http/impl/cookie/BasicClientCookie;

.field private final transient cookie:Lorg/apache/http/cookie/Cookie;


# direct methods
.method public constructor <init>(Lorg/apache/http/cookie/Cookie;)V
    .locals 0
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/loopj/android/http/SerializableCookie;->cookie:Lorg/apache/http/cookie/Cookie;

    .line 42
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 66
    .local v1, "value":Ljava/lang/String;
    new-instance v2, Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/loopj/android/http/SerializableCookie;->clientCookie:Lorg/apache/http/impl/cookie/BasicClientCookie;

    .line 67
    iget-object v3, p0, Lcom/loopj/android/http/SerializableCookie;->clientCookie:Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setComment(Ljava/lang/String;)V

    .line 68
    iget-object v3, p0, Lcom/loopj/android/http/SerializableCookie;->clientCookie:Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 69
    iget-object v3, p0, Lcom/loopj/android/http/SerializableCookie;->clientCookie:Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    invoke-virtual {v3, v2}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setExpiryDate(Ljava/util/Date;)V

    .line 70
    iget-object v3, p0, Lcom/loopj/android/http/SerializableCookie;->clientCookie:Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    .line 71
    iget-object v2, p0, Lcom/loopj/android/http/SerializableCookie;->clientCookie:Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setVersion(I)V

    .line 72
    iget-object v2, p0, Lcom/loopj/android/http/SerializableCookie;->clientCookie:Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setSecure(Z)V

    .line 73
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/loopj/android/http/SerializableCookie;->cookie:Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/loopj/android/http/SerializableCookie;->cookie:Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/loopj/android/http/SerializableCookie;->cookie:Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lcom/loopj/android/http/SerializableCookie;->cookie:Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/loopj/android/http/SerializableCookie;->cookie:Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/loopj/android/http/SerializableCookie;->cookie:Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lcom/loopj/android/http/SerializableCookie;->cookie:Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 60
    iget-object v0, p0, Lcom/loopj/android/http/SerializableCookie;->cookie:Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->isSecure()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 61
    return-void
.end method


# virtual methods
.method public getCookie()Lorg/apache/http/cookie/Cookie;
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/loopj/android/http/SerializableCookie;->cookie:Lorg/apache/http/cookie/Cookie;

    .line 46
    .local v0, "bestCookie":Lorg/apache/http/cookie/Cookie;
    iget-object v1, p0, Lcom/loopj/android/http/SerializableCookie;->clientCookie:Lorg/apache/http/impl/cookie/BasicClientCookie;

    if-eqz v1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/loopj/android/http/SerializableCookie;->clientCookie:Lorg/apache/http/impl/cookie/BasicClientCookie;

    .line 49
    :cond_0
    return-object v0
.end method
