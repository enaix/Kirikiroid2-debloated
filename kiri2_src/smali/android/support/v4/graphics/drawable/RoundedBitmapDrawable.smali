.class public abstract Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundedBitmapDrawable.java"


# static fields
.field private static final DEFAULT_PAINT_FLAGS:I = 0x6


# instance fields
.field private mApplyGravity:Z

.field mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBitmapWidth:I

.field private mCornerRadius:F

.field final mDstRect:Landroid/graphics/Rect;

.field final mDstRectF:Landroid/graphics/RectF;

.field private mGravity:I

.field private mPaint:Landroid/graphics/Paint;

.field private mTargetDensity:I


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 310
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 46
    const/16 v0, 0xa0

    iput v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mTargetDensity:I

    .line 47
    const/16 v0, 0x77

    iput v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    .line 53
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRectF:Landroid/graphics/RectF;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mApplyGravity:Z

    .line 311
    if-eqz p1, :cond_0

    .line 312
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mTargetDensity:I

    .line 315
    :cond_0
    iput-object p2, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 316
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 317
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->computeBitmapSize()V

    .line 318
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 322
    :goto_0
    return-void

    .line 320
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapHeight:I

    iput v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapWidth:I

    goto :goto_0
.end method

.method private computeBitmapSize()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mTargetDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->getScaledWidth(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapWidth:I

    .line 77
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mTargetDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->getScaledHeight(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapHeight:I

    .line 78
    return-void
.end method

.method private static isGreaterThanZero(F)Z
    .locals 1
    .param p0, "toCompare"    # F

    .prologue
    .line 325
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 229
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 230
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->updateDstRect()V

    .line 236
    iget-object v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 237
    .local v1, "paint":Landroid/graphics/Paint;
    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    .line 238
    .local v2, "shader":Landroid/graphics/Shader;
    if-nez v2, :cond_1

    .line 239
    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v3, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 241
    :cond_1
    iget-object v3, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRectF:Landroid/graphics/RectF;

    iget v4, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    iget v5, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    invoke-virtual {p1, v3, v4, v5, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getCornerRadius()F
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 4

    .prologue
    const/4 v1, -0x3

    .line 299
    iget v2, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    const/16 v3, 0x77

    if-eq v2, v3, :cond_1

    .line 303
    :cond_0
    :goto_0
    return v1

    .line 302
    :cond_1
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 303
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    const/16 v3, 0xff

    if-lt v2, v3, :cond_0

    iget v2, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    invoke-static {v2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->isGreaterThanZero(F)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method gravityCompatApply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "gravity"    # I
    .param p2, "bitmapWidth"    # I
    .param p3, "bitmapHeight"    # I
    .param p4, "bounds"    # Landroid/graphics/Rect;
    .param p5, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 215
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasAntiAlias()Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->isAntiAlias()Z

    move-result v0

    return v0
.end method

.method public hasMipMap()Z
    .locals 1

    .prologue
    .line 174
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    .line 247
    iget-object v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 248
    .local v0, "oldAlpha":I
    if-eq p1, v0, :cond_0

    .line 249
    iget-object v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 250
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    .line 252
    :cond_0
    return-void
.end method

.method public setAntiAlias(Z)V
    .locals 1
    .param p1, "aa"    # Z

    .prologue
    .line 186
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 187
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    .line 188
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 260
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 261
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    .line 262
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 2
    .param p1, "cornerRadius"    # F

    .prologue
    .line 272
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->isGreaterThanZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 277
    :goto_0
    iput p1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mCornerRadius:F

    .line 278
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    .prologue
    .line 209
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 210
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    .line 211
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    .prologue
    .line 203
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 204
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    .line 205
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 143
    iget v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 144
    iput p1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mApplyGravity:Z

    .line 146
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    .line 148
    :cond_0
    return-void
.end method

.method public setMipMap(Z)V
    .locals 1
    .param p1, "mipMap"    # Z

    .prologue
    .line 162
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setTargetDensity(I)V
    .locals 1
    .param p1, "density"    # I

    .prologue
    .line 115
    iget v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mTargetDensity:I

    if-eq v0, p1, :cond_2

    .line 116
    if-nez p1, :cond_0

    const/16 p1, 0xa0

    .end local p1    # "density":I
    :cond_0
    iput p1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mTargetDensity:I

    .line 117
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 118
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->computeBitmapSize()V

    .line 120
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->invalidateSelf()V

    .line 122
    :cond_2
    return-void
.end method

.method public setTargetDensity(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getDensity()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setTargetDensity(I)V

    .line 92
    return-void
.end method

.method public setTargetDensity(Landroid/util/DisplayMetrics;)V
    .locals 1
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 103
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p0, v0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setTargetDensity(I)V

    .line 104
    return-void
.end method

.method updateDstRect()V
    .locals 6

    .prologue
    .line 219
    iget-boolean v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mApplyGravity:Z

    if-eqz v0, :cond_0

    .line 220
    iget v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mGravity:I

    iget v2, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapWidth:I

    iget v3, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mBitmapHeight:I

    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->gravityCompatApply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 222
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->mApplyGravity:Z

    .line 225
    :cond_0
    return-void
.end method
