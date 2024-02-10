.class public Lcom/loopj/android/http/RequestParams$StreamWrapper;
.super Ljava/lang/Object;
.source "RequestParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loopj/android/http/RequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamWrapper"
.end annotation


# instance fields
.field public final autoClose:Z

.field public final contentType:Ljava/lang/String;

.field public final inputStream:Ljava/io/InputStream;

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "autoClose"    # Z

    .prologue
    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 690
    iput-object p1, p0, Lcom/loopj/android/http/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    .line 691
    iput-object p2, p0, Lcom/loopj/android/http/RequestParams$StreamWrapper;->name:Ljava/lang/String;

    .line 692
    iput-object p3, p0, Lcom/loopj/android/http/RequestParams$StreamWrapper;->contentType:Ljava/lang/String;

    .line 693
    iput-boolean p4, p0, Lcom/loopj/android/http/RequestParams$StreamWrapper;->autoClose:Z

    .line 694
    return-void
.end method

.method static newInstance(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)Lcom/loopj/android/http/RequestParams$StreamWrapper;
    .locals 1
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "autoClose"    # Z

    .prologue
    .line 697
    new-instance v0, Lcom/loopj/android/http/RequestParams$StreamWrapper;

    if-nez p2, :cond_0

    const-string p2, "application/octet-stream"

    .end local p2    # "contentType":Ljava/lang/String;
    :cond_0
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/loopj/android/http/RequestParams$StreamWrapper;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method
