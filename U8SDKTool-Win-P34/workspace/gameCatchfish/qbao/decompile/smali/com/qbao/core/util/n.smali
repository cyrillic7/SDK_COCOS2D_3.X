.class public Lcom/qbao/core/util/n;
.super Ljava/lang/Object;
.source "SyncedStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qbao/core/util/n$a;,
        Lcom/qbao/core/util/n$b;
    }
.end annotation


# static fields
.field public static final FILENAME:Ljava/lang/String; = "sdk_prefs"

.field private static final TAG:Ljava/lang/String; = "DistributedPrefs"

.field public static final cE:Ljava/lang/String; = "sdk_prefs.txt"


# instance fields
.field private cF:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cG:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qbao/core/util/n;->cF:Ljava/util/HashMap;

    .line 151
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/qbao/core/util/n;->cG:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 152
    invoke-virtual {p0}, Lcom/qbao/core/util/n;->W()V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/qbao/core/util/n;->mContext:Landroid/content/Context;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qbao/core/util/n;->cF:Ljava/util/HashMap;

    .line 145
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/qbao/core/util/n;->cG:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 146
    invoke-virtual {p0}, Lcom/qbao/core/util/n;->load()V

    .line 147
    return-void
.end method

.method public static final X()Z
    .registers 2

    .prologue
    .line 284
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 285
    const/4 v0, 0x1

    .line 287
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static synthetic a(Lcom/qbao/core/util/n;)Ljava/util/HashMap;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/qbao/core/util/n;->cF:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic b(Lcom/qbao/core/util/n;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/qbao/core/util/n;->cG:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method private static e(Ljava/io/File;)Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 204
    .line 207
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_6} :catch_2c
    .catch Ljava/io/StreamCorruptedException; {:try_start_1 .. :try_end_6} :catch_53
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_72
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_91
    .catchall {:try_start_1 .. :try_end_6} :catchall_b0

    .line 208
    :try_start_6
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_b} :catch_fb
    .catch Ljava/io/StreamCorruptedException; {:try_start_6 .. :try_end_b} :catch_f4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_ef
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_b} :catch_ea
    .catchall {:try_start_6 .. :try_end_b} :catchall_e0

    .line 209
    :try_start_b
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_c8

    instance-of v4, v0, Ljava/util/HashMap;

    if-eqz v4, :cond_c8

    .line 211
    check-cast v0, Ljava/util/HashMap;
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_17} :catch_100
    .catch Ljava/io/StreamCorruptedException; {:try_start_b .. :try_end_17} :catch_f8
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_17} :catch_f2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_17} :catch_ed
    .catchall {:try_start_b .. :try_end_17} :catchall_e3

    .line 223
    if-eqz v2, :cond_1d

    .line 224
    :try_start_19
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 233
    :cond_1c
    :goto_1c
    return-object v0

    .line 225
    :cond_1d
    if-eqz v3, :cond_1c

    .line 226
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_22} :catch_23

    goto :goto_1c

    .line 228
    :catch_23
    move-exception v1

    .line 229
    const-string v1, "DistributedPrefs"

    const-string v2, "IOException while cleaning up"

    invoke-static {v1, v2}, Lcom/qbao/core/util/p;->q(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    .line 213
    :catch_2c
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    .line 214
    :goto_2f
    :try_start_2f
    const-string v3, "DistributedPrefs"

    const-string v4, "Couldn\'t open sdk_prefs"

    invoke-static {v3, v4}, Lcom/qbao/core/util/p;->q(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_e5

    .line 223
    if-eqz v0, :cond_44

    .line 224
    :try_start_38
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_4a

    .line 232
    :cond_3b
    :goto_3b
    const-string v0, "DistributedPrefs"

    const-string v2, "Nothing to find...."

    invoke-static {v0, v2}, Lcom/qbao/core/util/p;->q(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 233
    goto :goto_1c

    .line 225
    :cond_44
    if-eqz v2, :cond_3b

    .line 226
    :try_start_46
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_3b

    .line 228
    :catch_4a
    move-exception v0

    .line 229
    const-string v0, "DistributedPrefs"

    const-string v2, "IOException while cleaning up"

    invoke-static {v0, v2}, Lcom/qbao/core/util/p;->q(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    .line 215
    :catch_53
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 216
    :goto_56
    :try_start_56
    const-string v0, "DistributedPrefs"

    const-string v4, "StreamCorruptedException"

    invoke-static {v0, v4}, Lcom/qbao/core/util/p;->q(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_e3

    .line 223
    if-eqz v2, :cond_6c

    .line 224
    :try_start_5f
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63

    goto :goto_3b

    .line 228
    :catch_63
    move-exception v0

    .line 229
    const-string v0, "DistributedPrefs"

    const-string v2, "IOException while cleaning up"

    invoke-static {v0, v2}, Lcom/qbao/core/util/p;->q(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    .line 225
    :cond_6c
    if-eqz v3, :cond_3b

    .line 226
    :try_start_6e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_63

    goto :goto_3b

    .line 217
    :catch_72
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 218
    :goto_75
    :try_start_75
    const-string v0, "DistributedPrefs"

    const-string v4, "IOException while reading"

    invoke-static {v0, v4}, Lcom/qbao/core/util/p;->q(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_75 .. :try_end_7c} :catchall_e3

    .line 223
    if-eqz v2, :cond_8b

    .line 224
    :try_start_7e
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_82

    goto :goto_3b

    .line 228
    :catch_82
    move-exception v0

    .line 229
    const-string v0, "DistributedPrefs"

    const-string v2, "IOException while cleaning up"

    invoke-static {v0, v2}, Lcom/qbao/core/util/p;->q(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    .line 225
    :cond_8b
    if-eqz v3, :cond_3b

    .line 226
    :try_start_8d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_82

    goto :goto_3b

    .line 219
    :catch_91
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 220
    :goto_94
    :try_start_94
    const-string v0, "DistributedPrefs"

    const-string v4, "ClassNotFoundException"

    invoke-static {v0, v4}, Lcom/qbao/core/util/p;->q(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9b
    .catchall {:try_start_94 .. :try_end_9b} :catchall_e3

    .line 223
    if-eqz v2, :cond_aa

    .line 224
    :try_start_9d
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_a1

    goto :goto_3b

    .line 228
    :catch_a1
    move-exception v0

    .line 229
    const-string v0, "DistributedPrefs"

    const-string v2, "IOException while cleaning up"

    invoke-static {v0, v2}, Lcom/qbao/core/util/p;->q(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    .line 225
    :cond_aa
    if-eqz v3, :cond_3b

    .line 226
    :try_start_ac
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_a1

    goto :goto_3b

    .line 221
    :catchall_b0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 223
    :goto_b3
    if-eqz v2, :cond_b9

    .line 224
    :try_start_b5
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_b8} :catch_bf

    .line 231
    :cond_b8
    :goto_b8
    throw v0

    .line 225
    :cond_b9
    if-eqz v3, :cond_b8

    .line 226
    :try_start_bb
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_bf

    goto :goto_b8

    .line 228
    :catch_bf
    move-exception v1

    .line 229
    const-string v1, "DistributedPrefs"

    const-string v2, "IOException while cleaning up"

    invoke-static {v1, v2}, Lcom/qbao/core/util/p;->q(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b8

    .line 223
    :cond_c8
    if-eqz v2, :cond_d9

    .line 224
    :try_start_ca
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_cd} :catch_cf

    goto/16 :goto_3b

    .line 228
    :catch_cf
    move-exception v0

    .line 229
    const-string v0, "DistributedPrefs"

    const-string v2, "IOException while cleaning up"

    invoke-static {v0, v2}, Lcom/qbao/core/util/p;->q(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3b

    .line 225
    :cond_d9
    if-eqz v3, :cond_3b

    .line 226
    :try_start_db
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_de} :catch_cf

    goto/16 :goto_3b

    .line 221
    :catchall_e0
    move-exception v0

    move-object v2, v1

    goto :goto_b3

    :catchall_e3
    move-exception v0

    goto :goto_b3

    :catchall_e5
    move-exception v1

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    goto :goto_b3

    .line 219
    :catch_ea
    move-exception v0

    move-object v2, v1

    goto :goto_94

    :catch_ed
    move-exception v0

    goto :goto_94

    .line 217
    :catch_ef
    move-exception v0

    move-object v2, v1

    goto :goto_75

    :catch_f2
    move-exception v0

    goto :goto_75

    .line 215
    :catch_f4
    move-exception v0

    move-object v2, v1

    goto/16 :goto_56

    :catch_f8
    move-exception v0

    goto/16 :goto_56

    .line 213
    :catch_fb
    move-exception v0

    move-object v0, v1

    move-object v2, v3

    goto/16 :goto_2f

    :catch_100
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    goto/16 :goto_2f
.end method


# virtual methods
.method public U()Lcom/qbao/core/util/n$a;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/qbao/core/util/n;->cG:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 70
    new-instance v0, Lcom/qbao/core/util/n$a;

    invoke-direct {v0, p0}, Lcom/qbao/core/util/n$a;-><init>(Lcom/qbao/core/util/n;)V

    return-object v0
.end method

.method public V()Lcom/qbao/core/util/n$b;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/qbao/core/util/n;->cG:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 107
    new-instance v0, Lcom/qbao/core/util/n$b;

    invoke-direct {v0, p0}, Lcom/qbao/core/util/n$b;-><init>(Lcom/qbao/core/util/n;)V

    return-object v0
.end method

.method public W()V
    .registers 6

    .prologue
    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qbao/core/util/n;->cF:Ljava/util/HashMap;

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 158
    invoke-static {}, Lcom/qbao/core/util/n;->X()Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 160
    :try_start_d
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 161
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/Download/data/com.qbao.sdk"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_36

    .line 163
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 165
    :cond_36
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sdk_prefs.txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    iget-object v3, p0, Lcom/qbao/core/util/n;->cG:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 168
    invoke-static {v2}, Lcom/qbao/core/util/n;->e(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/qbao/core/util/n;->cF:Ljava/util/HashMap;

    .line 169
    iget-object v2, p0, Lcom/qbao/core/util/n;->cF:Ljava/util/HashMap;

    if-nez v2, :cond_72

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/qbao/core/util/n;->cF:Ljava/util/HashMap;

    .line 170
    :cond_72
    const-string v2, "DistributedPrefs"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "loadExternalStorage.map="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/qbao/core/util/n;->cF:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qbao/core/util/p;->q(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_8c} :catch_c1
    .catchall {:try_start_d .. :try_end_8c} :catchall_d3

    .line 174
    iget-object v2, p0, Lcom/qbao/core/util/n;->cG:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 176
    :goto_95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 177
    const-string v2, "DistributedPrefs"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Loading prefs took "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/qbao/core/util/p;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_b5
    iget-object v0, p0, Lcom/qbao/core/util/n;->cF:Ljava/util/HashMap;

    if-nez v0, :cond_c0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qbao/core/util/n;->cF:Ljava/util/HashMap;

    .line 180
    :cond_c0
    return-void

    .line 171
    :catch_c1
    move-exception v2

    .line 172
    :try_start_c2
    const-string v2, "DistributedPrefs"

    const-string v3, "broken"

    invoke-static {v2, v3}, Lcom/qbao/core/util/p;->q(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c9
    .catchall {:try_start_c2 .. :try_end_c9} :catchall_d3

    .line 174
    iget-object v2, p0, Lcom/qbao/core/util/n;->cG:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_95

    .line 173
    :catchall_d3
    move-exception v0

    .line 174
    iget-object v1, p0, Lcom/qbao/core/util/n;->cG:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 175
    throw v0
.end method

.method public load()V
    .registers 6

    .prologue
    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qbao/core/util/n;->cF:Ljava/util/HashMap;

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 188
    iget-object v2, p0, Lcom/qbao/core/util/n;->mContext:Landroid/content/Context;

    const-string v3, "sdk_prefs"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 189
    iget-object v3, p0, Lcom/qbao/core/util/n;->cG:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 191
    :try_start_18
    invoke-static {v2}, Lcom/qbao/core/util/n;->e(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/qbao/core/util/n;->cF:Ljava/util/HashMap;

    .line 192
    iget-object v2, p0, Lcom/qbao/core/util/n;->cF:Ljava/util/HashMap;

    if-nez v2, :cond_29

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/qbao/core/util/n;->cF:Ljava/util/HashMap;

    .line 193
    :cond_29
    const-string v2, "DistributedPrefs"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "map="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/qbao/core/util/n;->cF:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qbao/core/util/p;->q(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_43} :catch_6d
    .catchall {:try_start_18 .. :try_end_43} :catchall_7f

    .line 197
    iget-object v2, p0, Lcom/qbao/core/util/n;->cG:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 199
    :goto_4c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 200
    const-string v2, "DistributedPrefs"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Loading prefs took "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/qbao/core/util/p;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void

    .line 194
    :catch_6d
    move-exception v2

    .line 195
    :try_start_6e
    const-string v2, "DistributedPrefs"

    const-string v3, "broken"

    invoke-static {v2, v3}, Lcom/qbao/core/util/p;->q(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_6e .. :try_end_75} :catchall_7f

    .line 197
    iget-object v2, p0, Lcom/qbao/core/util/n;->cG:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_4c

    .line 196
    :catchall_7f
    move-exception v0

    .line 197
    iget-object v1, p0, Lcom/qbao/core/util/n;->cG:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 198
    throw v0
.end method

.method public save()V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 240
    .line 243
    iget-object v1, p0, Lcom/qbao/core/util/n;->cG:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 245
    :try_start_a
    iget-object v1, p0, Lcom/qbao/core/util/n;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_4a

    .line 246
    iget-object v1, p0, Lcom/qbao/core/util/n;->mContext:Landroid/content/Context;

    const-string v2, "sdk_prefs"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_16} :catch_cf
    .catchall {:try_start_a .. :try_end_16} :catchall_10c

    move-result-object v2

    .line 263
    :goto_17
    :try_start_17
    const-string v1, "DistributedPrefs"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "save.map="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/qbao/core/util/n;->cF:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qbao/core/util/p;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_36} :catch_175
    .catchall {:try_start_17 .. :try_end_36} :catchall_168

    .line 265
    :try_start_36
    iget-object v0, p0, Lcom/qbao/core/util/n;->cF:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3b} :catch_179
    .catchall {:try_start_36 .. :try_end_3b} :catchall_16d

    .line 270
    if-eqz v1, :cond_143

    .line 271
    :try_start_3d
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_14a
    .catchall {:try_start_3d .. :try_end_40} :catchall_15d

    .line 278
    :cond_40
    :goto_40
    iget-object v0, p0, Lcom/qbao/core/util/n;->cG:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 281
    :goto_49
    return-void

    .line 248
    :cond_4a
    :try_start_4a
    invoke-static {}, Lcom/qbao/core/util/n;->X()Z

    move-result v1

    if-eqz v1, :cond_17e

    .line 249
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 250
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/Download/data/com.qbao.sdk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_79

    .line 252
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 255
    :cond_79
    const-string v3, "DistributedPrefs"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "save="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "sdk_prefs.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qbao/core/util/p;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "sdk_prefs.txt"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_c8

    .line 258
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 260
    :cond_c8
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_cd} :catch_cf
    .catchall {:try_start_4a .. :try_end_cd} :catchall_10c

    goto/16 :goto_17

    .line 266
    :catch_cf
    move-exception v1

    move-object v1, v0

    .line 267
    :goto_d1
    :try_start_d1
    const-string v2, "DistributedPrefs"

    const-string v3, "Couldn\'t open sdk_prefs for writing"

    invoke-static {v2, v3}, Lcom/qbao/core/util/p;->q(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d8
    .catchall {:try_start_d1 .. :try_end_d8} :catchall_16f

    .line 270
    if-eqz v0, :cond_e8

    .line 271
    :try_start_da
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_dd} :catch_ee
    .catchall {:try_start_da .. :try_end_dd} :catchall_101

    .line 278
    :cond_dd
    :goto_dd
    iget-object v0, p0, Lcom/qbao/core/util/n;->cG:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto/16 :goto_49

    .line 272
    :cond_e8
    if-eqz v1, :cond_dd

    .line 273
    :try_start_ea
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_ed} :catch_ee
    .catchall {:try_start_ea .. :try_end_ed} :catchall_101

    goto :goto_dd

    .line 275
    :catch_ee
    move-exception v0

    .line 276
    :try_start_ef
    const-string v0, "DistributedPrefs"

    const-string v1, "IOException while cleaning up"

    invoke-static {v0, v1}, Lcom/qbao/core/util/p;->q(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f6
    .catchall {:try_start_ef .. :try_end_f6} :catchall_101

    .line 278
    iget-object v0, p0, Lcom/qbao/core/util/n;->cG:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto/16 :goto_49

    .line 277
    :catchall_101
    move-exception v0

    .line 278
    iget-object v1, p0, Lcom/qbao/core/util/n;->cG:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 279
    throw v0

    .line 268
    :catchall_10c
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 270
    :goto_111
    if-eqz v1, :cond_120

    .line 271
    :try_start_113
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_116} :catch_126
    .catchall {:try_start_113 .. :try_end_116} :catchall_138

    .line 278
    :cond_116
    :goto_116
    iget-object v1, p0, Lcom/qbao/core/util/n;->cG:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 280
    :goto_11f
    throw v0

    .line 272
    :cond_120
    if-eqz v2, :cond_116

    .line 273
    :try_start_122
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_125
    .catch Ljava/io/IOException; {:try_start_122 .. :try_end_125} :catch_126
    .catchall {:try_start_122 .. :try_end_125} :catchall_138

    goto :goto_116

    .line 275
    :catch_126
    move-exception v1

    .line 276
    :try_start_127
    const-string v1, "DistributedPrefs"

    const-string v2, "IOException while cleaning up"

    invoke-static {v1, v2}, Lcom/qbao/core/util/p;->q(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12e
    .catchall {:try_start_127 .. :try_end_12e} :catchall_138

    .line 278
    iget-object v1, p0, Lcom/qbao/core/util/n;->cG:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_11f

    .line 277
    :catchall_138
    move-exception v0

    .line 278
    iget-object v1, p0, Lcom/qbao/core/util/n;->cG:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 279
    throw v0

    .line 272
    :cond_143
    if-eqz v2, :cond_40

    .line 273
    :try_start_145
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_148
    .catch Ljava/io/IOException; {:try_start_145 .. :try_end_148} :catch_14a
    .catchall {:try_start_145 .. :try_end_148} :catchall_15d

    goto/16 :goto_40

    .line 275
    :catch_14a
    move-exception v0

    .line 276
    :try_start_14b
    const-string v0, "DistributedPrefs"

    const-string v1, "IOException while cleaning up"

    invoke-static {v0, v1}, Lcom/qbao/core/util/p;->q(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_152
    .catchall {:try_start_14b .. :try_end_152} :catchall_15d

    .line 278
    iget-object v0, p0, Lcom/qbao/core/util/n;->cG:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto/16 :goto_49

    .line 277
    :catchall_15d
    move-exception v0

    .line 278
    iget-object v1, p0, Lcom/qbao/core/util/n;->cG:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 279
    throw v0

    .line 268
    :catchall_168
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_111

    :catchall_16d
    move-exception v0

    goto :goto_111

    :catchall_16f
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_111

    .line 266
    :catch_175
    move-exception v1

    move-object v1, v2

    goto/16 :goto_d1

    :catch_179
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_d1

    :cond_17e
    move-object v2, v0

    goto/16 :goto_17
.end method
