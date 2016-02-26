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


# instance fields
.field protected configAttribs:[I

.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;IIIIII)V
    .locals 2
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # I

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    return-void
.end method

.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;[I)V
    .locals 0
    .param p2    # [I

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2
    .param p1    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p4    # I
    .param p5    # I

    const/4 v1, 0x1

    new-array v0, v1, [I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aget p5, v0, v1

    :cond_0
    return p5
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 21
    .param p1    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2    # Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v20, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v4, v5, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    aget v4, v20, v4

    new-array v7, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v4, 0xf

    new-array v6, v4, [I

    const/4 v4, 0x0

    const/16 v5, 0x3024

    aput v5, v6, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    const/4 v8, 0x0

    aget v5, v5, v8

    aput v5, v6, v4

    const/4 v4, 0x2

    const/16 v5, 0x3023

    aput v5, v6, v4

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    const/4 v8, 0x1

    aget v5, v5, v8

    aput v5, v6, v4

    const/4 v4, 0x4

    const/16 v5, 0x3022

    aput v5, v6, v4

    const/4 v4, 0x5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    const/4 v8, 0x2

    aget v5, v5, v8

    aput v5, v6, v4

    const/4 v4, 0x6

    const/16 v5, 0x3021

    aput v5, v6, v4

    const/4 v4, 0x7

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    const/4 v8, 0x3

    aget v5, v5, v8

    aput v5, v6, v4

    const/16 v4, 0x8

    const/16 v5, 0x3025

    aput v5, v6, v4

    const/16 v4, 0x9

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    const/4 v8, 0x4

    aget v5, v5, v8

    aput v5, v6, v4

    const/16 v4, 0xa

    const/16 v5, 0x3026

    aput v5, v6, v4

    const/16 v4, 0xb

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    const/4 v8, 0x5

    aget v5, v5, v8

    aput v5, v6, v4

    const/16 v4, 0xc

    const/16 v5, 0x3040

    aput v5, v6, v4

    const/16 v4, 0xd

    const/4 v5, 0x4

    aput v5, v6, v4

    const/16 v4, 0xe

    const/16 v5, 0x3038

    aput v5, v6, v4

    const/4 v4, 0x1

    new-array v9, v4, [I

    const/4 v4, 0x0

    aget v8, v20, v4

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-interface/range {v4 .. v9}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v4, 0x0

    aget v4, v9, v4

    if-lez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v7, v4}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->selectConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    const/16 v4, 0xf

    new-array v12, v4, [I

    const/4 v4, 0x0

    const/16 v5, 0x3024

    aput v5, v12, v4

    const/4 v4, 0x1

    const/4 v5, 0x5

    aput v5, v12, v4

    const/4 v4, 0x2

    const/16 v5, 0x3023

    aput v5, v12, v4

    const/4 v4, 0x3

    const/4 v5, 0x6

    aput v5, v12, v4

    const/4 v4, 0x4

    const/16 v5, 0x3022

    aput v5, v12, v4

    const/4 v4, 0x5

    const/4 v5, 0x5

    aput v5, v12, v4

    const/4 v4, 0x6

    const/16 v5, 0x3021

    aput v5, v12, v4

    const/16 v4, 0x8

    const/16 v5, 0x3025

    aput v5, v12, v4

    const/16 v4, 0xa

    const/16 v5, 0x3026

    aput v5, v12, v4

    const/16 v4, 0xc

    const/16 v5, 0x3040

    aput v5, v12, v4

    const/16 v4, 0xd

    const/4 v5, 0x4

    aput v5, v12, v4

    const/16 v4, 0xe

    const/16 v5, 0x3038

    aput v5, v12, v4

    const/16 v4, 0xf

    new-array v15, v4, [I

    const/4 v4, 0x0

    const/16 v5, 0x3024

    aput v5, v15, v4

    const/4 v4, 0x1

    const/4 v5, 0x4

    aput v5, v15, v4

    const/4 v4, 0x2

    const/16 v5, 0x3023

    aput v5, v15, v4

    const/4 v4, 0x3

    const/4 v5, 0x4

    aput v5, v15, v4

    const/4 v4, 0x4

    const/16 v5, 0x3022

    aput v5, v15, v4

    const/4 v4, 0x5

    const/4 v5, 0x4

    aput v5, v15, v4

    const/4 v4, 0x6

    const/16 v5, 0x3021

    aput v5, v15, v4

    const/4 v4, 0x7

    const/4 v5, 0x4

    aput v5, v15, v4

    const/16 v4, 0x8

    const/16 v5, 0x3025

    aput v5, v15, v4

    const/16 v4, 0xa

    const/16 v5, 0x3026

    aput v5, v15, v4

    const/16 v4, 0xc

    const/16 v5, 0x3040

    aput v5, v15, v4

    const/16 v4, 0xd

    const/4 v5, 0x4

    aput v5, v15, v4

    const/16 v4, 0xe

    const/16 v5, 0x3038

    aput v5, v15, v4

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->configAttribs:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    if-nez v4, :cond_1

    const/4 v4, 0x0

    aget v14, v20, v4

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object v13, v7

    move-object v15, v9

    invoke-interface/range {v10 .. v15}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v4, 0x6

    new-array v0, v4, [I

    move-object/from16 v19, v0

    const/4 v4, 0x0

    const/4 v5, 0x5

    aput v5, v19, v4

    const/4 v4, 0x1

    const/4 v5, 0x6

    aput v5, v19, v4

    const/4 v4, 0x2

    const/4 v5, 0x5

    aput v5, v19, v4

    :goto_1
    const/4 v4, 0x0

    aget v4, v9, v4

    if-lez v4, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v7, v3}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->selectConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v4

    goto/16 :goto_0

    :cond_1
    const/4 v4, 0x0

    aget v17, v20, v4

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v16, v7

    move-object/from16 v18, v9

    invoke-interface/range {v13 .. v18}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v4, 0x6

    new-array v0, v4, [I

    move-object/from16 v19, v0

    const/4 v4, 0x0

    const/4 v5, 0x4

    aput v5, v19, v4

    const/4 v4, 0x1

    const/4 v5, 0x4

    aput v5, v19, v4

    const/4 v4, 0x2

    const/4 v5, 0x4

    aput v5, v19, v4

    const/4 v4, 0x3

    const/4 v5, 0x4

    aput v5, v19, v4

    goto :goto_1

    :cond_2
    const-string v4, "device_policy"

    const-string v5, "Can not select an EGLConfig for rendering."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_3
    const-string v4, "device_policy"

    const-string v5, "Can not select an EGLConfig for rendering."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public selectConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 15
    .param p1    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3    # [Ljavax/microedition/khronos/egl/EGLConfig;
    .param p4    # [I

    move-object/from16 v0, p3

    array-length v14, v0

    const/4 v1, 0x0

    move v13, v1

    :goto_0
    if-lt v13, v14, :cond_1

    const/4 v4, 0x0

    :cond_0
    return-object v4

    :cond_1
    aget-object v4, p3, v13

    const/16 v5, 0x3025

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    const/16 v5, 0x3026

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v12

    const/4 v1, 0x4

    aget v1, p4, v1

    if-lt v9, v1, :cond_2

    const/4 v1, 0x5

    aget v1, p4, v1

    if-lt v12, v1, :cond_2

    const/16 v5, 0x3024

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    const/16 v5, 0x3023

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    const/16 v5, 0x3022

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    const/16 v5, 0x3021

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v7

    const/4 v1, 0x0

    aget v1, p4, v1

    if-lt v11, v1, :cond_2

    const/4 v1, 0x1

    aget v1, p4, v1

    if-lt v10, v1, :cond_2

    const/4 v1, 0x2

    aget v1, p4, v1

    if-lt v8, v1, :cond_2

    const/4 v1, 0x3

    aget v1, p4, v1

    if-ge v7, v1, :cond_0

    :cond_2
    add-int/lit8 v1, v13, 0x1

    move v13, v1

    goto :goto_0
.end method
