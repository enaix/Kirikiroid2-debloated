.class public final Lorg/cocos2dx/lib/Cocos2dxBitmap;
.super Ljava/lang/Object;
.source "Cocos2dxBitmap.java"


# static fields
.field private static final HORIZONTAL_ALIGN_CENTER:I = 0x3

.field private static final HORIZONTAL_ALIGN_LEFT:I = 0x1

.field private static final HORIZONTAL_ALIGN_RIGHT:I = 0x2

.field private static final VERTICAL_ALIGN_BOTTOM:I = 0x2

.field private static final VERTICAL_ALIGN_CENTER:I = 0x3

.field private static final VERTICAL_ALIGN_TOP:I = 0x1

.field private static sContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTextBitmapShadowStroke([BLjava/lang/String;IIIIIIIIZFFFFZIIIIF)Z
    .locals 22
    .param p0, "bytes"    # [B
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "fontSize"    # I
    .param p3, "fontTintR"    # I
    .param p4, "fontTintG"    # I
    .param p5, "fontTintB"    # I
    .param p6, "fontTintA"    # I
    .param p7, "alignment"    # I
    .param p8, "width"    # I
    .param p9, "height"    # I
    .param p10, "shadow"    # Z
    .param p11, "shadowDX"    # F
    .param p12, "shadowDY"    # F
    .param p13, "shadowBlur"    # F
    .param p14, "shadowOpacity"    # F
    .param p15, "stroke"    # Z
    .param p16, "strokeR"    # I
    .param p17, "strokeG"    # I
    .param p18, "strokeB"    # I
    .param p19, "strokeA"    # I
    .param p20, "strokeSize"    # F

    .prologue
    .line 85
    if-eqz p0, :cond_0

    move-object/from16 v0, p0

    array-length v9, v0

    if-nez v9, :cond_1

    .line 86
    :cond_0
    const/4 v9, 0x0

    .line 163
    :goto_0
    return v9

    .line 88
    :cond_1
    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    .line 91
    .local v5, "string":Ljava/lang/String;
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 92
    .local v8, "hAlignment":Landroid/text/Layout$Alignment;
    and-int/lit8 v16, p7, 0xf

    .line 93
    .local v16, "horizontalAlignment":I
    packed-switch v16, :pswitch_data_0

    .line 106
    :goto_1
    :pswitch_0
    invoke-static/range {p1 .. p2}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->newPaint(Ljava/lang/String;I)Landroid/text/TextPaint;

    move-result-object v6

    .line 107
    .local v6, "paint":Landroid/text/TextPaint;
    if-eqz p15, :cond_2

    .line 108
    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 109
    move/from16 v0, p20

    invoke-virtual {v6, v0}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 112
    :cond_2
    move/from16 v7, p8

    .line 113
    .local v7, "maxWidth":I
    if-gtz v7, :cond_3

    .line 114
    invoke-static {v5, v6}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v9

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v7, v10

    .line 116
    :cond_3
    new-instance v4, Landroid/text/StaticLayout;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 117
    .local v4, "staticLayout":Landroid/text/StaticLayout;
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getWidth()I

    move-result v18

    .line 118
    .local v18, "layoutWidth":I
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v17

    .line 120
    .local v17, "layoutHeight":I
    move/from16 v0, v18

    move/from16 v1, p8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 121
    .local v14, "bitmapWidth":I
    move/from16 v13, v17

    .line 122
    .local v13, "bitmapHeight":I
    if-lez p9, :cond_4

    .line 123
    move/from16 v13, p9

    .line 126
    :cond_4
    if-eqz v14, :cond_5

    if-nez v13, :cond_6

    .line 127
    :cond_5
    const/4 v9, 0x0

    goto :goto_0

    .line 95
    .end local v4    # "staticLayout":Landroid/text/StaticLayout;
    .end local v6    # "paint":Landroid/text/TextPaint;
    .end local v7    # "maxWidth":I
    .end local v13    # "bitmapHeight":I
    .end local v14    # "bitmapWidth":I
    .end local v17    # "layoutHeight":I
    .end local v18    # "layoutWidth":I
    :pswitch_1
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 96
    goto :goto_1

    .line 98
    :pswitch_2
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 99
    goto :goto_1

    .line 130
    .restart local v4    # "staticLayout":Landroid/text/StaticLayout;
    .restart local v6    # "paint":Landroid/text/TextPaint;
    .restart local v7    # "maxWidth":I
    .restart local v13    # "bitmapHeight":I
    .restart local v14    # "bitmapWidth":I
    .restart local v17    # "layoutHeight":I
    .restart local v18    # "layoutWidth":I
    :cond_6
    const/16 v19, 0x0

    .line 131
    .local v19, "offsetX":I
    const/4 v9, 0x3

    move/from16 v0, v16

    if-ne v0, v9, :cond_9

    .line 132
    sub-int v9, v14, v18

    div-int/lit8 v19, v9, 0x2

    .line 138
    :cond_7
    :goto_2
    const/16 v20, 0x0

    .line 139
    .local v20, "offsetY":I
    shr-int/lit8 v9, p7, 0x4

    and-int/lit8 v21, v9, 0xf

    .line 140
    .local v21, "verticalAlignment":I
    packed-switch v21, :pswitch_data_1

    .line 150
    :goto_3
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v13, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 151
    .local v12, "bitmap":Landroid/graphics/Bitmap;
    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 152
    .local v15, "canvas":Landroid/graphics/Canvas;
    move/from16 v0, v19

    int-to-float v9, v0

    move/from16 v0, v20

    int-to-float v10, v0

    invoke-virtual {v15, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 153
    if-eqz p15, :cond_8

    .line 155
    move/from16 v0, p19

    move/from16 v1, p16

    move/from16 v2, p17

    move/from16 v3, p18

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/text/TextPaint;->setARGB(IIII)V

    .line 156
    invoke-virtual {v4, v15}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 158
    :cond_8
    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 159
    move/from16 v0, p6

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/text/TextPaint;->setARGB(IIII)V

    .line 160
    invoke-virtual {v4, v15}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 162
    invoke-static {v12}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->initNativeObject(Landroid/graphics/Bitmap;)V

    .line 163
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 134
    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    .end local v15    # "canvas":Landroid/graphics/Canvas;
    .end local v20    # "offsetY":I
    .end local v21    # "verticalAlignment":I
    :cond_9
    const/4 v9, 0x2

    move/from16 v0, v16

    if-ne v0, v9, :cond_7

    .line 135
    sub-int v19, v14, v18

    goto :goto_2

    .line 143
    .restart local v20    # "offsetY":I
    .restart local v21    # "verticalAlignment":I
    :pswitch_3
    sub-int v9, v13, v17

    div-int/lit8 v20, v9, 0x2

    .line 144
    goto :goto_3

    .line 146
    :pswitch_4
    sub-int v20, v13, v17

    goto :goto_3

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 140
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static getFontSizeAccordingHeight(I)I
    .locals 7
    .param p0, "height"    # I

    .prologue
    .line 215
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    .line 216
    .local v2, "paint":Landroid/text/TextPaint;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 218
    .local v0, "bounds":Landroid/graphics/Rect;
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 219
    const/4 v4, 0x1

    .line 220
    .local v4, "text_size":I
    const/4 v1, 0x0

    .line 222
    .local v1, "found_desired_size":Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 233
    return v4

    .line 223
    :cond_1
    int-to-float v5, v4

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 224
    const-string v3, "SghMNy"

    .line 225
    .local v3, "text":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v3, v5, v6, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 227
    add-int/lit8 v4, v4, 0x1

    .line 229
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int v5, p0, v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_0

    .line 230
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static getPixels(Landroid/graphics/Bitmap;)[B
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 202
    if-eqz p0, :cond_0

    .line 203
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 204
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 203
    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x4

    new-array v1, v2, [B

    .line 205
    .local v1, "pixels":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 206
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 207
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 211
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v1    # "pixels":[B
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getStringWithEllipsis(Ljava/lang/String;FF)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "width"    # F
    .param p2, "fontSize"    # F

    .prologue
    .line 238
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    const-string v1, ""

    .line 246
    :goto_0
    return-object v1

    .line 242
    :cond_0
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 243
    .local v0, "paint":Landroid/text/TextPaint;
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 244
    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 247
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 246
    invoke-static {p0, v0, p1, v1}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 247
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static initNativeObject(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 192
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->getPixels(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 193
    .local v0, "pixels":[B
    if-nez v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 198
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 197
    invoke-static {v1, v2, v0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->nativeInitBitmapDC(II[B)V

    goto :goto_0
.end method

.method private static native nativeInitBitmapDC(II[B)V
.end method

.method private static newPaint(Ljava/lang/String;I)Landroid/text/TextPaint;
    .locals 7
    .param p0, "fontName"    # Ljava/lang/String;
    .param p1, "fontSize"    # I

    .prologue
    const/4 v6, 0x0

    .line 167
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    .line 168
    .local v1, "paint":Landroid/text/TextPaint;
    int-to-float v3, p1

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 169
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 172
    const-string v3, ".ttf"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    :try_start_0
    sget-object v3, Lorg/cocos2dx/lib/Cocos2dxBitmap;->sContext:Landroid/content/Context;

    .line 174
    invoke-static {v3, p0}, Lorg/cocos2dx/lib/Cocos2dxTypefaces;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 176
    .local v2, "typeFace":Landroid/graphics/Typeface;
    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v2    # "typeFace":Landroid/graphics/Typeface;
    :goto_0
    return-object v1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Cocos2dxBitmap"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error to create ttf type face: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 178
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-static {p0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    .line 185
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {p0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxBitmap;->sContext:Landroid/content/Context;

    .line 66
    return-void
.end method
