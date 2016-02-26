.class public Lcom/meizu/gamecenter/a/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Z


# instance fields
.field private c:Landroid/app/Activity;

.field private d:Lcom/meizu/filetransfer/b;

.field private e:Ljava/lang/Object;

.field private f:Landroid/os/Handler;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/Android/data/com.meizu.gamecenter.service/InstallCache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/gamecenter/a/ai;->a:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/meizu/gamecenter/a/ai;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Object;Lcom/meizu/filetransfer/b;)V
    .registers 6

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/gamecenter/a/ai;->g:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/meizu/gamecenter/a/ai;->c:Landroid/app/Activity;

    .line 55
    iput-object p3, p0, Lcom/meizu/gamecenter/a/ai;->d:Lcom/meizu/filetransfer/b;

    .line 56
    iput-object p2, p0, Lcom/meizu/gamecenter/a/ai;->e:Ljava/lang/Object;

    .line 57
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/gamecenter/a/ai;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meizu/gamecenter/a/ai;->f:Landroid/os/Handler;

    .line 58
    invoke-direct {p0}, Lcom/meizu/gamecenter/a/ai;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/gamecenter/a/ai;->g:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private a(Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 141
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ai;->c:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_checkout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/meizu/gamecenter/a/ai;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 283
    sget-object v0, Lcom/meizu/gamecenter/a/ai;->a:Ljava/lang/String;

    invoke-static {}, Lcom/meizu/b/a/a/a;->c()Z

    move-result v1

    if-nez v1, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/meizu/gamecenter/a/ai;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/InstallCache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_23
    return-object v0
.end method

.method static synthetic a(Lcom/meizu/gamecenter/a/ai;Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 591
    invoke-direct {p0, p1}, Lcom/meizu/gamecenter/a/ai;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/meizu/gamecenter/a/ai;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 424
    new-instance v0, Lcom/meizu/gamecenter/a/a;

    iget-object v1, p0, Lcom/meizu/gamecenter/a/ai;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/meizu/gamecenter/a/ai;->f:Landroid/os/Handler;

    invoke-direct {v0, v1, p1, v2}, Lcom/meizu/gamecenter/a/a;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/meizu/gamecenter/a/a;->a()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/gamecenter/a/ai;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/meizu/gamecenter/a/ai;Z)V
    .registers 2

    .prologue
    .line 582
    invoke-direct {p0, p1}, Lcom/meizu/gamecenter/a/ai;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 592
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ai;->f:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 593
    return-void
.end method

.method private a(Z)V
    .registers 3

    .prologue
    .line 583
    new-instance v0, Lcom/meizu/gamecenter/a/al;

    invoke-direct {v0, p0, p1}, Lcom/meizu/gamecenter/a/al;-><init>(Lcom/meizu/gamecenter/a/ai;Z)V

    invoke-direct {p0, v0}, Lcom/meizu/gamecenter/a/ai;->a(Ljava/lang/Runnable;)V

    .line 589
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 354
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 355
    const-string v2, "com.meizu.gamecenter.service"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_b} :catch_10

    move-result-object v1

    .line 356
    if-eqz v1, :cond_f

    const/4 v0, 0x1

    .line 359
    :cond_f
    :goto_f
    return v0

    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method static synthetic a(Lcom/meizu/gamecenter/a/ai;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 387
    invoke-direct {p0, p1, p2}, Lcom/meizu/gamecenter/a/ai;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 389
    :try_start_1
    iget-object v1, p0, Lcom/meizu/gamecenter/a/ai;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 390
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 392
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 393
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 395
    :cond_1d
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_26

    .line 396
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 398
    :cond_26
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 400
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 402
    :goto_2f
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_3d

    .line 405
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 406
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 407
    const/4 v0, 0x1

    .line 411
    :goto_3c
    return v0

    .line 403
    :cond_3d
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_41} :catch_42

    goto :goto_2f

    .line 408
    :catch_42
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3c
.end method

.method static synthetic b(Lcom/meizu/gamecenter/a/ai;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ai;->c:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b()V
    .registers 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/meizu/gamecenter/a/ai;->b:Z

    return-void
.end method

.method static synthetic b(Lcom/meizu/gamecenter/a/ai;Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 559
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ai;->c:Landroid/app/Activity;

    const-string v1, "\u9b45\u65cf\u6e38\u620f\u6846\u67b6\u5b89\u88c5\u5931\u8d25"

    const-string v3, "\u786e\u5b9a"

    new-instance v5, Lcom/meizu/gamecenter/a/au;

    invoke-direct {v5, p0}, Lcom/meizu/gamecenter/a/au;-><init>(Lcom/meizu/gamecenter/a/ai;)V

    new-instance v7, Lcom/meizu/gamecenter/a/ak;

    invoke-direct {v7, p0}, Lcom/meizu/gamecenter/a/ak;-><init>(Lcom/meizu/gamecenter/a/ai;)V

    move-object v2, p1

    move-object v6, v4

    invoke-static/range {v0 .. v7}, Lcom/meizu/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic b(Lcom/meizu/gamecenter/a/ai;Z)V
    .registers 5

    .prologue
    .line 179
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/meizu/gamecenter/a/ai;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u9b45\u65cf\u6e38\u620f\u6846\u67b6\u5b89\u88c5"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u6846\u67b6\u4e0d\u652f\u63014.2\u4ee5\u4e0b\u673a\u5668"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/meizu/gamecenter/a/aj;

    invoke-direct {v2, p0, p1}, Lcom/meizu/gamecenter/a/aj;-><init>(Lcom/meizu/gamecenter/a/ai;Z)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .registers 12

    .prologue
    const/4 v0, 0x0

    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 151
    :try_start_7
    invoke-direct {p0}, Lcom/meizu/gamecenter/a/ai;->d()Ljava/lang/String;

    move-result-object v1

    .line 153
    iget-object v2, p0, Lcom/meizu/gamecenter/a/ai;->c:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.meizu.gamecenter.service"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 154
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 155
    const-string v3, "\\."

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v1, "\\."

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v1, v0

    move v3, v0

    :goto_28
    array-length v2, v4

    if-lt v1, v2, :cond_36

    move v1, v0

    move v2, v0

    :goto_2d
    array-length v4, v5

    if-lt v1, v4, :cond_4c

    sub-int v1, v3, v2

    if-ltz v1, :cond_35

    .line 157
    const/4 v0, 0x1

    .line 168
    :cond_35
    :goto_35
    return v0

    .line 155
    :cond_36
    aget-object v2, v4, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-wide/high16 v6, 0x4024000000000000L

    array-length v8, v4

    sub-int/2addr v8, v1

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v6, v6

    mul-int/2addr v2, v6

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_28

    :cond_4c
    aget-object v4, v5, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-wide/high16 v6, 0x4024000000000000L

    array-length v8, v5

    sub-int/2addr v8, v1

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D
    :try_end_5a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_5a} :catch_61
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_5a} :catch_66

    move-result-wide v6

    double-to-int v6, v6

    mul-int/2addr v4, v6

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 159
    :catch_61
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_35

    .line 162
    :catch_66
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_35
.end method

.method static synthetic c(Lcom/meizu/gamecenter/a/ai;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ai;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/meizu/gamecenter/a/ai;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lcom/meizu/gamecenter/a/ai;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c()Z
    .registers 2

    .prologue
    .line 175
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private c(Ljava/lang/String;)Z
    .registers 11

    .prologue
    const/4 v8, 0x0

    .line 246
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 248
    :try_start_7
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ai;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.meizu.gamecenter.service"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_4f

    .line 250
    iget-object v1, p0, Lcom/meizu/gamecenter/a/ai;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 251
    if-eqz v1, :cond_4f

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v2, v3, :cond_4f

    .line 253
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v2, "\u6e38\u620f\u5df2\u652f\u6301\u6700\u65b0\u6e38\u620f\u6846\u67b6\u5566\uff0c\u5347\u7ea7\u5c06\u7ed9\u4f60\u5e26\u6765\u66f4\u597d\u7684\u4f53\u9a8c\uff0c\u662f\u5426\u5b89\u88c5\u65b0\u7248\u672c\uff1f"

    iget-object v0, p0, Lcom/meizu/gamecenter/a/ai;->c:Landroid/app/Activity;

    const-string v1, "\u5347\u7ea7\u9b45\u65cf\u6e38\u620f\u6846\u67b6"

    const-string v3, "\u5b89\u88c5"

    const-string v4, "\u53d6\u6d88"

    new-instance v5, Lcom/meizu/gamecenter/a/an;

    invoke-direct {v5, p0, p1}, Lcom/meizu/gamecenter/a/an;-><init>(Lcom/meizu/gamecenter/a/ai;Ljava/lang/String;)V

    new-instance v6, Lcom/meizu/gamecenter/a/ap;

    invoke-direct {v6, p0}, Lcom/meizu/gamecenter/a/ap;-><init>(Lcom/meizu/gamecenter/a/ai;)V

    new-instance v7, Lcom/meizu/gamecenter/a/aq;

    invoke-direct {v7, p0}, Lcom/meizu/gamecenter/a/aq;-><init>(Lcom/meizu/gamecenter/a/ai;)V

    invoke-static/range {v0 .. v7}, Lcom/meizu/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_49} :catch_4b

    .line 254
    const/4 v0, 0x1

    .line 261
    :goto_4a
    return v0

    .line 257
    :catch_4b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4f
    move v0, v8

    .line 261
    goto :goto_4a
.end method

.method private d()Ljava/lang/String;
    .registers 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ai;->g:Ljava/lang/String;

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/meizu/gamecenter/a/ai;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 87
    return-object v0
.end method

.method static synthetic d(Lcom/meizu/gamecenter/a/ai;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/meizu/gamecenter/a/ai;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 430
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v2, "\u9700\u8981\u5b89\u88c5\u9b45\u65cf\u6e38\u620f\u6846\u67b6\u624d\u80fd\u7ee7\u7eed\uff0c\u662f\u5426\u5b89\u88c5\uff1f"

    .line 431
    :goto_8
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ai;->c:Landroid/app/Activity;

    .line 432
    const-string v1, "\u9b45\u65cf\u6e38\u620f\u6846\u67b6\u5b89\u88c5"

    .line 434
    const-string v3, "\u786e\u5b9a"

    .line 435
    const-string v4, "\u53d6\u6d88"

    .line 436
    new-instance v5, Lcom/meizu/gamecenter/a/ar;

    invoke-direct {v5, p0, p1}, Lcom/meizu/gamecenter/a/ar;-><init>(Lcom/meizu/gamecenter/a/ai;Ljava/lang/String;)V

    .line 447
    new-instance v6, Lcom/meizu/gamecenter/a/as;

    invoke-direct {v6, p0}, Lcom/meizu/gamecenter/a/as;-><init>(Lcom/meizu/gamecenter/a/ai;)V

    .line 453
    new-instance v7, Lcom/meizu/gamecenter/a/at;

    invoke-direct {v7, p0}, Lcom/meizu/gamecenter/a/at;-><init>(Lcom/meizu/gamecenter/a/ai;)V

    .line 459
    invoke-static/range {v0 .. v7}, Lcom/meizu/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;

    .line 461
    return-void

    .line 430
    :cond_23
    const-string v2, "\u9700\u8981\u4e0b\u8f7d\u5e76\u5b89\u88c5\u9b45\u65cf\u6e38\u620f\u6846\u67b6\u624d\u80fd\u7ee7\u7eed\uff0c\u662f\u5426\u4e0b\u8f7d\uff1f"

    goto :goto_8
.end method

.method static synthetic d(Lcom/meizu/gamecenter/a/ai;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcom/meizu/gamecenter/a/ai;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/meizu/gamecenter/a/ai;)Lcom/meizu/filetransfer/b;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ai;->d:Lcom/meizu/filetransfer/b;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .registers 6

    .prologue
    .line 372
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ai;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 374
    :try_start_6
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_f
    if-lt v1, v3, :cond_13

    .line 384
    :goto_11
    const/4 v0, 0x0

    :cond_12
    return-object v0

    .line 374
    :cond_13
    aget-object v0, v2, v1

    .line 375
    const-string v4, ".apk"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    const-string v4, "MzGameCenterService"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_22} :catch_29
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_22} :catch_2e

    move-result v4

    if-nez v4, :cond_12

    .line 374
    :cond_25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    .line 380
    :catch_29
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    .line 381
    :catch_2e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method static synthetic e(Lcom/meizu/gamecenter/a/ai;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 114
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ai;->c:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_last_check_version_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic f(Lcom/meizu/gamecenter/a/ai;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ai;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic f(Lcom/meizu/gamecenter/a/ai;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 131
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ai;->c:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_checkout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic g(Lcom/meizu/gamecenter/a/ai;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 419
    new-instance v0, Lcom/meizu/gamecenter/a/a;

    iget-object v1, p0, Lcom/meizu/gamecenter/a/ai;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/meizu/gamecenter/a/ai;->f:Landroid/os/Handler;

    invoke-direct {v0, v1, p1, v2}, Lcom/meizu/gamecenter/a/a;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/meizu/gamecenter/a/a;->a()Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/meizu/gamecenter/a/ai;->a(Z)V

    return-void
.end method

.method static synthetic h(Lcom/meizu/gamecenter/a/ai;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/meizu/gamecenter/a/ai;->a(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/gamecenter/a/ai;->c:Landroid/app/Activity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_checkout"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic i(Lcom/meizu/gamecenter/a/ai;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 362
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ai;->c:Landroid/app/Activity;

    const-string v1, "\u8bf7\u7a0d\u7b49"

    invoke-static {v0, v1}, Lcom/meizu/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/meizu/gamecenter/a/av;

    invoke-direct {v1, p0, p1, v0}, Lcom/meizu/gamecenter/a/av;-><init>(Lcom/meizu/gamecenter/a/ai;Ljava/lang/String;Landroid/app/ProgressDialog;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/meizu/gamecenter/a/av;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    iget-object v0, p0, Lcom/meizu/gamecenter/a/ai;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/ai;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 64
    sget-boolean v0, Lcom/meizu/gamecenter/a/ai;->b:Z

    if-eqz v0, :cond_19

    .line 65
    new-instance v0, Lcom/meizu/gamecenter/a/bc;

    invoke-direct {v0, p0}, Lcom/meizu/gamecenter/a/bc;-><init>(Lcom/meizu/gamecenter/a/ai;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/meizu/gamecenter/a/bc;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 79
    :cond_18
    :goto_18
    return-void

    .line 67
    :cond_19
    invoke-direct {p0}, Lcom/meizu/gamecenter/a/ai;->e()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-direct {p0, v0}, Lcom/meizu/gamecenter/a/ai;->d(Ljava/lang/String;)V

    goto :goto_18

    .line 71
    :cond_21
    sput-boolean v1, Lcom/meizu/gamecenter/a/ai;->b:Z

    .line 74
    iget-object v3, p0, Lcom/meizu/gamecenter/a/ai;->g:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/meizu/gamecenter/a/ai;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    :cond_2b
    :goto_2b
    if-nez v2, :cond_18

    .line 76
    invoke-direct {p0, v1}, Lcom/meizu/gamecenter/a/ai;->a(Z)V

    goto :goto_18

    .line 74
    :cond_31
    invoke-direct {p0}, Lcom/meizu/gamecenter/a/ai;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/gamecenter/a/ai;->a(Ljava/lang/String;)I

    move-result v4

    const-class v5, Lcom/meizu/gamecenter/a/ai;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "checkout="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_65

    move v0, v2

    :goto_55
    if-eqz v0, :cond_2b

    new-instance v0, Lcom/meizu/gamecenter/a/am;

    invoke-direct {v0, p0, v3}, Lcom/meizu/gamecenter/a/am;-><init>(Lcom/meizu/gamecenter/a/ai;Ljava/lang/String;)V

    new-array v4, v1, [Ljava/lang/String;

    aput-object v3, v4, v2

    invoke-virtual {v0, v4}, Lcom/meizu/gamecenter/a/am;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v2, v1

    goto :goto_2b

    :cond_65
    iget-object v4, p0, Lcom/meizu/gamecenter/a/ai;->c:Landroid/app/Activity;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "_last_check_version_time"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v6, 0x0

    invoke-interface {v4, v0, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    cmp-long v0, v4, v6

    if-lez v0, :cond_ae

    move v0, v1

    :goto_95
    const-class v4, Lcom/meizu/gamecenter/a/ai;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isTimeOverOneDay="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    :cond_ae
    move v0, v2

    goto :goto_95
.end method
