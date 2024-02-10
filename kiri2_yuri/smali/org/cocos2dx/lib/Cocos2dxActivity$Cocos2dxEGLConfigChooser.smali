.class public Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;
.super Ljava/lang/Object;
.source "Cocos2dxActivity.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Cocos2dxEGLConfigChooser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;
    }
.end annotation


# instance fields
.field protected configAttribs:[I

.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;IIIIII)V
    .locals 2
    .param p2, "redSize"    # I
    .param p3, "greenSize"    # I
    .param p4, "blueSize"    # I
    .param p5, "alphaSize"    # I
    .param p6, "depthSize"    # I
    .param p7, "stencilSize"    # I

    .prologue
    .line 79
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    const/4 v1, 0x2

    aput p4, v0, v1

    const/4 v1, 0x3

    aput p5, v0, v1

    const/4 v1, 0x4

    aput p6, v0, v1

    const/4 v1, 0x5

    aput p7, v0, v1

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;[I)V
    .locals 0
    .param p2, "attribs"    # [I

    .prologue
    .line 83
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    .line 85
    return-void
.end method

.method static synthetic access$0(Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 1

    .prologue
    .line 87
    invoke-direct/range {p0 .. p5}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    return v0
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p4, "attribute"    # I
    .param p5, "defaultValue"    # I

    .prologue
    .line 89
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 90
    .local v0, "value":[I
    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const/4 v1, 0x0

    aget p5, v0, v1

    .line 93
    .end local p5    # "defaultValue":I
    :cond_0
    return p5
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 22
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    .prologue
    .line 166
    const/16 v3, 0xf

    new-array v5, v3, [I

    const/4 v3, 0x0

    .line 167
    const/16 v4, 0x3024

    aput v4, v5, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    const/4 v7, 0x0

    aget v4, v4, v7

    aput v4, v5, v3

    const/4 v3, 0x2

    .line 168
    const/16 v4, 0x3023

    aput v4, v5, v3

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    const/4 v7, 0x1

    aget v4, v4, v7

    aput v4, v5, v3

    const/4 v3, 0x4

    .line 169
    const/16 v4, 0x3022

    aput v4, v5, v3

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    const/4 v7, 0x2

    aget v4, v4, v7

    aput v4, v5, v3

    const/4 v3, 0x6

    .line 170
    const/16 v4, 0x3021

    aput v4, v5, v3

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    const/4 v7, 0x3

    aget v4, v4, v7

    aput v4, v5, v3

    const/16 v3, 0x8

    .line 171
    const/16 v4, 0x3025

    aput v4, v5, v3

    const/16 v3, 0x9

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    const/4 v7, 0x4

    aget v4, v4, v7

    aput v4, v5, v3

    const/16 v3, 0xa

    .line 172
    const/16 v4, 0x3026

    aput v4, v5, v3

    const/16 v3, 0xb

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    const/4 v7, 0x5

    aget v4, v4, v7

    aput v4, v5, v3

    const/16 v3, 0xc

    .line 173
    const/16 v4, 0x3040

    aput v4, v5, v3

    const/16 v3, 0xd

    const/4 v4, 0x4

    aput v4, v5, v3

    const/16 v3, 0xe

    .line 174
    const/16 v4, 0x3038

    aput v4, v5, v3

    .line 176
    .local v5, "EGLattribs":[I
    const/4 v3, 0x1

    new-array v6, v3, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 177
    .local v6, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    const/4 v3, 0x1

    new-array v8, v3, [I

    .line 178
    .local v8, "numConfigs":[I
    const/4 v7, 0x1

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-interface/range {v3 .. v8}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v17

    .line 179
    .local v17, "eglChooseResult":Z
    if-eqz v17, :cond_0

    const/4 v3, 0x0

    aget v3, v8, v3

    if-lez v3, :cond_0

    .line 181
    const/4 v3, 0x0

    aget-object v3, v6, v3

    .line 222
    :goto_0
    return-object v3

    .line 185
    :cond_0
    const/4 v3, 0x3

    new-array v11, v3, [I

    fill-array-data v11, :array_0

    .line 189
    .local v11, "EGLV2attribs":[I
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object v14, v8

    invoke-interface/range {v9 .. v14}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v17

    .line 190
    if-eqz v17, :cond_5

    const/4 v3, 0x0

    aget v3, v8, v3

    if-lez v3, :cond_5

    .line 191
    const/4 v3, 0x0

    aget v13, v8, v3

    .line 192
    .local v13, "num":I
    new-array v15, v13, [Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;

    .line 195
    .local v15, "cfgVals":[Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;
    new-array v6, v13, [Ljavax/microedition/khronos/egl/EGLConfig;

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object v12, v6

    move-object v14, v8

    .line 196
    invoke-interface/range {v9 .. v14}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 197
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    move/from16 v0, v19

    if-lt v0, v13, :cond_2

    .line 201
    new-instance v16, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;[I)V

    .line 203
    .local v16, "e":Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;
    const/16 v20, 0x0

    .line 204
    .local v20, "lo":I
    move/from16 v18, v13

    .line 206
    .local v18, "hi":I
    :goto_2
    add-int/lit8 v3, v18, -0x1

    move/from16 v0, v20

    if-lt v0, v3, :cond_3

    .line 214
    add-int/lit8 v3, v13, -0x1

    move/from16 v0, v20

    if-eq v0, v3, :cond_1

    .line 215
    add-int/lit8 v20, v20, 0x1

    .line 217
    :cond_1
    const-string v3, "cocos2d"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Can\'t find EGLConfig match: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", instead of closest one:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v7, v15, v20

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    aget-object v3, v15, v20

    iget-object v3, v3, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->config:Ljavax/microedition/khronos/egl/EGLConfig;

    goto :goto_0

    .line 198
    .end local v16    # "e":Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;
    .end local v18    # "hi":I
    .end local v20    # "lo":I
    :cond_2
    new-instance v3, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;

    aget-object v4, v6, v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v3, v0, v1, v2, v4}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;-><init>(Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V

    aput-object v3, v15, v19

    .line 197
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 207
    .restart local v16    # "e":Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;
    .restart local v18    # "hi":I
    .restart local v20    # "lo":I
    :cond_3
    add-int v3, v20, v18

    div-int/lit8 v21, v3, 0x2

    .line 208
    .local v21, "mi":I
    aget-object v3, v15, v21

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;->compareTo(Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;)I

    move-result v3

    if-gez v3, :cond_4

    .line 209
    move/from16 v18, v21

    .line 210
    goto :goto_2

    .line 211
    :cond_4
    move/from16 v20, v21

    goto :goto_2

    .line 221
    .end local v13    # "num":I
    .end local v15    # "cfgVals":[Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;
    .end local v16    # "e":Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser$ConfigValue;
    .end local v18    # "hi":I
    .end local v19    # "i":I
    .end local v20    # "lo":I
    .end local v21    # "mi":I
    :cond_5
    const-string v3, "device_policy"

    const-string v4, "Can not select an EGLConfig for rendering."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 185
    nop

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3038
    .end array-data
.end method
