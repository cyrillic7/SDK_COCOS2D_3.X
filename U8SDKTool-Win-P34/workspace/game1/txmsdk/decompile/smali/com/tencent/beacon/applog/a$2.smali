.class final Lcom/tencent/beacon/applog/a$2;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/beacon/applog/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/beacon/applog/a;


# direct methods
.method constructor <init>(Lcom/tencent/beacon/applog/a;)V
    .registers 2

    .prologue
    .line 44
    iput-object p1, p0, Lcom/tencent/beacon/applog/a$2;->a:Lcom/tencent/beacon/applog/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/tencent/beacon/applog/a$2;->a:Lcom/tencent/beacon/applog/a;

    iget-object v0, v0, Lcom/tencent/beacon/applog/a;->a:Lcom/tencent/beacon/b/a;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/tencent/beacon/applog/a$2;->a:Lcom/tencent/beacon/applog/a;

    iget-object v0, v0, Lcom/tencent/beacon/applog/a;->a:Lcom/tencent/beacon/b/a;

    invoke-virtual {v0}, Lcom/tencent/beacon/b/a;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_26

    .line 50
    iget-object v0, p0, Lcom/tencent/beacon/applog/a$2;->a:Lcom/tencent/beacon/applog/a;

    iget-object v1, p0, Lcom/tencent/beacon/applog/a$2;->a:Lcom/tencent/beacon/applog/a;

    iget-object v1, v1, Lcom/tencent/beacon/applog/a;->a:Lcom/tencent/beacon/b/a;

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/applog/a;->c(Lcom/tencent/beacon/b/a;)V

    .line 51
    iget-object v0, p0, Lcom/tencent/beacon/applog/a$2;->a:Lcom/tencent/beacon/applog/a;

    new-instance v1, Lcom/tencent/beacon/b/a;

    invoke-direct {v1}, Lcom/tencent/beacon/b/a;-><init>()V

    iput-object v1, v0, Lcom/tencent/beacon/applog/a;->a:Lcom/tencent/beacon/b/a;
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_26} :catch_27

    .line 57
    :cond_26
    :goto_26
    return-void

    .line 53
    :catch_27
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_26
.end method
