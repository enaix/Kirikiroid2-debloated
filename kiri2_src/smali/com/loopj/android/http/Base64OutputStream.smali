.class public Lcom/loopj/android/http/Base64OutputStream;
.super Ljava/io/FilterOutputStream;
.source "Base64OutputStream.java"


# static fields
.field private static EMPTY:[B


# instance fields
.field private bpos:I

.field private buffer:[B

.field private final coder:Lcom/loopj/android/http/Base64$Coder;

.field private final flags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/loopj/android/http/Base64OutputStream;->EMPTY:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "flags"    # I

    .prologue
    .line 40
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/loopj/android/http/Base64OutputStream;-><init>(Ljava/io/OutputStream;IZ)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "flags"    # I
    .param p3, "encode"    # Z

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 27
    iput-object v1, p0, Lcom/loopj/android/http/Base64OutputStream;->buffer:[B

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/loopj/android/http/Base64OutputStream;->bpos:I

    .line 53
    iput p2, p0, Lcom/loopj/android/http/Base64OutputStream;->flags:I

    .line 54
    if-eqz p3, :cond_0

    .line 55
    new-instance v0, Lcom/loopj/android/http/Base64$Encoder;

    invoke-direct {v0, p2, v1}, Lcom/loopj/android/http/Base64$Encoder;-><init>(I[B)V

    iput-object v0, p0, Lcom/loopj/android/http/Base64OutputStream;->coder:Lcom/loopj/android/http/Base64$Coder;

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    new-instance v0, Lcom/loopj/android/http/Base64$Decoder;

    invoke-direct {v0, p2, v1}, Lcom/loopj/android/http/Base64$Decoder;-><init>(I[B)V

    iput-object v0, p0, Lcom/loopj/android/http/Base64OutputStream;->coder:Lcom/loopj/android/http/Base64$Coder;

    goto :goto_0
.end method

.method private embiggen([BI)[B
    .locals 1
    .param p1, "b"    # [B
    .param p2, "len"    # I

    .prologue
    .line 142
    if-eqz p1, :cond_0

    array-length v0, p1

    if-ge v0, p2, :cond_1

    .line 143
    :cond_0
    new-array p1, p2, [B

    .line 145
    .end local p1    # "b":[B
    :cond_1
    return-object p1
.end method

.method private flushBuffer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 84
    iget v0, p0, Lcom/loopj/android/http/Base64OutputStream;->bpos:I

    if-lez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/loopj/android/http/Base64OutputStream;->buffer:[B

    iget v1, p0, Lcom/loopj/android/http/Base64OutputStream;->bpos:I

    invoke-direct {p0, v0, v2, v1, v2}, Lcom/loopj/android/http/Base64OutputStream;->internalWrite([BIIZ)V

    .line 86
    iput v2, p0, Lcom/loopj/android/http/Base64OutputStream;->bpos:I

    .line 88
    :cond_0
    return-void
.end method

.method private internalWrite([BIIZ)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "finish"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/loopj/android/http/Base64OutputStream;->coder:Lcom/loopj/android/http/Base64$Coder;

    iget-object v1, p0, Lcom/loopj/android/http/Base64OutputStream;->coder:Lcom/loopj/android/http/Base64$Coder;

    iget-object v1, v1, Lcom/loopj/android/http/Base64$Coder;->output:[B

    iget-object v2, p0, Lcom/loopj/android/http/Base64OutputStream;->coder:Lcom/loopj/android/http/Base64$Coder;

    invoke-virtual {v2, p3}, Lcom/loopj/android/http/Base64$Coder;->maxOutputSize(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/loopj/android/http/Base64OutputStream;->embiggen([BI)[B

    move-result-object v1

    iput-object v1, v0, Lcom/loopj/android/http/Base64$Coder;->output:[B

    .line 132
    iget-object v0, p0, Lcom/loopj/android/http/Base64OutputStream;->coder:Lcom/loopj/android/http/Base64$Coder;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/loopj/android/http/Base64$Coder;->process([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcom/loopj/android/http/Base64DataException;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Lcom/loopj/android/http/Base64DataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/loopj/android/http/Base64OutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/loopj/android/http/Base64OutputStream;->coder:Lcom/loopj/android/http/Base64$Coder;

    iget-object v1, v1, Lcom/loopj/android/http/Base64$Coder;->output:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/loopj/android/http/Base64OutputStream;->coder:Lcom/loopj/android/http/Base64$Coder;

    iget v3, v3, Lcom/loopj/android/http/Base64$Coder;->op:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 136
    return-void
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    const/4 v1, 0x0

    .line 101
    .local v1, "thrown":Ljava/io/IOException;
    :try_start_0
    invoke-direct {p0}, Lcom/loopj/android/http/Base64OutputStream;->flushBuffer()V

    .line 102
    sget-object v2, Lcom/loopj/android/http/Base64OutputStream;->EMPTY:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/loopj/android/http/Base64OutputStream;->internalWrite([BIIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    :try_start_1
    iget v2, p0, Lcom/loopj/android/http/Base64OutputStream;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_1

    .line 109
    iget-object v2, p0, Lcom/loopj/android/http/Base64OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 119
    :cond_0
    :goto_1
    if-eqz v1, :cond_2

    .line 120
    throw v1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/io/IOException;
    move-object v1, v0

    goto :goto_0

    .line 111
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/loopj/android/http/Base64OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 113
    :catch_1
    move-exception v0

    .line 114
    .restart local v0    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_0

    .line 115
    move-object v1, v0

    goto :goto_1

    .line 122
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 68
    iget-object v0, p0, Lcom/loopj/android/http/Base64OutputStream;->buffer:[B

    if-nez v0, :cond_0

    .line 69
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/loopj/android/http/Base64OutputStream;->buffer:[B

    .line 71
    :cond_0
    iget v0, p0, Lcom/loopj/android/http/Base64OutputStream;->bpos:I

    iget-object v1, p0, Lcom/loopj/android/http/Base64OutputStream;->buffer:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 73
    iget-object v0, p0, Lcom/loopj/android/http/Base64OutputStream;->buffer:[B

    iget v1, p0, Lcom/loopj/android/http/Base64OutputStream;->bpos:I

    invoke-direct {p0, v0, v2, v1, v2}, Lcom/loopj/android/http/Base64OutputStream;->internalWrite([BIIZ)V

    .line 74
    iput v2, p0, Lcom/loopj/android/http/Base64OutputStream;->bpos:I

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/loopj/android/http/Base64OutputStream;->buffer:[B

    iget v1, p0, Lcom/loopj/android/http/Base64OutputStream;->bpos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/loopj/android/http/Base64OutputStream;->bpos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 77
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    if-gtz p3, :cond_0

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/loopj/android/http/Base64OutputStream;->flushBuffer()V

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/loopj/android/http/Base64OutputStream;->internalWrite([BIIZ)V

    goto :goto_0
.end method
