.class Lcom/loopj/android/http/JsonHttpResponseHandler$2$2;
.super Ljava/lang/Object;
.source "JsonHttpResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/android/http/JsonHttpResponseHandler$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$2;

.field final synthetic val$ex:Lorg/json/JSONException;


# direct methods
.method constructor <init>(Lcom/loopj/android/http/JsonHttpResponseHandler$2;Lorg/json/JSONException;)V
    .locals 0
    .param p1, "this$1"    # Lcom/loopj/android/http/JsonHttpResponseHandler$2;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$2;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$2;

    iput-object p2, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$2;->val$ex:Lorg/json/JSONException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 217
    iget-object v0, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$2;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$2;

    iget-object v1, v0, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->this$0:Lcom/loopj/android/http/JsonHttpResponseHandler;

    iget-object v0, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$2;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$2;

    iget v2, v0, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$statusCode:I

    iget-object v0, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$2;->this$1:Lcom/loopj/android/http/JsonHttpResponseHandler$2;

    iget-object v3, v0, Lcom/loopj/android/http/JsonHttpResponseHandler$2;->val$headers:[Lorg/apache/http/Header;

    iget-object v4, p0, Lcom/loopj/android/http/JsonHttpResponseHandler$2$2;->val$ex:Lorg/json/JSONException;

    const/4 v0, 0x0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    .line 218
    return-void
.end method
