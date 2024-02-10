.class public Lorg/cocos2dx/lib/Cocos2dxHttpURLConnection;
.super Ljava/lang/Object;
.source "Cocos2dxHttpURLConnection.java"


# static fields
.field private static final POST_METHOD:Ljava/lang/String; = "POST"

.field private static final PUT_METHOD:Ljava/lang/String; = "PUT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addRequestHeader(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "urlConnection"    # Ljava/net/HttpURLConnection;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public static combinCookies(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p1, "hostDomain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 335
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .local v9, "sbCookies":Ljava/lang/StringBuilder;
    move-object/from16 v1, p1

    .line 337
    .local v1, "domain":Ljava/lang/String;
    const-string v12, "FALSE"

    .line 338
    .local v12, "tailmatch":Ljava/lang/String;
    const-string v8, "/"

    .line 339
    .local v8, "path":Ljava/lang/String;
    const-string v10, "FALSE"

    .line 340
    .local v10, "secure":Ljava/lang/String;
    const/4 v5, 0x0

    .line 341
    .local v5, "key":Ljava/lang/String;
    const/4 v13, 0x0

    .line 342
    .local v13, "value":Ljava/lang/String;
    const/4 v2, 0x0

    .line 343
    .local v2, "expires":Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_0

    .line 387
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14

    .line 343
    :cond_0
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 344
    .local v11, "str":Ljava/lang/String;
    const-string v14, ";"

    invoke-virtual {v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 345
    .local v7, "parts":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v16, v0

    const/4 v14, 0x0

    :goto_1
    move/from16 v0, v16

    if-lt v14, v0, :cond_2

    .line 367
    if-nez v1, :cond_1

    .line 368
    const-string v1, "none"

    .line 371
    :cond_1
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    const/16 v14, 0x9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    const/16 v14, 0x9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    const/16 v14, 0x9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    const/16 v14, 0x9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    const-string v14, "\t"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    const-string v14, "\t"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    const/16 v14, 0xa

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 345
    :cond_2
    aget-object v6, v7, v14

    .line 346
    .local v6, "part":Ljava/lang/String;
    const-string v17, "="

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 347
    .local v3, "firstIndex":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_4

    .line 345
    :cond_3
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 350
    :cond_4
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v4, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v6, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v4, v17

    const/16 v17, 0x1

    add-int/lit8 v18, v3, 0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v4, v17

    .line 351
    .local v4, "item":[Ljava/lang/String;
    const-string v17, "expires"

    const/16 v18, 0x0

    aget-object v18, v4, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 352
    const/16 v17, 0x1

    aget-object v17, v4, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/cocos2dx/lib/Cocos2dxHttpURLConnection;->str2Seconds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 353
    goto :goto_2

    :cond_5
    const-string v17, "path"

    const/16 v18, 0x0

    aget-object v18, v4, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 354
    const/16 v17, 0x1

    aget-object v8, v4, v17

    .line 355
    goto :goto_2

    :cond_6
    const-string v17, "secure"

    const/16 v18, 0x0

    aget-object v18, v4, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 356
    const/16 v17, 0x1

    aget-object v10, v4, v17

    .line 357
    goto :goto_2

    :cond_7
    const-string v17, "domain"

    const/16 v18, 0x0

    aget-object v18, v4, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 358
    const/16 v17, 0x1

    aget-object v1, v4, v17

    .line 359
    goto :goto_2

    :cond_8
    const-string v17, "version"

    const/16 v18, 0x0

    aget-object v18, v4, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    const-string v17, "max-age"

    const/16 v18, 0x0

    aget-object v18, v4, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 362
    const/16 v17, 0x0

    aget-object v5, v4, v17

    .line 363
    const/16 v17, 0x1

    aget-object v13, v4, v17

    goto/16 :goto_2
.end method

.method static connect(Ljava/net/HttpURLConnection;)I
    .locals 4
    .param p0, "http"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 144
    const/4 v1, 0x0

    .line 147
    .local v1, "suc":I
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return v1

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "cocos2d-x debug info"

    const-string v3, "come in connect"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v2, "cocos2d-x debug info"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static createHttpURLConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 5
    .param p0, "linkURL"    # Ljava/lang/String;

    .prologue
    .line 64
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 65
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 67
    .local v2, "urlConnection":Ljava/net/HttpURLConnection;
    const-string v3, "Accept-Encoding"

    const-string v4, "identity"

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v1    # "url":Ljava/net/URL;
    .end local v2    # "urlConnection":Ljava/net/HttpURLConnection;
    :goto_0
    return-object v2

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "URLConnection exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static disconnect(Ljava/net/HttpURLConnection;)V
    .locals 0
    .param p0, "http"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 158
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 159
    return-void
.end method

.method static getResponseCode(Ljava/net/HttpURLConnection;)I
    .locals 4
    .param p0, "http"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 294
    const/4 v0, 0x0

    .line 296
    .local v0, "code":I
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 300
    :goto_0
    return v0

    .line 297
    :catch_0
    move-exception v1

    .line 298
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "URLConnection exception"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static getResponseContent(Ljava/net/HttpURLConnection;)[B
    .locals 10
    .param p0, "http"    # Ljava/net/HttpURLConnection;

    .prologue
    const/4 v7, 0x0

    .line 258
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 259
    .local v4, "in":Ljava/io/InputStream;
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, "contentEncoding":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 261
    const-string v8, "gzip"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 262
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    .end local v4    # "in":Ljava/io/InputStream;
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 276
    .end local v2    # "contentEncoding":Ljava/lang/String;
    .restart local v4    # "in":Ljava/io/InputStream;
    :cond_0
    :goto_0
    const/16 v8, 0x400

    :try_start_1
    new-array v0, v8, [B

    .line 277
    .local v0, "buffer":[B
    const/4 v6, 0x0

    .line 278
    .local v6, "size":I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 279
    .local v1, "bytestream":Ljava/io/ByteArrayOutputStream;
    :goto_1
    const/4 v8, 0x0

    const/16 v9, 0x400

    invoke-virtual {v4, v0, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v8, -0x1

    if-ne v6, v8, :cond_2

    .line 283
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 284
    .local v5, "retbuffer":[B
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 290
    .end local v0    # "buffer":[B
    .end local v1    # "bytestream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "retbuffer":[B
    .end local v6    # "size":I
    :goto_2
    return-object v5

    .line 264
    .restart local v2    # "contentEncoding":Ljava/lang/String;
    .restart local v4    # "in":Ljava/io/InputStream;
    :cond_1
    :try_start_2
    const-string v8, "deflate"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 265
    new-instance v4, Ljava/util/zip/InflaterInputStream;

    .end local v4    # "in":Ljava/io/InputStream;
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .restart local v4    # "in":Ljava/io/InputStream;
    goto :goto_0

    .line 268
    .end local v2    # "contentEncoding":Ljava/lang/String;
    .end local v4    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 269
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    .restart local v4    # "in":Ljava/io/InputStream;
    goto :goto_0

    .line 270
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v3

    .line 271
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "URLConnection exception"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v7

    .line 272
    goto :goto_2

    .line 281
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytestream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v6    # "size":I
    :cond_2
    const/4 v8, 0x0

    :try_start_3
    invoke-virtual {v1, v0, v8, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 286
    .end local v0    # "buffer":[B
    .end local v1    # "bytestream":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "size":I
    :catch_2
    move-exception v3

    .line 287
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v8, "URLConnection exception"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v7

    .line 290
    goto :goto_2
.end method

.method static getResponseHeaderByIdx(Ljava/net/HttpURLConnection;I)Ljava/lang/String;
    .locals 8
    .param p0, "http"    # Ljava/net/HttpURLConnection;
    .param p1, "idx"    # I

    .prologue
    .line 195
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    .line 196
    .local v3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez v3, :cond_1

    .line 197
    const/4 v2, 0x0

    .line 216
    :cond_0
    :goto_0
    return-object v2

    .line 200
    :cond_1
    const/4 v2, 0x0

    .line 202
    .local v2, "header":Ljava/lang/String;
    const/4 v0, 0x0

    .line 203
    .local v0, "counter":I
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 204
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-ne v0, p1, :cond_3

    .line 205
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 206
    .local v4, "key":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 207
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const-string v7, ","

    invoke-static {v5, v7}, Lorg/cocos2dx/lib/Cocos2dxHttpURLConnection;->listToString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 208
    goto :goto_0

    .line 209
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const-string v7, ","

    invoke-static {v5, v7}, Lorg/cocos2dx/lib/Cocos2dxHttpURLConnection;->listToString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 211
    goto :goto_0

    .line 213
    .end local v4    # "key":Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static getResponseHeaderByKey(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "http"    # Ljava/net/HttpURLConnection;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 220
    if-nez p1, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-object v1

    .line 224
    :cond_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    .line 225
    .local v2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v2, :cond_0

    .line 229
    const/4 v1, 0x0

    .line 231
    .local v1, "header":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 232
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 233
    const-string v3, "set-cookie"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 234
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/cocos2dx/lib/Cocos2dxHttpURLConnection;->combinCookies(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    goto :goto_0

    .line 236
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const-string v4, ","

    invoke-static {v3, v4}, Lorg/cocos2dx/lib/Cocos2dxHttpURLConnection;->listToString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 238
    goto :goto_0
.end method

.method static getResponseHeaderByKeyInt(Ljava/net/HttpURLConnection;Ljava/lang/String;)I
    .locals 2
    .param p0, "http"    # Ljava/net/HttpURLConnection;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 249
    const/4 v1, 0x0

    .line 251
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method static getResponseHeaders(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 8
    .param p0, "http"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 175
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    .line 176
    .local v2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez v2, :cond_1

    .line 177
    const/4 v1, 0x0

    .line 191
    :cond_0
    return-object v1

    .line 180
    :cond_1
    const-string v1, ""

    .line 182
    .local v1, "header":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 183
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 184
    .local v3, "key":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 185
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const-string v7, ","

    invoke-static {v4, v7}, Lorg/cocos2dx/lib/Cocos2dxHttpURLConnection;->listToString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    goto :goto_0

    .line 187
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const-string v7, ","

    invoke-static {v4, v7}, Lorg/cocos2dx/lib/Cocos2dxHttpURLConnection;->listToString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static getResponseMessage(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 3
    .param p0, "http"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 306
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 312
    .local v1, "msg":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 307
    .end local v1    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    .line 309
    .restart local v1    # "msg":Ljava/lang/String;
    const-string v2, "URLConnection exception"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static listToString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "strInterVal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 316
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 317
    const/4 v3, 0x0

    .line 331
    :goto_0
    return-object v3

    .line 319
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 321
    .local v0, "flag":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 331
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 321
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 322
    .local v2, "str":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 323
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    :cond_2
    if-nez v2, :cond_3

    .line 326
    const-string v2, ""

    .line 328
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static sendRequest(Ljava/net/HttpURLConnection;[B)V
    .locals 4
    .param p0, "http"    # Ljava/net/HttpURLConnection;
    .param p1, "byteArray"    # [B

    .prologue
    .line 163
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 164
    .local v1, "out":Ljava/io/OutputStream;
    if-eqz p1, :cond_0

    .line 165
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 166
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 168
    :cond_0
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v1    # "out":Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "URLConnection exception"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static setReadAndConnectTimeout(Ljava/net/HttpURLConnection;II)V
    .locals 0
    .param p0, "urlConnection"    # Ljava/net/HttpURLConnection;
    .param p1, "readMiliseconds"    # I
    .param p2, "connectMiliseconds"    # I

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 79
    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 80
    return-void
.end method

.method static setRequestMethod(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 3
    .param p0, "urlConnection"    # Ljava/net/HttpURLConnection;
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 84
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 85
    const-string v1, "POST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PUT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_1
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/net/ProtocolException;
    const-string v1, "URLConnection exception"

    invoke-virtual {v0}, Ljava/net/ProtocolException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static setVerifySSL(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 17
    .param p0, "urlConnection"    # Ljava/net/HttpURLConnection;
    .param p1, "sslFilename"    # Ljava/lang/String;

    .prologue
    .line 95
    move-object/from16 v0, p0

    instance-of v14, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-nez v14, :cond_0

    .line 136
    :goto_0
    return-void

    :cond_0
    move-object/from16 v9, p0

    .line 99
    check-cast v9, Ljavax/net/ssl/HttpsURLConnection;

    .line 102
    .local v9, "httpsURLConnection":Ljavax/net/ssl/HttpsURLConnection;
    const/4 v4, 0x0

    .line 103
    .local v4, "caInput":Ljava/io/InputStream;
    :try_start_0
    const-string v14, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 104
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v14, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v4    # "caInput":Ljava/io/InputStream;
    .local v5, "caInput":Ljava/io/InputStream;
    move-object v4, v5

    .line 111
    .end local v5    # "caInput":Ljava/io/InputStream;
    .restart local v4    # "caInput":Ljava/io/InputStream;
    :goto_1
    const-string v14, "X.509"

    invoke-static {v14}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v6

    .line 113
    .local v6, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v6, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    .line 114
    .local v3, "ca":Ljava/security/cert/Certificate;
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v14, "ca="

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 118
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v11

    .line 119
    .local v11, "keyStoreType":Ljava/lang/String;
    invoke-static {v11}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v10

    .line 120
    .local v10, "keyStore":Ljava/security/KeyStore;
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 121
    const-string v14, "ca"

    invoke-virtual {v10, v14, v3}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 124
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v13

    .line 125
    .local v13, "tmfAlgorithm":Ljava/lang/String;
    invoke-static {v13}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v12

    .line 126
    .local v12, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v12, v10}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 129
    const-string v14, "TLS"

    invoke-static {v14}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v7

    .line 130
    .local v7, "context":Ljavax/net/ssl/SSLContext;
    const/4 v14, 0x0

    invoke-virtual {v12}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v7, v14, v15, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 132
    invoke-virtual {v7}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    .end local v3    # "ca":Ljava/security/cert/Certificate;
    .end local v6    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v7    # "context":Ljavax/net/ssl/SSLContext;
    .end local v10    # "keyStore":Ljava/security/KeyStore;
    .end local v11    # "keyStoreType":Ljava/lang/String;
    .end local v12    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v13    # "tmfAlgorithm":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 134
    .local v8, "e":Ljava/lang/Exception;
    const-string v14, "URLConnection exception"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 106
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v1, "assets/"

    .line 107
    .local v1, "assetString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "assetsfilenameString":Ljava/lang/String;
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v5, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v4    # "caInput":Ljava/io/InputStream;
    .restart local v5    # "caInput":Ljava/io/InputStream;
    move-object v4, v5

    .end local v5    # "caInput":Ljava/io/InputStream;
    .restart local v4    # "caInput":Ljava/io/InputStream;
    goto/16 :goto_1
.end method

.method private static str2Seconds(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "strTime"    # Ljava/lang/String;

    .prologue
    .line 391
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 392
    .local v0, "c":Ljava/util/Calendar;
    const-wide/16 v2, 0x0

    .line 395
    .local v2, "millisSecond":J
    :try_start_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "EEE, dd-MMM-yy hh:mm:ss zzz"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v4, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 396
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 397
    :catch_0
    move-exception v1

    .line 398
    .local v1, "e":Ljava/text/ParseException;
    const-string v4, "URLConnection exception"

    invoke-virtual {v1}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
