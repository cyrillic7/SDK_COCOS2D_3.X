.class Lcom/tencent/tmassistantsdk/internal/c/f;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tmassistantbase/network/INetworkChangedObserver;


# instance fields
.field final synthetic a:Lcom/tencent/tmassistantsdk/internal/c/e;


# direct methods
.method constructor <init>(Lcom/tencent/tmassistantsdk/internal/c/e;)V
    .registers 2

    .prologue
    .line 106
    iput-object p1, p0, Lcom/tencent/tmassistantsdk/internal/c/f;->a:Lcom/tencent/tmassistantsdk/internal/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkChanged()V
    .registers 6

    .prologue
    .line 110
    const-string v0, "LogReportManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNetworkChanged,netState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getNetStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/tencent/tmassistantsdk/internal/c/e;->e()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_23
    if-ge v1, v3, :cond_3f

    aget-object v0, v2, v1

    .line 115
    :try_start_27
    const-class v4, Lcom/tencent/tmassistantsdk/internal/c/b;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 116
    invoke-static {}, Lcom/tencent/tmassistantsdk/internal/c/b;->h()Lcom/tencent/tmassistantsdk/internal/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/internal/c/b;->d()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_36} :catch_3a

    .line 113
    :cond_36
    :goto_36
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_23

    .line 118
    :catch_3a
    move-exception v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_36

    .line 125
    :cond_3f
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->isNetworkConncted()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getNetStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 127
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/c/f;->a:Lcom/tencent/tmassistantsdk/internal/c/e;

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/internal/c/e;->c()V

    .line 129
    :cond_56
    return-void
.end method
