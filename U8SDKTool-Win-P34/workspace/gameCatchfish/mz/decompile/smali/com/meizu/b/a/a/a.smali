.class public final Lcom/meizu/b/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/meizu/b/a/a/a;->a:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/meizu/b/a/a/a;->b:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/b/a/a/a;->c:Z

    .line 50
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 80
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 81
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 82
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    .line 86
    :goto_c
    return v0

    .line 83
    :catch_d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method private static a(Landroid/view/ViewGroup;)Landroid/view/SurfaceView;
    .registers 3

    .prologue
    .line 250
    :goto_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_9

    .line 258
    const/4 v0, 0x0

    :goto_8
    return-object v0

    .line 251
    :cond_9
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_19

    .line 252
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object p0, v0

    goto :goto_0

    .line 253
    :cond_19
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/SurfaceView;

    if-eqz v1, :cond_28

    .line 254
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    goto :goto_8

    .line 250
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 105
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 138
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 139
    const-string v1, "utf-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 140
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/b/a/a/b;->b([B)Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_18

    move-result-object v0

    .line 145
    :goto_17
    return-object v0

    .line 142
    :catch_18
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static a(Landroid/app/Activity;)Z
    .registers 15

    .prologue
    const/high16 v13, 0x40000000

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 167
    invoke-static {}, Lcom/meizu/b/a/a/a;->c()Z

    move-result v1

    if-nez v1, :cond_c

    move v1, v3

    .line 230
    :cond_b
    :goto_b
    return v1

    .line 171
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/Android/data/com.meizu.gamecenter.service/TempImage/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 173
    :try_start_27
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 175
    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    invoke-static {v1}, Lcom/meizu/b/a/a/a;->a(Landroid/view/ViewGroup;)Landroid/view/SurfaceView;

    move-result-object v8

    .line 176
    if-eqz v8, :cond_f6

    .line 177
    const-string v1, ""

    const-string v5, "The game has SurfaceView"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {v8}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    invoke-virtual {v8}, Landroid/view/SurfaceView;->getHeight()I

    move-result v5

    .line 179
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 178
    invoke-static {v1, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_4d} :catch_e2

    move-result-object v5

    .line 181
    :try_start_4e
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_53} :catch_dd

    .line 182
    :try_start_53
    const-class v6, Landroid/view/View;

    const-string v9, "onDraw"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/graphics/Canvas;

    aput-object v12, v10, v11

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_70
    .catch Ljava/lang/NoSuchMethodException; {:try_start_53 .. :try_end_70} :catch_d8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_53 .. :try_end_70} :catch_e6
    .catch Ljava/lang/IllegalAccessException; {:try_start_53 .. :try_end_70} :catch_eb
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_53 .. :try_end_70} :catch_f0
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_70} :catch_dd

    .line 195
    :goto_70
    :try_start_70
    invoke-static {p0}, Lcom/meizu/b/a/a/a;->b(Landroid/app/Activity;)I

    move-result v1

    .line 196
    :goto_74
    const/16 v6, 0x5a

    if-ge v1, v6, :cond_10e

    .line 201
    if-eqz v5, :cond_15d

    .line 202
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_88

    .line 204
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 206
    :cond_88
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 213
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x50

    invoke-virtual {v5, v1, v7, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 214
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 215
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    .line 217
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_c2} :catch_e2

    move v1, v4

    .line 222
    :goto_c3
    if-nez v8, :cond_b

    .line 223
    const/4 v3, 0x0

    :try_start_c6
    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 224
    invoke-virtual {v2}, Landroid/view/View;->destroyDrawingCache()V

    .line 225
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_d0} :catch_d2

    goto/16 :goto_b

    .line 228
    :catch_d2
    move-exception v2

    :goto_d3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_b

    .line 182
    :catch_d8
    move-exception v1

    :try_start_d9
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_dc} :catch_dd

    goto :goto_70

    .line 185
    :catch_dd
    move-exception v1

    :try_start_de
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_e1} :catch_e2

    goto :goto_70

    .line 228
    :catch_e2
    move-exception v1

    move-object v2, v1

    move v1, v3

    goto :goto_d3

    .line 182
    :catch_e6
    move-exception v1

    :try_start_e7
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_70

    :catch_eb
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_70

    :catch_f0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_f4} :catch_dd

    goto/16 :goto_70

    .line 188
    :cond_f6
    :try_start_f6
    const-string v1, ""

    const-string v5, "The game has no SurfaceView"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 190
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 191
    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 192
    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v5

    goto/16 :goto_70

    .line 197
    :cond_10e
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v6, 0x42b40000

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v13

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v13

    invoke-virtual {v9, v6, v10, v11}, Landroid/graphics/Matrix;->setRotate(FFF)V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/16 v10, 0x9

    new-array v10, v10, [F

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v11, 0x2

    aget v11, v10, v11

    const/4 v12, 0x5

    aget v10, v10, v12

    sub-float/2addr v6, v11

    const/4 v11, 0x0

    sub-float v10, v11, v10

    invoke-virtual {v9, v6, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v11, v5, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    :try_end_158
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_158} :catch_e2

    .line 198
    add-int/lit8 v1, v1, -0x5a

    move-object v5, v6

    goto/16 :goto_74

    :cond_15d
    move v1, v3

    goto/16 :goto_c3
.end method

.method public static a([B)[B
    .registers 2

    .prologue
    .line 17
    const-string v0, "MD5"

    invoke-static {v0}, Lcom/meizu/b/a/a/a;->b(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/app/Activity;)I
    .registers 2

    .prologue
    .line 280
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 282
    packed-switch v0, :pswitch_data_1a

    .line 293
    const/4 v0, 0x0

    .line 296
    :goto_10
    return v0

    .line 284
    :pswitch_11
    const/16 v0, 0x5a

    .line 285
    goto :goto_10

    .line 287
    :pswitch_14
    const/16 v0, 0x10e

    .line 288
    goto :goto_10

    .line 290
    :pswitch_17
    const/16 v0, 0xb4

    .line 291
    goto :goto_10

    .line 282
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_11
        :pswitch_17
        :pswitch_14
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v8, 0x5

    const/4 v2, 0x0

    .line 110
    :try_start_2
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 111
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    .line 112
    if-eqz v1, :cond_bf

    .line 113
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    .line 114
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 116
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 117
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 118
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x3

    const/4 v7, 0x5

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 120
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    :goto_6f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_77

    if-lt v2, v8, :cond_7c

    .line 128
    :cond_77
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    :goto_7b
    return-object v0

    .line 125
    :cond_7c
    const-string v0, ";"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 126
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b7} :catch_bb

    .line 124
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6f

    .line 130
    :catch_bb
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    :cond_bf
    const-string v0, ""

    goto :goto_7b
.end method

.method public static b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 94
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 95
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 96
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 100
    :goto_b
    return-object v0

    .line 97
    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    const-string v0, ""

    goto :goto_b
.end method

.method private static b(Ljava/lang/String;)Ljava/security/MessageDigest;
    .registers 3

    .prologue
    .line 10
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 11
    :catch_5
    move-exception v0

    .line 12
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static c()Z
    .registers 2

    .prologue
    .line 333
    const-string v0, "mounted"

    .line 334
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/b/a/a/a;->c:Z

    .line 56
    return-void
.end method

.method public final b()Z
    .registers 13

    .prologue
    .line 61
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/meizu/b/a/a/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 62
    :cond_1a
    const/4 v3, 0x0

    .line 63
    const/4 v2, 0x0

    .line 64
    const/4 v1, 0x0

    .line 66
    :try_start_1d
    const-string v0, "MEIZU"

    const/16 v4, 0x7530

    invoke-static {v0, v4}, Lcom/meizu/filetransfer/MAndroidHttpClient;->newInstance(Ljava/lang/String;I)Lcom/meizu/filetransfer/MAndroidHttpClient;
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_24} :catch_177
    .catch Lcom/meizu/filetransfer/a; {:try_start_1d .. :try_end_24} :catch_127
    .catch Lcom/meizu/filetransfer/c; {:try_start_1d .. :try_end_24} :catch_13b
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_24} :catch_13e
    .catchall {:try_start_1d .. :try_end_24} :catchall_15f

    move-result-object v4

    .line 68
    :try_start_25
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v3, p0, Lcom/meizu/b/a/a/a;->a:Ljava/lang/String;

    invoke-direct {v0, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v4, v0}, Lcom/meizu/filetransfer/MAndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 92
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 94
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v6

    .line 95
    if-eqz v6, :cond_81

    const/4 v0, 0x1

    .line 98
    :goto_43
    if-eqz v0, :cond_55

    const/4 v7, 0x0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_55

    .line 99
    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 102
    :cond_55
    const/16 v6, 0xc8

    if-ne v5, v6, :cond_5b

    if-nez v0, :cond_83

    .line 103
    :cond_5b
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v3, Lcom/meizu/filetransfer/c;

    invoke-direct {v3, v0}, Lcom/meizu/filetransfer/c;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_6b} :catch_6b
    .catch Lcom/meizu/filetransfer/a; {:try_start_25 .. :try_end_6b} :catch_172
    .catch Lcom/meizu/filetransfer/c; {:try_start_25 .. :try_end_6b} :catch_16d
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_6b} :catch_168
    .catchall {:try_start_25 .. :try_end_6b} :catchall_12a

    .line 136
    :catch_6b
    move-exception v0

    move-object v3, v4

    :goto_6d
    :try_start_6d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_165

    .line 148
    if-eqz v1, :cond_75

    .line 149
    :try_start_72
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 151
    :cond_75
    if-eqz v2, :cond_7a

    .line 152
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 154
    :cond_7a
    if-eqz v3, :cond_7f

    .line 155
    invoke-virtual {v3}, Lcom/meizu/filetransfer/MAndroidHttpClient;->close()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_7f} :catch_121

    .line 161
    :cond_7f
    :goto_7f
    const/4 v0, 0x0

    :goto_80
    return v0

    .line 95
    :cond_81
    const/4 v0, 0x0

    goto :goto_43

    .line 107
    :cond_83
    :try_start_83
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 108
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v8

    .line 110
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 112
    const-wide/16 v6, 0x0

    .line 114
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    iget-object v10, p0, Lcom/meizu/b/a/a/a;->b:Ljava/lang/String;

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_a5} :catch_6b
    .catch Lcom/meizu/filetransfer/a; {:try_start_83 .. :try_end_a5} :catch_172
    .catch Lcom/meizu/filetransfer/c; {:try_start_83 .. :try_end_a5} :catch_16d
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_a5} :catch_168
    .catchall {:try_start_83 .. :try_end_a5} :catchall_12a

    .line 117
    :cond_a5
    :try_start_a5
    iget-boolean v2, p0, Lcom/meizu/b/a/a/a;->c:Z

    if-eqz v2, :cond_b3

    new-instance v0, Lcom/meizu/filetransfer/a;

    invoke-direct {v0}, Lcom/meizu/filetransfer/a;-><init>()V

    throw v0

    .line 136
    :catch_af
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto :goto_6d

    .line 118
    :cond_b3
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 119
    if-lez v2, :cond_c2

    .line 120
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 121
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 122
    int-to-long v10, v2

    add-long/2addr v6, v10

    .line 124
    :cond_c2
    const/4 v5, -0x1

    if-eq v2, v5, :cond_cf

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-lez v2, :cond_a5

    cmp-long v2, v6, v8

    if-ltz v2, :cond_a5

    .line 130
    :cond_cf
    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-lez v0, :cond_10c

    cmp-long v0, v6, v8

    if-gez v0, :cond_10c

    .line 131
    const-string v0, "Downloader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "download length = "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " , in stream length = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_f7} :catch_af
    .catch Lcom/meizu/filetransfer/a; {:try_start_a5 .. :try_end_f7} :catch_174
    .catch Lcom/meizu/filetransfer/c; {:try_start_a5 .. :try_end_f7} :catch_16f
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_f7} :catch_16a
    .catchall {:try_start_a5 .. :try_end_f7} :catchall_162

    .line 148
    if-eqz v1, :cond_fc

    .line 149
    :try_start_f9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 151
    :cond_fc
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 154
    if-eqz v4, :cond_104

    .line 155
    invoke-virtual {v4}, Lcom/meizu/filetransfer/MAndroidHttpClient;->close()V
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_104} :catch_107

    .line 132
    :cond_104
    :goto_104
    const/4 v0, 0x0

    goto/16 :goto_80

    .line 158
    :catch_107
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_104

    .line 148
    :cond_10c
    if-eqz v1, :cond_111

    .line 149
    :try_start_10e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 151
    :cond_111
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 154
    if-eqz v4, :cond_119

    .line 155
    invoke-virtual {v4}, Lcom/meizu/filetransfer/MAndroidHttpClient;->close()V
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_119} :catch_11c

    .line 134
    :cond_119
    :goto_119
    const/4 v0, 0x1

    goto/16 :goto_80

    .line 158
    :catch_11c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_119

    :catch_121
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7f

    .line 139
    :catch_127
    move-exception v0

    move-object v4, v3

    :goto_129
    :try_start_129
    throw v0
    :try_end_12a
    .catchall {:try_start_129 .. :try_end_12a} :catchall_12a

    .line 146
    :catchall_12a
    move-exception v0

    .line 148
    :goto_12b
    if-eqz v1, :cond_130

    .line 149
    :try_start_12d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 151
    :cond_130
    if-eqz v2, :cond_135

    .line 152
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 154
    :cond_135
    if-eqz v4, :cond_13a

    .line 155
    invoke-virtual {v4}, Lcom/meizu/filetransfer/MAndroidHttpClient;->close()V
    :try_end_13a
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_13a} :catch_15a

    .line 160
    :cond_13a
    :goto_13a
    throw v0

    .line 141
    :catch_13b
    move-exception v0

    move-object v4, v3

    :goto_13d
    :try_start_13d
    throw v0

    .line 143
    :catch_13e
    move-exception v0

    move-object v4, v3

    :goto_140
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_143
    .catchall {:try_start_13d .. :try_end_143} :catchall_12a

    .line 148
    if-eqz v1, :cond_148

    .line 149
    :try_start_145
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 151
    :cond_148
    if-eqz v2, :cond_14d

    .line 152
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 154
    :cond_14d
    if-eqz v4, :cond_7f

    .line 155
    invoke-virtual {v4}, Lcom/meizu/filetransfer/MAndroidHttpClient;->close()V
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_145 .. :try_end_152} :catch_154

    goto/16 :goto_7f

    .line 158
    :catch_154
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7f

    :catch_15a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13a

    .line 146
    :catchall_15f
    move-exception v0

    move-object v4, v3

    goto :goto_12b

    :catchall_162
    move-exception v0

    move-object v2, v3

    goto :goto_12b

    :catchall_165
    move-exception v0

    move-object v4, v3

    goto :goto_12b

    .line 143
    :catch_168
    move-exception v0

    goto :goto_140

    :catch_16a
    move-exception v0

    move-object v2, v3

    goto :goto_140

    .line 141
    :catch_16d
    move-exception v0

    goto :goto_13d

    :catch_16f
    move-exception v0

    move-object v2, v3

    goto :goto_13d

    .line 139
    :catch_172
    move-exception v0

    goto :goto_129

    :catch_174
    move-exception v0

    move-object v2, v3

    goto :goto_129

    .line 136
    :catch_177
    move-exception v0

    goto/16 :goto_6d
.end method
