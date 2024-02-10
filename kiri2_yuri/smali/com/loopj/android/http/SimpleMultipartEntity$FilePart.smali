.class Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;
.super Ljava/lang/Object;
.source "SimpleMultipartEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loopj/android/http/SimpleMultipartEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilePart"
.end annotation


# instance fields
.field public file:Ljava/io/File;

.field public header:[B

.field final synthetic this$0:Lcom/loopj/android/http/SimpleMultipartEntity;


# direct methods
.method public constructor <init>(Lcom/loopj/android/http/SimpleMultipartEntity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "type"    # Ljava/lang/String;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->this$0:Lcom/loopj/android/http/SimpleMultipartEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p4}, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->createHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->header:[B

    .line 184
    iput-object p3, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->file:Ljava/io/File;

    .line 185
    return-void
.end method

.method public constructor <init>(Lcom/loopj/android/http/SimpleMultipartEntity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "customFileName"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->this$0:Lcom/loopj/android/http/SimpleMultipartEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p5

    .end local p5    # "customFileName":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p2, p5, p4}, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->createHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->header:[B

    .line 179
    iput-object p3, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->file:Ljava/io/File;

    .line 180
    return-void
.end method

.method private createHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 188
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 190
    .local v1, "headerStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->this$0:Lcom/loopj/android/http/SimpleMultipartEntity;

    invoke-static {v2}, Lcom/loopj/android/http/SimpleMultipartEntity;->access$000(Lcom/loopj/android/http/SimpleMultipartEntity;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 193
    iget-object v2, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->this$0:Lcom/loopj/android/http/SimpleMultipartEntity;

    invoke-static {v2, p1, p2}, Lcom/loopj/android/http/SimpleMultipartEntity;->access$100(Lcom/loopj/android/http/SimpleMultipartEntity;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 194
    iget-object v2, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->this$0:Lcom/loopj/android/http/SimpleMultipartEntity;

    invoke-static {v2, p3}, Lcom/loopj/android/http/SimpleMultipartEntity;->access$200(Lcom/loopj/android/http/SimpleMultipartEntity;Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 195
    invoke-static {}, Lcom/loopj/android/http/SimpleMultipartEntity;->access$300()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 196
    invoke-static {}, Lcom/loopj/android/http/SimpleMultipartEntity;->access$400()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 197
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v3, "SimpleMultipartEntity"

    const-string v4, "createHeader ByteArrayOutputStream exception"

    invoke-interface {v2, v3, v4, v0}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public getTotalLength()J
    .locals 6

    .prologue
    .line 205
    iget-object v2, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {}, Lcom/loopj/android/http/SimpleMultipartEntity;->access$400()[B

    move-result-object v4

    array-length v4, v4

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 206
    .local v0, "streamLength":J
    iget-object v2, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->header:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    iget-object v3, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->header:[B

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 211
    iget-object v3, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->this$0:Lcom/loopj/android/http/SimpleMultipartEntity;

    iget-object v4, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->header:[B

    array-length v4, v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Lcom/loopj/android/http/SimpleMultipartEntity;->access$500(Lcom/loopj/android/http/SimpleMultipartEntity;J)V

    .line 213
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->file:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 214
    .local v1, "inputStream":Ljava/io/FileInputStream;
    const/16 v3, 0x1000

    new-array v2, v3, [B

    .line 216
    .local v2, "tmp":[B
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    .local v0, "bytesRead":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 217
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 218
    iget-object v3, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->this$0:Lcom/loopj/android/http/SimpleMultipartEntity;

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/loopj/android/http/SimpleMultipartEntity;->access$500(Lcom/loopj/android/http/SimpleMultipartEntity;J)V

    goto :goto_0

    .line 220
    :cond_0
    invoke-static {}, Lcom/loopj/android/http/SimpleMultipartEntity;->access$400()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 221
    iget-object v3, p0, Lcom/loopj/android/http/SimpleMultipartEntity$FilePart;->this$0:Lcom/loopj/android/http/SimpleMultipartEntity;

    invoke-static {}, Lcom/loopj/android/http/SimpleMultipartEntity;->access$400()[B

    move-result-object v4

    array-length v4, v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Lcom/loopj/android/http/SimpleMultipartEntity;->access$500(Lcom/loopj/android/http/SimpleMultipartEntity;J)V

    .line 222
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 223
    invoke-static {v1}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 224
    return-void
.end method
