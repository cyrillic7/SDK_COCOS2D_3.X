.class Lcom/tencent/stat/ar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/stat/StatDispatchCallback;


# instance fields
.field final synthetic a:Lcom/tencent/stat/aq;


# direct methods
.method constructor <init>(Lcom/tencent/stat/aq;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/stat/ar;->a:Lcom/tencent/stat/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDispatchFailure()V
    .registers 1

    invoke-static {}, Lcom/tencent/stat/StatServiceImpl;->d()V

    return-void
.end method

.method public onDispatchSuccess()V
    .registers 3

    invoke-static {}, Lcom/tencent/stat/StatServiceImpl;->c()V

    invoke-static {}, Lcom/tencent/stat/au;->b()Lcom/tencent/stat/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/stat/au;->a()I

    move-result v0

    invoke-static {}, Lcom/tencent/stat/StatConfig;->getMaxBatchReportCount()I

    move-result v1

    if-lt v0, v1, :cond_1c

    invoke-static {}, Lcom/tencent/stat/au;->b()Lcom/tencent/stat/au;

    move-result-object v0

    invoke-static {}, Lcom/tencent/stat/StatConfig;->getMaxBatchReportCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/stat/au;->a(I)V

    :cond_1c
    return-void
.end method
