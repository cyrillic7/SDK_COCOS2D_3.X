.class final Lcom/tencent/beacon/heatmap/c$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/beacon/heatmap/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/beacon/heatmap/c;


# direct methods
.method constructor <init>(Lcom/tencent/beacon/heatmap/c;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/tencent/beacon/heatmap/c$1;->a:Lcom/tencent/beacon/heatmap/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tencent/beacon/heatmap/c$1;->a:Lcom/tencent/beacon/heatmap/c;

    invoke-static {v0}, Lcom/tencent/beacon/heatmap/c;->a(Lcom/tencent/beacon/heatmap/c;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/tencent/beacon/heatmap/c$1;->a:Lcom/tencent/beacon/heatmap/c;

    invoke-static {v0}, Lcom/tencent/beacon/heatmap/c;->a(Lcom/tencent/beacon/heatmap/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_1b

    .line 35
    iget-object v0, p0, Lcom/tencent/beacon/heatmap/c$1;->a:Lcom/tencent/beacon/heatmap/c;

    invoke-static {v0}, Lcom/tencent/beacon/heatmap/c;->b(Lcom/tencent/beacon/heatmap/c;)V

    .line 37
    :cond_1b
    return-void
.end method
