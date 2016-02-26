.class final Lcom/tencent/beacon/a/f$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/beacon/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/beacon/a/f;


# direct methods
.method constructor <init>(Lcom/tencent/beacon/a/f;)V
    .registers 2

    .prologue
    .line 81
    iput-object p1, p0, Lcom/tencent/beacon/a/f$1;->a:Lcom/tencent/beacon/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/tencent/beacon/a/f$1;->a:Lcom/tencent/beacon/a/f;

    iget-object v0, v0, Lcom/tencent/beacon/a/f;->a:Landroid/content/Context;

    if-eqz v0, :cond_d

    .line 86
    iget-object v0, p0, Lcom/tencent/beacon/a/f$1;->a:Lcom/tencent/beacon/a/f;

    iget-object v0, v0, Lcom/tencent/beacon/a/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/beacon/a/h;->c(Landroid/content/Context;)Lcom/tencent/beacon/a/a/e;

    .line 87
    :cond_d
    return-void
.end method
