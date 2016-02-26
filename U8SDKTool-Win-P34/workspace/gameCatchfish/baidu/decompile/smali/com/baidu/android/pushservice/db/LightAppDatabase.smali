.class public Lcom/baidu/android/pushservice/db/LightAppDatabase;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/android/pushservice/util/NoProGuard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/android/pushservice/db/LightAppDatabase$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LightAppDatabase"

.field private static mDbHelper:Lcom/baidu/android/pushservice/db/LightAppDatabase$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/android/pushservice/db/LightAppDatabase;->mDbHelper:Lcom/baidu/android/pushservice/db/LightAppDatabase$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized getDBOpenHelper(Landroid/content/Context;)Lcom/baidu/android/pushservice/db/LightAppDatabase$a;
    .registers 5

    const-class v1, Lcom/baidu/android/pushservice/db/LightAppDatabase;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "baidu/pushservice/database"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_35

    const/4 v2, 0x0

    sput-object v2, Lcom/baidu/android/pushservice/db/LightAppDatabase;->mDbHelper:Lcom/baidu/android/pushservice/db/LightAppDatabase$a;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_35
    sget-object v2, Lcom/baidu/android/pushservice/db/LightAppDatabase;->mDbHelper:Lcom/baidu/android/pushservice/db/LightAppDatabase$a;

    if-nez v2, :cond_5e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "pushlappv2.db"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/baidu/android/pushservice/db/LightAppDatabase$a;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v0, v3}, Lcom/baidu/android/pushservice/db/LightAppDatabase$a;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v2, Lcom/baidu/android/pushservice/db/LightAppDatabase;->mDbHelper:Lcom/baidu/android/pushservice/db/LightAppDatabase$a;

    :cond_5e
    sget-object v0, Lcom/baidu/android/pushservice/db/LightAppDatabase;->mDbHelper:Lcom/baidu/android/pushservice/db/LightAppDatabase$a;
    :try_end_60
    .catchall {:try_start_3 .. :try_end_60} :catchall_62

    monitor-exit v1

    return-object v0

    :catchall_62
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getWritableDb(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 7

    const/4 v0, 0x0

    const-class v1, Lcom/baidu/android/pushservice/db/LightAppDatabase;

    monitor-enter v1

    :try_start_4
    invoke-static {}, Lcom/baidu/android/pushservice/util/f;->a()Z
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_3a

    move-result v2

    if-nez v2, :cond_c

    :cond_a
    :goto_a
    monitor-exit v1

    return-object v0

    :cond_c
    :try_start_c
    invoke-static {p0}, Lcom/baidu/android/pushservice/db/LightAppDatabase;->getDBOpenHelper(Landroid/content/Context;)Lcom/baidu/android/pushservice/db/LightAppDatabase$a;
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_3a

    move-result-object v2

    if-eqz v2, :cond_a

    :try_start_12
    invoke-virtual {v2}, Lcom/baidu/android/pushservice/db/LightAppDatabase$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_15
    .catch Landroid/database/SQLException; {:try_start_12 .. :try_end_15} :catch_17
    .catchall {:try_start_12 .. :try_end_15} :catchall_3a

    move-result-object v0

    goto :goto_a

    :catch_17
    move-exception v2

    const/4 v3, 0x0

    :try_start_19
    sput-object v3, Lcom/baidu/android/pushservice/db/LightAppDatabase;->mDbHelper:Lcom/baidu/android/pushservice/db/LightAppDatabase$a;

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "LightAppDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWritableDb exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_19 .. :try_end_39} :catchall_3a

    goto :goto_a

    :catchall_3a
    move-exception v0

    monitor-exit v1

    throw v0
.end method
