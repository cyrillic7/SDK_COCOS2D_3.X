.class Lcom/baidu/android/pushservice/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/android/pushservice/PushSDK;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/PushSDK;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/v;->a:Lcom/baidu/android/pushservice/PushSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    # getter for: Lcom/baidu/android/pushservice/PushSDK;->mPushConnLock:Ljava/lang/Object;
    invoke-static {}, Lcom/baidu/android/pushservice/PushSDK;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mPushConnection:Lcom/baidu/android/pushservice/h;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/baidu/android/pushservice/PushSDK;->mPushConnection:Lcom/baidu/android/pushservice/h;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/h;->b()V

    :cond_e
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_10

    throw v0
.end method
