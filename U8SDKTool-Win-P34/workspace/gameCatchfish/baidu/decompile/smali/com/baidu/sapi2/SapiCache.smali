.class public final Lcom/baidu/sapi2/SapiCache;
.super Ljava/lang/Object;
.source "SapiCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/sapi2/SapiCache$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/baidu/sapi2/SapiCache;->a:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/sapi2/SapiCache;->b:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/sapi2/SapiCache;->c:Ljava/util/List;

    .line 52
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-static {p1}, Lcom/baidu/sapi2/SapiCache;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "moduleId":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/baidu/sapi2/SapiCache;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static a()V
    .registers 6

    .prologue
    .line 202
    sget-object v4, Lcom/baidu/sapi2/SapiCache;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/baidu/sapi2/d;->a(Landroid/content/Context;)Lcom/baidu/sapi2/d;

    move-result-object v3

    .line 203
    .local v3, "sapiContext":Lcom/baidu/sapi2/d;
    invoke-virtual {v3}, Lcom/baidu/sapi2/d;->j()Lcom/baidu/sapi2/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/sapi2/b;->g()Lcom/baidu/sapi2/b$a;

    move-result-object v0

    .line 204
    .local v0, "cacheOptions":Lcom/baidu/sapi2/b$a;
    invoke-virtual {v0}, Lcom/baidu/sapi2/b$a;->a()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 205
    invoke-virtual {v0}, Lcom/baidu/sapi2/b$a;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/sapi2/b$a$a;

    .line 206
    .local v2, "module":Lcom/baidu/sapi2/b$a$a;
    sget-object v4, Lcom/baidu/sapi2/SapiCache;->b:Ljava/util/List;

    iget-object v5, v2, Lcom/baidu/sapi2/b$a$a;->a:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 208
    .end local v2    # "module":Lcom/baidu/sapi2/b$a$a;
    :cond_30
    sget-object v4, Lcom/baidu/sapi2/SapiCache;->c:Ljava/util/List;

    sget-object v5, Lcom/baidu/sapi2/SapiCache;->b:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 209
    invoke-virtual {v0}, Lcom/baidu/sapi2/b$a;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/sapi2/b$a$a;

    .line 210
    .restart local v2    # "module":Lcom/baidu/sapi2/b$a$a;
    new-instance v4, Lcom/baidu/sapi2/SapiCache$c;

    invoke-direct {v4}, Lcom/baidu/sapi2/SapiCache$c;-><init>()V

    invoke-static {v2, v4}, Lcom/baidu/sapi2/SapiCache;->a(Lcom/baidu/sapi2/b$a$a;Lcom/baidu/sapi2/SapiCache$a;)V

    goto :goto_3f

    .line 223
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "module":Lcom/baidu/sapi2/b$a$a;
    :cond_54
    return-void
.end method

.method static a(Landroid/content/Context;Lcom/baidu/sapi2/b$a$a;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "module"    # Lcom/baidu/sapi2/b$a$a;

    .prologue
    .line 264
    iget-object v3, p1, Lcom/baidu/sapi2/b$a$a;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/baidu/sapi2/b$a$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "internalFile":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 267
    :try_start_15
    invoke-static {p0, v2}, Lcom/baidu/sapi2/SapiCache;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "data":Ljava/lang/String;
    iget-object v3, p1, Lcom/baidu/sapi2/b$a$a;->a:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/baidu/sapi2/SapiCache;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1e} :catch_1f

    .line 275
    .end local v0    # "data":Ljava/lang/String;
    :goto_1e
    return-void

    .line 269
    :catch_1f
    move-exception v1

    .line 270
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v3, p1, Lcom/baidu/sapi2/b$a$a;->a:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/baidu/sapi2/SapiCache;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1e

    .line 273
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_26
    iget-object v3, p1, Lcom/baidu/sapi2/b$a$a;->a:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/baidu/sapi2/SapiCache;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1e
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;[B)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 488
    const/4 v0, 0x0

    .line 490
    .local v0, "outputStream":Ljava/io/OutputStream;
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 491
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_9} :catch_f
    .catchall {:try_start_2 .. :try_end_9} :catchall_18

    .line 494
    if-eqz v0, :cond_e

    .line 496
    :try_start_b
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_e} :catch_1f

    .line 501
    :cond_e
    :goto_e
    return-void

    .line 492
    :catch_f
    move-exception v1

    .line 494
    if-eqz v0, :cond_e

    .line 496
    :try_start_12
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_e

    .line 497
    :catch_16
    move-exception v1

    goto :goto_e

    .line 494
    :catchall_18
    move-exception v1

    if-eqz v0, :cond_1e

    .line 496
    :try_start_1b
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1e} :catch_21

    .line 498
    :cond_1e
    :goto_1e
    throw v1

    .line 497
    :catch_1f
    move-exception v1

    goto :goto_e

    :catch_21
    move-exception v2

    goto :goto_1e
.end method

.method static a(Lcom/baidu/sapi2/b$a$a;Lcom/baidu/sapi2/SapiCache$a;)V
    .registers 5

    .prologue
    .line 233
    if-nez p1, :cond_21

    .line 234
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/baidu/sapi2/SapiCache$a;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "can\'t be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_21
    iget-object v0, p0, Lcom/baidu/sapi2/b$a$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/sapi2/b$a$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    :try_start_27
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 241
    invoke-static {v0}, Lcom/baidu/sapi2/SapiCache;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/baidu/android/common/security/MD5Util;->toMd5([BZ)Ljava/lang/String;

    move-result-object v1

    .line 243
    iget-object v2, p0, Lcom/baidu/sapi2/b$a$a;->c:Lcom/baidu/sapi2/b$a$a$a;

    iget-object v2, v2, Lcom/baidu/sapi2/b$a$a$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 244
    invoke-interface {p1, p0, v0}, Lcom/baidu/sapi2/SapiCache$a;->a(Lcom/baidu/sapi2/b$a$a;Ljava/lang/String;)V

    .line 254
    :goto_5c
    return-void

    .line 246
    :cond_5d
    invoke-interface {p1, p0}, Lcom/baidu/sapi2/SapiCache$a;->a(Lcom/baidu/sapi2/b$a$a;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_60} :catch_61

    goto :goto_5c

    .line 251
    :catch_61
    move-exception v0

    .line 252
    invoke-interface {p1, p0}, Lcom/baidu/sapi2/SapiCache$a;->a(Lcom/baidu/sapi2/b$a$a;)V

    goto :goto_5c

    .line 249
    :cond_66
    :try_start_66
    invoke-interface {p1, p0}, Lcom/baidu/sapi2/SapiCache$a;->a(Lcom/baidu/sapi2/b$a$a;)V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_69} :catch_61

    goto :goto_5c
.end method

.method static a(Ljava/lang/String;)V
    .registers 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 93
    sget-object v0, Lcom/baidu/sapi2/SapiCache;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 84
    sget-object v0, Lcom/baidu/sapi2/SapiCache;->a:Ljava/util/Map;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method

.method static a(Ljava/lang/String;[B)V
    .registers 8
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .prologue
    .line 511
    const/4 v2, 0x0

    .line 513
    .local v2, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    const-string v4, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 514
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v1, v4, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 515
    .local v1, "outputFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_27

    .line 516
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 518
    :cond_27
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_30

    .line 519
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 521
    :cond_30
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_35} :catch_44
    .catchall {:try_start_1 .. :try_end_35} :catchall_53

    .line 522
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .local v3, "outputStream":Ljava/io/OutputStream;
    :try_start_35
    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_38} :catch_62
    .catchall {:try_start_35 .. :try_end_38} :catchall_5f

    move-object v2, v3

    .line 527
    .end local v1    # "outputFile":Ljava/io/File;
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :cond_39
    if-eqz v2, :cond_3e

    .line 529
    :try_start_3b
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3e} :catch_3f

    .line 535
    :cond_3e
    :goto_3e
    return-void

    .line 530
    :catch_3f
    move-exception v0

    .line 531
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_3e

    .line 524
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_44
    move-exception v0

    .line 525
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_45
    :try_start_45
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_53

    .line 527
    if-eqz v2, :cond_3e

    .line 529
    :try_start_4a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_3e

    .line 530
    :catch_4e
    move-exception v0

    .line 531
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_3e

    .line 527
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_53
    move-exception v4

    :goto_54
    if-eqz v2, :cond_59

    .line 529
    :try_start_56
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_59} :catch_5a

    .line 532
    :cond_59
    :goto_59
    throw v4

    .line 530
    :catch_5a
    move-exception v0

    .line 531
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_59

    .line 527
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "outputFile":Ljava/io/File;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :catchall_5f
    move-exception v4

    move-object v2, v3

    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    goto :goto_54

    .line 524
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :catch_62
    move-exception v0

    move-object v2, v3

    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    goto :goto_45
.end method

.method static a(Lcom/baidu/sapi2/b$a$a;Lcom/baidu/sapi2/b$a$a;)Z
    .registers 6
    .param p0, "newModule"    # Lcom/baidu/sapi2/b$a$a;
    .param p1, "oldModule"    # Lcom/baidu/sapi2/b$a$a;

    .prologue
    .line 449
    iget-object v0, p0, Lcom/baidu/sapi2/b$a$a;->c:Lcom/baidu/sapi2/b$a$a$a;

    iget-wide v0, v0, Lcom/baidu/sapi2/b$a$a$a;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1a

    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/baidu/sapi2/b$a$a;->c:Lcom/baidu/sapi2/b$a$a$a;

    iget-wide v0, v0, Lcom/baidu/sapi2/b$a$a$a;->b:J

    iget-object v2, p1, Lcom/baidu/sapi2/b$a$a;->c:Lcom/baidu/sapi2/b$a$a$a;

    iget-wide v2, v2, Lcom/baidu/sapi2/b$a$a$a;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "moduleId"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->e()V

    .line 117
    invoke-static {p0}, Lcom/baidu/sapi2/d;->a(Landroid/content/Context;)Lcom/baidu/sapi2/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/d;->j()Lcom/baidu/sapi2/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/b;->g()Lcom/baidu/sapi2/b$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/b$a;->a()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 119
    invoke-static {p1}, Lcom/baidu/sapi2/SapiCache;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 143
    .end local v0    # "data":Ljava/lang/String;
    :goto_1f
    return-object v0

    .line 124
    .restart local v0    # "data":Ljava/lang/String;
    :cond_20
    invoke-static {p0, p1}, Lcom/baidu/sapi2/SapiCache;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/sapi2/b$a$a;

    move-result-object v1

    .line 125
    .local v1, "module":Lcom/baidu/sapi2/b$a$a;
    if-eqz v1, :cond_33

    .line 126
    new-instance v2, Lcom/baidu/sapi2/SapiCache$d;

    invoke-direct {v2, p0}, Lcom/baidu/sapi2/SapiCache$d;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/baidu/sapi2/SapiCache;->a(Lcom/baidu/sapi2/b$a$a;Lcom/baidu/sapi2/SapiCache$a;)V

    .line 141
    invoke-static {p1}, Lcom/baidu/sapi2/SapiCache;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    .line 138
    :cond_33
    invoke-static {p0, p1}, Lcom/baidu/sapi2/SapiCache;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    .line 143
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "module":Lcom/baidu/sapi2/b$a$a;
    :cond_38
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "moduleId"    # Ljava/lang/String;

    .prologue
    .line 154
    sget-object v1, Lcom/baidu/sapi2/SapiCache;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    sget-object v1, Lcom/baidu/sapi2/SapiCache;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 156
    sget-object v1, Lcom/baidu/sapi2/SapiCache;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 157
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 161
    .end local v0    # "data":Ljava/lang/String;
    :goto_24
    return-object v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method

.method static b()V
    .registers 8

    .prologue
    .line 318
    sget-object v3, Lcom/baidu/sapi2/SapiCache;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/sapi2/utils/SapiUtils;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 425
    .local v2, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    :goto_8
    return-void

    .line 323
    .end local v2    # "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->c()Lcom/baidu/cloudsdk/common/http/RequestParams;

    move-result-object v2

    .line 324
    .restart local v2    # "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    const-string v3, "/static/appsapi/conf/config.txt"

    invoke-static {v3}, Lcom/baidu/sapi2/utils/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "deviceInfo":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 326
    const-string v3, "di"

    const-string v4, "/static/appsapi/conf/config.txt"

    invoke-static {v4}, Lcom/baidu/sapi2/utils/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_24
    const-string v3, "cdnversion"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x493e0

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    new-instance v3, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;

    invoke-direct {v3}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;-><init>()V

    sget-object v4, Lcom/baidu/sapi2/SapiCache;->d:Landroid/content/Context;

    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->d()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/baidu/sapi2/SapiCache$b;

    invoke-direct {v6}, Lcom/baidu/sapi2/SapiCache$b;-><init>()V

    invoke-virtual {v3, v4, v5, v2, v6}, Lcom/baidu/cloudsdk/common/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cloudsdk/common/http/RequestParams;Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_49} :catch_4a

    goto :goto_8

    .line 422
    .end local v0    # "deviceInfo":Ljava/lang/String;
    :catch_4a
    move-exception v1

    .line 423
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method static declared-synchronized c()Lcom/baidu/cloudsdk/common/http/RequestParams;
    .registers 4

    .prologue
    .line 432
    const-class v2, Lcom/baidu/sapi2/SapiCache;

    monitor-enter v2

    :try_start_3
    new-instance v0, Lcom/baidu/cloudsdk/common/http/RequestParams;

    invoke-direct {v0}, Lcom/baidu/cloudsdk/common/http/RequestParams;-><init>()V

    .line 433
    .local v0, "params":Lcom/baidu/cloudsdk/common/http/RequestParams;
    const-string v1, "tpl"

    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiAccountManager;->getSapiConfiguration()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v3

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v1, "sdk_version"

    const-string v3, "6.10.3"

    invoke-virtual {v0, v1, v3}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string v1, "app_version"

    sget-object v3, Lcom/baidu/sapi2/SapiCache;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/sapi2/utils/SapiUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/baidu/cloudsdk/common/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2b

    .line 437
    monitor-exit v2

    return-object v0

    .line 432
    :catchall_2b
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static c(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/sapi2/b$a$a;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "moduleId"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-static {p0}, Lcom/baidu/sapi2/d;->a(Landroid/content/Context;)Lcom/baidu/sapi2/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/d;->j()Lcom/baidu/sapi2/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/b;->g()Lcom/baidu/sapi2/b$a;

    move-result-object v0

    .line 173
    .local v0, "cache":Lcom/baidu/sapi2/b$a;
    invoke-virtual {v0}, Lcom/baidu/sapi2/b$a;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/sapi2/b$a$a;

    .line 174
    .local v2, "module":Lcom/baidu/sapi2/b$a$a;
    iget-object v3, v2, Lcom/baidu/sapi2/b$a$a;->a:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 178
    .end local v2    # "module":Lcom/baidu/sapi2/b$a$a;
    :goto_28
    return-object v2

    :cond_29
    const/4 v2, 0x0

    goto :goto_28
.end method

.method static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 304
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 305
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_46

    const-string v2, ""

    :goto_1a
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "cacheModuleId":Ljava/lang/String;
    const-string v2, ".html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".html"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    :cond_45
    return-object v0

    .line 305
    .end local v0    # "cacheModuleId":Ljava/lang/String;
    :cond_46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1a
.end method

.method static d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiAccountManager;->getSapiConfiguration()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->environment:Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/Domain;->getConfigUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/static/appsapi/conf/config.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "moduleId"    # Ljava/lang/String;

    .prologue
    .line 286
    invoke-static {p1}, Lcom/baidu/sapi2/b$a$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "assetFile":Ljava/lang/String;
    :try_start_4
    invoke-static {p0, v0}, Lcom/baidu/sapi2/SapiCache;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "data":Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/baidu/sapi2/SapiCache;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-static {p0, p1}, Lcom/baidu/sapi2/SapiCache;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_e} :catch_10

    move-result-object v3

    .line 292
    .end local v1    # "data":Ljava/lang/String;
    :goto_f
    return-object v3

    .line 291
    :catch_10
    move-exception v2

    .line 292
    .local v2, "ignored":Ljava/lang/Throwable;
    const/4 v3, 0x0

    goto :goto_f
.end method

.method static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 546
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 548
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_e
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v0, v2, [B

    .line 549
    .local v0, "buffer":[B
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    .line 550
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_20

    .line 552
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v2

    .end local v0    # "buffer":[B
    :catchall_20
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v2
.end method

.method static e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 566
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 568
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v0, v2, [B

    .line 569
    .local v0, "buffer":[B
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    .line 570
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_16

    .line 572
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v2

    .end local v0    # "buffer":[B
    :catchall_16
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v2
.end method

.method static e()V
    .registers 5

    .prologue
    .line 465
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 466
    .local v3, "removedModuleIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Lcom/baidu/sapi2/SapiCache;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 467
    .local v2, "oldModuleId":Ljava/lang/String;
    sget-object v4, Lcom/baidu/sapi2/SapiCache;->c:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 468
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    invoke-static {v2}, Lcom/baidu/sapi2/SapiCache;->a(Ljava/lang/String;)V

    goto :goto_b

    .line 472
    .end local v2    # "oldModuleId":Ljava/lang/String;
    :cond_26
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2a
    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 473
    .local v1, "moduleId":Ljava/lang/String;
    sget-object v4, Lcom/baidu/sapi2/SapiCache;->b:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 474
    sget-object v4, Lcom/baidu/sapi2/SapiCache;->b:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 477
    .end local v1    # "moduleId":Ljava/lang/String;
    :cond_44
    return-void
.end method

.method static synthetic f()Landroid/content/Context;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/baidu/sapi2/SapiCache;->d:Landroid/content/Context;

    return-object v0
.end method

.method static f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 586
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 588
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v0, v2, [B

    .line 589
    .local v0, "buffer":[B
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    .line 590
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1a

    .line 592
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v2

    .end local v0    # "buffer":[B
    :catchall_1a
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v2
.end method

.method static synthetic g()Ljava/util/List;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/baidu/sapi2/SapiCache;->c:Ljava/util/List;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 188
    if-nez p0, :cond_a

    .line 189
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/baidu/sapi2/SapiCache;->d:Landroid/content/Context;

    .line 192
    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->a()V

    .line 193
    invoke-static {}, Lcom/baidu/sapi2/SapiCache;->b()V

    .line 194
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountService;->o()V

    .line 195
    return-void
.end method
