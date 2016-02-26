.class Lcom/tencent/android/tpush/service/w;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tencent/android/tpush/service/y;

.field final synthetic c:Lcom/tencent/android/tpush/service/XGWatchdog;


# direct methods
.method constructor <init>(Lcom/tencent/android/tpush/service/XGWatchdog;Ljava/lang/String;Lcom/tencent/android/tpush/service/y;)V
    .registers 4

    .prologue
    .line 217
    iput-object p1, p0, Lcom/tencent/android/tpush/service/w;->c:Lcom/tencent/android/tpush/service/XGWatchdog;

    iput-object p2, p0, Lcom/tencent/android/tpush/service/w;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/android/tpush/service/w;->b:Lcom/tencent/android/tpush/service/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/tencent/android/tpush/service/w;->c:Lcom/tencent/android/tpush/service/XGWatchdog;

    iget-object v1, p0, Lcom/tencent/android/tpush/service/w;->a:Ljava/lang/String;

    # invokes: Lcom/tencent/android/tpush/service/XGWatchdog;->directSendContent(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/XGWatchdog;->access$000(Lcom/tencent/android/tpush/service/XGWatchdog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/tencent/android/tpush/service/w;->b:Lcom/tencent/android/tpush/service/y;

    if-eqz v1, :cond_11

    .line 222
    iget-object v1, p0, Lcom/tencent/android/tpush/service/w;->b:Lcom/tencent/android/tpush/service/y;

    invoke-interface {v1, v0}, Lcom/tencent/android/tpush/service/y;->a(Ljava/lang/String;)V

    .line 224
    :cond_11
    return-void
.end method
