.class public Lorg/apache/http/protocol/UriPatternMatcher;
.super Ljava/lang/Object;
.source "UriPatternMatcher.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "requestURI"    # Ljava/lang/String;

    .prologue
    .line 40
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected matchUriRequestPattern(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "requestUri"    # Ljava/lang/String;

    .prologue
    .line 41
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public register(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "handler"    # Ljava/lang/Object;

    .prologue
    .line 37
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHandlers(Ljava/util/Map;)V
    .locals 2
    .param p1, "map"    # Ljava/util/Map;

    .prologue
    .line 39
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregister(Ljava/lang/String;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 38
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
