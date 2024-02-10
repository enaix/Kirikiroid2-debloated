.class Lcom/loopj/android/http/BaseJsonHttpResponseHandler$2$2;
.super Ljava/lang/Object;
.source "BaseJsonHttpResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/android/http/BaseJsonHttpResponseHandler$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/loopj/android/http/BaseJsonHttpResponseHandler$2;


# direct methods
.method constructor <init>(Lcom/loopj/android/http/BaseJsonHttpResponseHandler$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/loopj/android/http/BaseJsonHttpResponseHandler$2;

    .prologue
    .line 125
    .local p0, "this":Lcom/loopj/android/http/BaseJsonHttpResponseHandler$2$2;, "Lcom/loopj/android/http/BaseJsonHttpResponseHandler$2$2;"
    iput-object p1, p0, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$2$2;->this$1:Lcom/loopj/android/http/BaseJsonHttpResponseHandler$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 128
    .local p0, "this":Lcom/loopj/android/http/BaseJsonHttpResponseHandler$2$2;, "Lcom/loopj/android/http/BaseJsonHttpResponseHandler$2$2;"
    iget-object v0, p0, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$2$2;->this$1:Lcom/loopj/android/http/BaseJsonHttpResponseHandler$2;

    iget-object v0, v0, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$2;->this$0:Lcom/loopj/android/http/BaseJsonHttpResponseHandler;

    iget-object v1, p0, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$2$2;->this$1:Lcom/loopj/android/http/BaseJsonHttpResponseHandler$2;

    iget v1, v1, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$2;->val$statusCode:I

    iget-object v2, p0, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$2$2;->this$1:Lcom/loopj/android/http/BaseJsonHttpResponseHandler$2;

    iget-object v2, v2, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$2;->val$headers:[Lorg/apache/http/Header;

    iget-object v3, p0, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$2$2;->this$1:Lcom/loopj/android/http/BaseJsonHttpResponseHandler$2;

    iget-object v3, v3, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$2;->val$throwable:Ljava/lang/Throwable;

    iget-object v4, p0, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$2$2;->this$1:Lcom/loopj/android/http/BaseJsonHttpResponseHandler$2;

    iget-object v4, v4, Lcom/loopj/android/http/BaseJsonHttpResponseHandler$2;->val$responseString:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/loopj/android/http/BaseJsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    return-void
.end method
