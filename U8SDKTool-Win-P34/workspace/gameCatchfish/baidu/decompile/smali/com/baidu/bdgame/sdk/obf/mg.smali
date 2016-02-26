.class public Lcom/baidu/bdgame/sdk/obf/mg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "/web_image_cache/"

.field private static final g:I = 0x5000


# instance fields
.field private b:Ljava/io/File;

.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/Reference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/util/concurrent/ExecutorService;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/mg;->e:Z

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mg;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 42
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 43
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/io/File;

    const-string v2, "com.baidu.plaformsdk/web_image_cache/"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mg;->b:Ljava/io/File;

    .line 50
    :goto_26
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mg;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_33

    .line 51
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mg;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 54
    :cond_33
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mg;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/mg;->e:Z

    .line 55
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/mg;->e:Z

    if-eqz v0, :cond_47

    .line 56
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mg;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mg;->d:Ljava/lang/String;

    .line 60
    :cond_47
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/lm;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mg;->f:Ljava/util/concurrent/ExecutorService;

    .line 61
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/mg;->b(Landroid/content/Context;)V

    .line 63
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_62

    const/16 v0, 0x28

    :goto_58
    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/mg;->h:I

    .line 64
    return-void

    .line 47
    :cond_5b
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mg;->b:Ljava/io/File;

    goto :goto_26

    .line 63
    :cond_62
    const/16 v0, 0x50

    goto :goto_58
.end method

.method public static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 9

    .prologue
    const/4 v1, 0x1

    .line 314
    if-nez p0, :cond_4

    .line 347
    :cond_3
    :goto_3
    return-object p0

    .line 318
    :cond_4
    if-eqz p1, :cond_3

    .line 322
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 323
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 324
    if-eq v3, v4, :cond_3

    .line 328
    if-le v3, v4, :cond_15

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    .line 332
    :cond_15
    if-ge v3, v4, :cond_19

    if-eq p1, v1, :cond_3

    .line 336
    :cond_19
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 337
    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 338
    const/high16 v0, 0x42b40000

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 341
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    :try_start_2a
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_2d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2a .. :try_end_2d} :catch_33

    move-result-object v0

    .line 345
    :goto_2e
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    move-object p0, v0

    .line 347
    goto :goto_3

    .line 342
    :catch_33
    move-exception v0

    .line 343
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/mg;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/mg;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(II)Z
    .registers 4

    .prologue
    .line 80
    .line 81
    add-int/lit8 v0, p1, 0x14

    .line 82
    add-int/lit8 v1, p1, -0x14

    .line 83
    if-lt p0, v1, :cond_a

    if-gt p0, v0, :cond_a

    .line 84
    const/4 v0, 0x1

    .line 86
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static a(Landroid/content/Context;)Z
    .registers 6

    .prologue
    const/16 v4, 0x1e0

    const/16 v3, 0x140

    .line 67
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 68
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 70
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 71
    invoke-static {v0, v3}, Lcom/baidu/bdgame/sdk/obf/mg;->a(II)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-static {v1, v4}, Lcom/baidu/bdgame/sdk/obf/mg;->a(II)Z

    move-result v2

    if-nez v2, :cond_30

    :cond_24
    invoke-static {v0, v4}, Lcom/baidu/bdgame/sdk/obf/mg;->a(II)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-static {v1, v3}, Lcom/baidu/bdgame/sdk/obf/mg;->a(II)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 73
    :cond_30
    const/4 v0, 0x1

    .line 76
    :goto_31
    return v0

    :cond_32
    const/4 v0, 0x0

    goto :goto_31
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/mg;)Z
    .registers 2

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/mg;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/mg;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mg;->d:Ljava/lang/String;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 109
    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/mg;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/mg;->g(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    .prologue
    .line 211
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mg;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/mg;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    return-void
.end method

.method private c(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    .line 256
    const/4 v1, 0x0

    .line 257
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/mg;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 258
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mg;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 259
    if-eqz v0, :cond_1d

    .line 260
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 262
    if-nez v0, :cond_1c

    .line 263
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mg;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_1c
    :goto_1c
    return-object v0

    :cond_1d
    move-object v0, v1

    goto :goto_1c
.end method

.method private c(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    .prologue
    .line 223
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mg;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mg$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/baidu/bdgame/sdk/obf/mg$1;-><init>(Lcom/baidu/bdgame/sdk/obf/mg;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 253
    return-void
.end method

.method private d(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 8

    .prologue
    .line 274
    const/4 v0, 0x0

    .line 275
    iget-boolean v1, p0, Lcom/baidu/bdgame/sdk/obf/mg;->e:Z

    if-eqz v1, :cond_27

    .line 276
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/mg;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 280
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x5000

    cmp-long v0, v2, v4

    if-lez v0, :cond_23

    .line 283
    const-wide/16 v2, 0x64

    :try_start_20
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_23} :catch_28

    .line 288
    :cond_23
    :goto_23
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 291
    :cond_27
    return-object v0

    .line 284
    :catch_28
    move-exception v0

    .line 285
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_23
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mg;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/mg;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 299
    if-nez p1, :cond_a

    .line 300
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Null url passed in"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_a
    const-string v0, "[.:/,%?&=]"

    const-string v1, "+"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[+]+"

    const-string v2, "+"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 361
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/mg;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mg;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 363
    if-eqz v0, :cond_1f

    .line 364
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 365
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 366
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 369
    :cond_1f
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Ljava/lang/String;ZI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;ZI)Landroid/graphics/Bitmap;
    .registers 6

    .prologue
    .line 121
    .line 124
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/mg;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 126
    if-nez p2, :cond_7

    .line 146
    :cond_6
    :goto_6
    return-object v0

    .line 131
    :cond_7
    if-nez v0, :cond_6

    .line 133
    :try_start_9
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/mg;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_c} :catch_17

    move-result-object v0

    .line 138
    :goto_d
    invoke-static {v0, p3}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_6

    .line 142
    invoke-direct {p0, p1, v0}, Lcom/baidu/bdgame/sdk/obf/mg;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_6

    .line 134
    :catch_17
    move-exception v1

    .line 135
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/mg;->b()V

    .line 136
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_d
.end method

.method public a()V
    .registers 6

    .prologue
    .line 190
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mg;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 193
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mg;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 195
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 196
    if-nez v1, :cond_1f

    .line 205
    :cond_1e
    return-void

    .line 199
    :cond_1f
    array-length v2, v1

    const/4 v0, 0x0

    :goto_21
    if-ge v0, v2, :cond_1e

    aget-object v3, v1, v0

    .line 200
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 201
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 199
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_21
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 155
    if-nez p1, :cond_3

    .line 167
    :cond_2
    :goto_2
    return-void

    .line 160
    :cond_3
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mg;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/mg;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mg;->d:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/mg;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 165
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 3

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/mg;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/mg;->c(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 152
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mg;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/mg;->h:I

    .line 377
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mg;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 378
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 351
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mg;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mg$2;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bdgame/sdk/obf/mg$2;-><init>(Lcom/baidu/bdgame/sdk/obf/mg;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 358
    return-void
.end method
