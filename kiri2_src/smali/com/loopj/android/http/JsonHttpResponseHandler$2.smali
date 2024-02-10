.class Lcom/loopj/android/http/JsonHttpResponseHandler$2;
.super Ljava/lang/Object;
.source "JsonHttpResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopj/android/http/JsonHttpResponseHandler;

.field final synthetic val$headers:[Lorg/apache/http/Header;

.field final synthetic val$responseBytes:[B

.field final synthetic val$statusCode:I

.field final synthetic val$throwable:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/loopj/android/http/JsonHttpResponseHandler;[BI[Lorg/apache/http/Header;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/loopj/android/http/JsonHttpResponseHandler;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->this$0:Lcom/loopj/android/http/JsonHttpResponseHandler;

    iput-object p2, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$responseBytes:[B

    iput p3, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$statusCode:I

    iput-object p4, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$headers:[Lorg/apache/http/Header;

    iput-object p5, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$throwable:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 194
    :try_start_0
    iget-object v2, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->this$0:Lcom/loopj/android/http/JsonHttpResponseHandler;

    iget-object v3, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$responseBytes:[B

    invoke-virtual {v2, v3}, Lcom/loopj/android/http/JsonHttpResponseHandler;->parseResponse([B)Ljava/lang/Object;

    move-result-object v1

    .line 195
    .local v1, "jsonResponse":Ljava/lang/Object;
    iget-object v2, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->this$0:Lcom/loopj/android/http/JsonHttpResponseHandler;

    new-instance v3, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;

    invoke-direct {v3, p0, v1}, Lcom/loopj/android/http/JsonHttpResponseHandler$2$1;-><init>(Lcom/loopj/android/http/JsonHttpResponseHandler$2;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/loopj/android/http/JsonHttpResponseHandler;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .end local v1    # "jsonResponse":Ljava/lang/Object;
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "ex":Lorg/json/JSONException;
    iget-object v2, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->this$0:Lcom/loopj/android/http/JsonHttpResponseHandler;

    new-instance v3, Lcom/loopj/android/http/JsonHttpResponseHandler$2$2;

    invoke-direct {v3, p0, v0}, Lcom/loopj/android/http/JsonHttpResponseHandler$2$2;-><init>(Lcom/loopj/android/http/JsonHttpResponseHandler$2;Lorg/json/JSONException;)V

    invoke-virtual {v2, v3}, Lcom/loopj/android/http/JsonHttpResponseHandler;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
