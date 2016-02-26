.class Lcom/tencent/android/tpush/service/channel/i;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/android/tpush/service/channel/b;

.field private b:Lcom/tencent/android/tpush/service/channel/a/a;

.field private c:Lcom/tencent/android/tpush/service/channel/b/i;


# direct methods
.method public constructor <init>(Lcom/tencent/android/tpush/service/channel/b;Lcom/tencent/android/tpush/service/channel/a/a;Lcom/tencent/android/tpush/service/channel/b/i;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 943
    iput-object p1, p0, Lcom/tencent/android/tpush/service/channel/i;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 939
    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/i;->b:Lcom/tencent/android/tpush/service/channel/a/a;

    .line 940
    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/i;->c:Lcom/tencent/android/tpush/service/channel/b/i;

    .line 944
    iput-object p2, p0, Lcom/tencent/android/tpush/service/channel/i;->b:Lcom/tencent/android/tpush/service/channel/a/a;

    .line 945
    iput-object p3, p0, Lcom/tencent/android/tpush/service/channel/i;->c:Lcom/tencent/android/tpush/service/channel/b/i;

    .line 946
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 950
    const-string v0, "XGService"

    const-string v1, "@@PushMessageRunnable run()"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    :try_start_7
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/i;->c:Lcom/tencent/android/tpush/service/channel/b/i;

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/channel/b/i;->f()S

    move-result v0

    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/i;->c:Lcom/tencent/android/tpush/service/channel/b/i;

    invoke-virtual {v1}, Lcom/tencent/android/tpush/service/channel/b/i;->i()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/channel/c/d;->a(S[B)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    .line 954
    invoke-static {}, Lcom/tencent/android/tpush/service/o;->a()Lcom/tencent/android/tpush/service/o;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/android/tpush/service/channel/i;->b:Lcom/tencent/android/tpush/service/channel/a/a;

    invoke-virtual {v2}, Lcom/tencent/android/tpush/service/channel/a/a;->e()Lcom/tencent/android/tpush/service/channel/a;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/tencent/android/tpush/service/o;->a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/a;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_24} :catch_25

    .line 959
    :goto_24
    return-void

    .line 956
    :catch_25
    move-exception v0

    .line 957
    const-string v1, "XGService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24
.end method
