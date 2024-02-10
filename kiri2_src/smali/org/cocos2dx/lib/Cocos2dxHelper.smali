.class public Lorg/cocos2dx/lib/Cocos2dxHelper;
.super Ljava/lang/Object;
.source "Cocos2dxHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;
    }
.end annotation


# static fields
.field private static final BOOST_TIME:I = 0x7

.field private static final PREFS_NAME:Ljava/lang/String; = "Cocos2dxPrefsFile"

.field private static final RUNNABLES_PER_FRAME:I = 0x5

.field private static connection:Landroid/content/ServiceConnection;

.field private static mGameServiceBinder:Lcom/enhance/gameservice/IGameTuningService;

.field private static onActivityResultListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/preference/PreferenceManager$OnActivityResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sAccelerometerEnabled:Z

.field private static sActivity:Landroid/app/Activity;

.field private static sActivityVisible:Z

.field private static sAssetManager:Landroid/content/res/AssetManager;

.field private static sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

.field private static sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

.field private static sCocos2dxAccelerometer:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

.field private static sCocos2dxHelperListener:Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;

.field private static sFileDirectory:Ljava/lang/String;

.field private static sInited:Z

.field private static sPackageName:Ljava/lang/String;

.field private static sVibrateService:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    sput-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->sActivity:Landroid/app/Activity;

    .line 73
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->onActivityResultListeners:Ljava/util/Set;

    .line 74
    sput-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->sVibrateService:Landroid/os/Vibrator;

    .line 76
    sput-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->mGameServiceBinder:Lcom/enhance/gameservice/IGameTuningService;

    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sInited:Z

    .line 121
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxHelper$1;

    invoke-direct {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper$1;-><init>()V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->connection:Landroid/content/ServiceConnection;

    .line 130
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/enhance/gameservice/IGameTuningService;)V
    .locals 0

    .prologue
    .line 76
    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxHelper;->mGameServiceBinder:Lcom/enhance/gameservice/IGameTuningService;

    return-void
.end method

.method static synthetic access$1()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2()Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->connection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$3([B)V
    .locals 0

    .prologue
    .line 163
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->nativeSetEditTextDialogResult([B)V

    return-void
.end method

.method public static addOnActivityResultListener(Landroid/preference/PreferenceManager$OnActivityResultListener;)V
    .locals 1
    .param p0, "listener"    # Landroid/preference/PreferenceManager$OnActivityResultListener;

    .prologue
    .line 138
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->onActivityResultListeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method public static conversionEncoding([BLjava/lang/String;Ljava/lang/String;)[B
    .locals 3
    .param p0, "text"    # [B
    .param p1, "fromCharset"    # Ljava/lang/String;
    .param p2, "newCharset"    # Ljava/lang/String;

    .prologue
    .line 534
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 535
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 540
    .end local v1    # "str":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 536
    :catch_0
    move-exception v0

    .line 537
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 540
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static deleteValueForKey(Ljava/lang/String;)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 525
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->sActivity:Landroid/app/Activity;

    const-string v3, "Cocos2dxPrefsFile"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 526
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 527
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 528
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 529
    return-void
.end method

.method public static disableAccelerometer()V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    sput-boolean v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sAccelerometerEnabled:Z

    .line 198
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dxAccelerometer:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->disable()V

    .line 199
    return-void
.end method

.method public static enableAccelerometer()V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    sput-boolean v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sAccelerometerEnabled:Z

    .line 188
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dxAccelerometer:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->enable()V

    .line 189
    return-void
.end method

.method public static end()V
    .locals 1

    .prologue
    .line 311
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->end()V

    .line 312
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->end()V

    .line 313
    return-void
.end method

.method public static fastLoading(I)I
    .locals 3
    .param p0, "sec"    # I

    .prologue
    const/4 v1, -0x1

    .line 580
    :try_start_0
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->mGameServiceBinder:Lcom/enhance/gameservice/IGameTuningService;

    if-eqz v2, :cond_0

    .line 581
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->mGameServiceBinder:Lcom/enhance/gameservice/IGameTuningService;

    invoke-interface {v2, p0}, Lcom/enhance/gameservice/IGameTuningService;->boostUp(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 586
    :cond_0
    :goto_0
    return v1

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getAssetManager()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sAssetManager:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public static getBackgroundMusicVolume()F
    .locals 1

    .prologue
    .line 259
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->getBackgroundVolume()F

    move-result v0

    return v0
.end method

.method public static getBoolForKey(Ljava/lang/String;Z)Z
    .locals 10
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 387
    sget-object v8, Lorg/cocos2dx/lib/Cocos2dxHelper;->sActivity:Landroid/app/Activity;

    const-string v9, "Cocos2dxPrefsFile"

    invoke-virtual {v8, v9, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 389
    .local v4, "settings":Landroid/content/SharedPreferences;
    :try_start_0
    invoke-interface {v4, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 412
    :cond_0
    :goto_0
    return v6

    .line 391
    :catch_0
    move-exception v1

    .line 392
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 394
    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 395
    .local v0, "allValues":Ljava/util/Map;
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 396
    .local v5, "value":Ljava/lang/Object;
    instance-of v8, v5, Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 398
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    goto :goto_0

    .line 400
    :cond_1
    instance-of v8, v5, Ljava/lang/Integer;

    if-eqz v8, :cond_2

    .line 402
    check-cast v5, Ljava/lang/Integer;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 403
    .local v3, "intValue":I
    if-nez v3, :cond_0

    move v6, v7

    goto :goto_0

    .line 405
    .end local v3    # "intValue":I
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v8, v5, Ljava/lang/Float;

    if-eqz v8, :cond_3

    .line 407
    check-cast v5, Ljava/lang/Float;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 408
    .local v2, "floatValue":F
    const/4 v8, 0x0

    cmpl-float v8, v2, v8

    if-nez v8, :cond_0

    move v6, v7

    goto :goto_0

    .end local v2    # "floatValue":F
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_3
    move v6, v7

    .line 412
    goto :goto_0
.end method

.method public static getCocos2dxPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public static getCocos2dxWritablePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sFileDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDPI()I
    .locals 5

    .prologue
    .line 365
    sget-object v3, Lorg/cocos2dx/lib/Cocos2dxHelper;->sActivity:Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 367
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 368
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    sget-object v3, Lorg/cocos2dx/lib/Cocos2dxHelper;->sActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 369
    .local v2, "wm":Landroid/view/WindowManager;
    if-eqz v2, :cond_0

    .line 371
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 372
    .local v0, "d":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 375
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x43200000    # 160.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 379
    .end local v0    # "d":Landroid/view/Display;
    :goto_0
    return v3

    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getDoubleForKey(Ljava/lang/String;D)D
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # D

    .prologue
    .line 473
    double-to-float v0, p1

    invoke-static {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getFloatForKey(Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public static getEffectsVolume()F
    .locals 1

    .prologue
    .line 287
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->getEffectsVolume()F

    move-result v0

    return v0
.end method

.method public static getFloatForKey(Ljava/lang/String;F)F
    .locals 8
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # F

    .prologue
    .line 444
    sget-object v5, Lorg/cocos2dx/lib/Cocos2dxHelper;->sActivity:Landroid/app/Activity;

    const-string v6, "Cocos2dxPrefsFile"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 446
    .local v3, "settings":Landroid/content/SharedPreferences;
    :try_start_0
    invoke-interface {v3, p0, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 468
    :goto_0
    return v5

    .line 448
    :catch_0
    move-exception v2

    .line 449
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 451
    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 452
    .local v0, "allValues":Ljava/util/Map;
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 453
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 454
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    goto :goto_0

    .line 456
    :cond_0
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    .line 458
    check-cast v4, Ljava/lang/Integer;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->floatValue()F

    move-result v5

    goto :goto_0

    .line 460
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_2

    .line 462
    check-cast v4, Ljava/lang/Boolean;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 463
    .local v1, "booleanValue":Z
    if-eqz v1, :cond_2

    .line 464
    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_0

    .line 468
    .end local v1    # "booleanValue":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getIntegerForKey(Ljava/lang/String;I)I
    .locals 8
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    const/4 v5, 0x0

    .line 416
    sget-object v6, Lorg/cocos2dx/lib/Cocos2dxHelper;->sActivity:Landroid/app/Activity;

    const-string v7, "Cocos2dxPrefsFile"

    invoke-virtual {v6, v7, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 418
    .local v3, "settings":Landroid/content/SharedPreferences;
    :try_start_0
    invoke-interface {v3, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 440
    :cond_0
    :goto_0
    return v5

    .line 420
    :catch_0
    move-exception v2

    .line 421
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 423
    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 424
    .local v0, "allValues":Ljava/util/Map;
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 425
    .local v4, "value":Ljava/lang/Object;
    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 426
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    .line 428
    :cond_1
    instance-of v6, v4, Ljava/lang/Float;

    if-eqz v6, :cond_2

    .line 430
    check-cast v4, Ljava/lang/Float;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Float;->intValue()I

    move-result v5

    goto :goto_0

    .line 432
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v6, v4, Ljava/lang/Boolean;

    if-eqz v6, :cond_0

    .line 434
    check-cast v4, Ljava/lang/Boolean;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 435
    .local v1, "booleanValue":Z
    if-eqz v1, :cond_0

    .line 436
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static getOnActivityResultListeners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/preference/PreferenceManager$OnActivityResultListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->onActivityResultListeners:Ljava/util/Set;

    return-object v0
.end method

.method public static getStringForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 477
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->sActivity:Landroid/app/Activity;

    const-string v3, "Cocos2dxPrefsFile"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 479
    .local v1, "settings":Landroid/content/SharedPreferences;
    :try_start_0
    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 484
    :goto_0
    return-object v2

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 484
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getTemperature()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 592
    :try_start_0
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->mGameServiceBinder:Lcom/enhance/gameservice/IGameTuningService;

    if-eqz v2, :cond_0

    .line 593
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->mGameServiceBinder:Lcom/enhance/gameservice/IGameTuningService;

    invoke-interface {v2}, Lcom/enhance/gameservice/IGameTuningService;->getAbstractTemperature()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 598
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v1

    .line 596
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 597
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 211
    :try_start_0
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    return-object v1

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x1

    .line 90
    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sActivity:Landroid/app/Activity;

    move-object v2, p0

    .line 91
    check-cast v2, Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;

    sput-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dxHelperListener:Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;

    .line 92
    sget-boolean v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->sInited:Z

    if-nez v2, :cond_0

    .line 93
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 95
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sput-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->sPackageName:Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->sFileDirectory:Ljava/lang/String;

    .line 98
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v2}, Lorg/cocos2dx/lib/Cocos2dxHelper;->nativeSetApkPath(Ljava/lang/String;)V

    .line 100
    new-instance v2, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-direct {v2, p0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;-><init>(Landroid/content/Context;)V

    sput-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dxAccelerometer:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    .line 101
    new-instance v2, Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-direct {v2, p0}, Lorg/cocos2dx/lib/Cocos2dxMusic;-><init>(Landroid/content/Context;)V

    sput-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

    .line 102
    new-instance v2, Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-direct {v2, p0}, Lorg/cocos2dx/lib/Cocos2dxSound;-><init>(Landroid/content/Context;)V

    sput-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    sput-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->sAssetManager:Landroid/content/res/AssetManager;

    .line 104
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->sAssetManager:Landroid/content/res/AssetManager;

    invoke-static {p0, v2}, Lorg/cocos2dx/lib/Cocos2dxHelper;->nativeSetContext(Landroid/content/Context;Landroid/content/res/AssetManager;)V

    .line 106
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->setContext(Landroid/content/Context;)V

    .line 108
    const-string v2, "vibrator"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    sput-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->sVibrateService:Landroid/os/Vibrator;

    .line 110
    sput-boolean v4, Lorg/cocos2dx/lib/Cocos2dxHelper;->sInited:Z

    .line 113
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/enhance/gameservice/IGameTuningService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string v2, "com.enhance.gameservice"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lorg/cocos2dx/lib/Cocos2dxHelper;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 118
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static isActivityVisible()Z
    .locals 1

    .prologue
    .line 146
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sActivityVisible:Z

    return v0
.end method

.method public static isBackgroundMusicPlaying()Z
    .locals 1

    .prologue
    .line 255
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->isBackgroundMusicPlaying()Z

    move-result v0

    return v0
.end method

.method private static native nativeSetApkPath(Ljava/lang/String;)V
.end method

.method private static native nativeSetContext(Landroid/content/Context;Landroid/content/res/AssetManager;)V
.end method

.method private static native nativeSetEditTextDialogResult([B)V
.end method

.method public static onEnterBackground()V
    .locals 1

    .prologue
    .line 330
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->onEnterBackground()V

    .line 331
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->onEnterBackground()V

    .line 332
    return-void
.end method

.method public static onEnterForeground()V
    .locals 1

    .prologue
    .line 335
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->onEnterForeground()V

    .line 336
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->onEnterForeground()V

    .line 337
    return-void
.end method

.method public static onPause()V
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x0

    sput-boolean v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sActivityVisible:Z

    .line 324
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sAccelerometerEnabled:Z

    if-eqz v0, :cond_0

    .line 325
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dxAccelerometer:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->disable()V

    .line 327
    :cond_0
    return-void
.end method

.method public static onResume()V
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x1

    sput-boolean v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sActivityVisible:Z

    .line 317
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sAccelerometerEnabled:Z

    if-eqz v0, :cond_0

    .line 318
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dxAccelerometer:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->enable()V

    .line 320
    :cond_0
    return-void
.end method

.method public static openURL(Ljava/lang/String;)Z
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 219
    const/4 v1, 0x0

    .line 221
    .local v1, "ret":Z
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .local v0, "i":Landroid/content/Intent;
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 223
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->sActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    const/4 v1, 0x1

    .line 227
    .end local v0    # "i":Landroid/content/Intent;
    :goto_0
    return v1

    .line 225
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static pauseAllEffects()V
    .locals 1

    .prologue
    .line 299
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->pauseAllEffects()V

    .line 300
    return-void
.end method

.method public static pauseBackgroundMusic()V
    .locals 1

    .prologue
    .line 243
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->pauseBackgroundMusic()V

    .line 244
    return-void
.end method

.method public static pauseEffect(I)V
    .locals 1
    .param p0, "soundId"    # I

    .prologue
    .line 279
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->pauseEffect(I)V

    .line 280
    return-void
.end method

.method public static playBackgroundMusic(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "pPath"    # Ljava/lang/String;
    .param p1, "isLoop"    # Z

    .prologue
    .line 235
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxMusic;->playBackgroundMusic(Ljava/lang/String;Z)V

    .line 236
    return-void
.end method

.method public static playEffect(Ljava/lang/String;ZFFF)I
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "isLoop"    # Z
    .param p2, "pitch"    # F
    .param p3, "pan"    # F
    .param p4, "gain"    # F

    .prologue
    .line 271
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/cocos2dx/lib/Cocos2dxSound;->playEffect(Ljava/lang/String;ZFFF)I

    move-result v0

    return v0
.end method

.method public static preloadBackgroundMusic(Ljava/lang/String;)V
    .locals 1
    .param p0, "pPath"    # Ljava/lang/String;

    .prologue
    .line 231
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->preloadBackgroundMusic(Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public static preloadEffect(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 267
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->preloadEffect(Ljava/lang/String;)I

    .line 268
    return-void
.end method

.method public static resumeAllEffects()V
    .locals 1

    .prologue
    .line 303
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->resumeAllEffects()V

    .line 304
    return-void
.end method

.method public static resumeBackgroundMusic()V
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->resumeBackgroundMusic()V

    .line 240
    return-void
.end method

.method public static resumeEffect(I)V
    .locals 1
    .param p0, "soundId"    # I

    .prologue
    .line 275
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->resumeEffect(I)V

    .line 276
    return-void
.end method

.method public static rewindBackgroundMusic()V
    .locals 1

    .prologue
    .line 251
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->rewindBackgroundMusic()V

    .line 252
    return-void
.end method

.method public static runOnGLThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 85
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sActivity:Landroid/app/Activity;

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method

.method public static setAccelerometerInterval(F)V
    .locals 1
    .param p0, "interval"    # F

    .prologue
    .line 193
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dxAccelerometer:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->setInterval(F)V

    .line 194
    return-void
.end method

.method public static setBackgroundMusicVolume(F)V
    .locals 1
    .param p0, "volume"    # F

    .prologue
    .line 263
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->setBackgroundVolume(F)V

    .line 264
    return-void
.end method

.method public static setBoolForKey(Ljava/lang/String;Z)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Z

    .prologue
    .line 489
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->sActivity:Landroid/app/Activity;

    const-string v3, "Cocos2dxPrefsFile"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 490
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 491
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 492
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 493
    return-void
.end method

.method public static setDoubleForKey(Ljava/lang/String;D)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # D

    .prologue
    .line 511
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->sActivity:Landroid/app/Activity;

    const-string v3, "Cocos2dxPrefsFile"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 512
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 513
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    double-to-float v2, p1

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 514
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 515
    return-void
.end method

.method public static setEditTextDialogResult(Ljava/lang/String;)V
    .locals 3
    .param p0, "pResult"    # Ljava/lang/String;

    .prologue
    .line 350
    :try_start_0
    const-string v1, "UTF8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 352
    .local v0, "bytesUTF8":[B
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dxHelperListener:Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;

    new-instance v2, Lorg/cocos2dx/lib/Cocos2dxHelper$2;

    invoke-direct {v2, v0}, Lorg/cocos2dx/lib/Cocos2dxHelper$2;-><init>([B)V

    invoke-interface {v1, v2}, Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;->runOnGLThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    .end local v0    # "bytesUTF8":[B
    :goto_0
    return-void

    .line 358
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setEffectsVolume(F)V
    .locals 1
    .param p0, "volume"    # F

    .prologue
    .line 291
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->setEffectsVolume(F)V

    .line 292
    return-void
.end method

.method public static setFPS(I)I
    .locals 3
    .param p0, "fps"    # I

    .prologue
    const/4 v1, -0x1

    .line 568
    :try_start_0
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->mGameServiceBinder:Lcom/enhance/gameservice/IGameTuningService;

    if-eqz v2, :cond_0

    .line 569
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->mGameServiceBinder:Lcom/enhance/gameservice/IGameTuningService;

    invoke-interface {v2, p0}, Lcom/enhance/gameservice/IGameTuningService;->setFramePerSecond(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 574
    :cond_0
    :goto_0
    return v1

    .line 572
    :catch_0
    move-exception v0

    .line 573
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setFloatForKey(Ljava/lang/String;F)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # F

    .prologue
    .line 503
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->sActivity:Landroid/app/Activity;

    const-string v3, "Cocos2dxPrefsFile"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 504
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 505
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 506
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 507
    return-void
.end method

.method public static setIntegerForKey(Ljava/lang/String;I)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 496
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->sActivity:Landroid/app/Activity;

    const-string v3, "Cocos2dxPrefsFile"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 497
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 498
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 499
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 500
    return-void
.end method

.method public static setKeepScreenOn(Z)V
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 202
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sActivity:Landroid/app/Activity;

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->setKeepScreenOn(Z)V

    .line 203
    return-void
.end method

.method public static setLowPowerMode(Z)I
    .locals 3
    .param p0, "enable"    # Z

    .prologue
    const/4 v1, -0x1

    .line 604
    :try_start_0
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->mGameServiceBinder:Lcom/enhance/gameservice/IGameTuningService;

    if-eqz v2, :cond_0

    .line 605
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->mGameServiceBinder:Lcom/enhance/gameservice/IGameTuningService;

    invoke-interface {v2, p0}, Lcom/enhance/gameservice/IGameTuningService;->setGamePowerSaving(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 610
    :cond_0
    :goto_0
    return v1

    .line 608
    :catch_0
    move-exception v0

    .line 609
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setResolutionPercent(I)I
    .locals 3
    .param p0, "per"    # I

    .prologue
    const/4 v1, -0x1

    .line 556
    :try_start_0
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->mGameServiceBinder:Lcom/enhance/gameservice/IGameTuningService;

    if-eqz v2, :cond_0

    .line 557
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->mGameServiceBinder:Lcom/enhance/gameservice/IGameTuningService;

    invoke-interface {v2, p0}, Lcom/enhance/gameservice/IGameTuningService;->setPreferredResolution(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 562
    :cond_0
    :goto_0
    return v1

    .line 560
    :catch_0
    move-exception v0

    .line 561
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setStringForKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 518
    sget-object v2, Lorg/cocos2dx/lib/Cocos2dxHelper;->sActivity:Landroid/app/Activity;

    const-string v3, "Cocos2dxPrefsFile"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 519
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 520
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 521
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 522
    return-void
.end method

.method private static showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "pTitle"    # Ljava/lang/String;
    .param p1, "pMessage"    # Ljava/lang/String;

    .prologue
    .line 344
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dxHelperListener:Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;

    invoke-interface {v0, p0, p1}, Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method public static stopAllEffects()V
    .locals 1

    .prologue
    .line 307
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->stopAllEffects()V

    .line 308
    return-void
.end method

.method public static stopBackgroundMusic()V
    .locals 1

    .prologue
    .line 247
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dMusic:Lorg/cocos2dx/lib/Cocos2dxMusic;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxMusic;->stopBackgroundMusic()V

    .line 248
    return-void
.end method

.method public static stopEffect(I)V
    .locals 1
    .param p0, "soundId"    # I

    .prologue
    .line 283
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->stopEffect(I)V

    .line 284
    return-void
.end method

.method public static terminateProcess()V
    .locals 1

    .prologue
    .line 340
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 341
    return-void
.end method

.method public static unloadEffect(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 295
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sCocos2dSound:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-virtual {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxSound;->unloadEffect(Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public static vibrate(F)V
    .locals 4
    .param p0, "duration"    # F

    .prologue
    .line 206
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxHelper;->sVibrateService:Landroid/os/Vibrator;

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v1, p0

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 207
    return-void
.end method
