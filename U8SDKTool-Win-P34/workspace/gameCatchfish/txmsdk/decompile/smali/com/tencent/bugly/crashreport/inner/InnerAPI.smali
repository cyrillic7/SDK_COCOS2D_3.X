.class public Lcom/tencent/bugly/crashreport/inner/InnerAPI;
.super Ljava/lang/Object;
.source "BUGLY"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static postU3dCrashAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "errorType"    # Ljava/lang/String;
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "errorStack"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 32
    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    if-nez p2, :cond_e

    .line 34
    :cond_7
    const-string v0, "post u3d fail args null"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/u;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 37
    :cond_e
    invoke-static {}, Lcom/tencent/bugly/proguard/z;->a()Lcom/tencent/bugly/proguard/z;

    move-result-object v0

    .line 38
    if-nez v0, :cond_1c

    .line 40
    new-instance v0, Lcom/tencent/bugly/crashreport/ReportInitializedException;

    const-string v1, "post u3d fail,Report has not been initialed! pls to call method \'initCrashReport\' first!"

    invoke-direct {v0, v1}, Lcom/tencent/bugly/crashreport/ReportInitializedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_1c
    const-string v1, "post u3d crash %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 44
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method
