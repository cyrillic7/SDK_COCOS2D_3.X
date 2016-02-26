.class public Lcom/baidu/android/pushservice/c/g;
.super Lcom/baidu/android/pushservice/c/e;


# static fields
.field private static volatile d:Lcom/baidu/android/pushservice/c/g;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/baidu/android/pushservice/c/c;->d:Lcom/baidu/android/pushservice/c/c;

    invoke-direct {p0, p1, v0}, Lcom/baidu/android/pushservice/c/e;-><init>(Landroid/content/Context;Lcom/baidu/android/pushservice/c/c;)V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/g;
    .registers 4

    const-class v1, Lcom/baidu/android/pushservice/c/g;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/android/pushservice/c/g;->d:Lcom/baidu/android/pushservice/c/g;

    if-nez v0, :cond_12

    new-instance v0, Lcom/baidu/android/pushservice/c/g;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/c/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/android/pushservice/c/g;->d:Lcom/baidu/android/pushservice/c/g;

    :goto_e
    sget-object v0, Lcom/baidu/android/pushservice/c/g;->d:Lcom/baidu/android/pushservice/c/g;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_1b

    monitor-exit v1

    return-object v0

    :cond_12
    :try_start_12
    sget-object v0, Lcom/baidu/android/pushservice/c/g;->d:Lcom/baidu/android/pushservice/c/g;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/android/pushservice/c/g;->b:Landroid/content/Context;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1b

    goto :goto_e

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method
