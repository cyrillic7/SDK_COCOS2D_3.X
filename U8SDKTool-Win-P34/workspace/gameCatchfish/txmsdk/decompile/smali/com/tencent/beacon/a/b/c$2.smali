.class final Lcom/tencent/beacon/a/b/c$2;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/beacon/a/b/c;->a(Lcom/tencent/beacon/a/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/beacon/a/b/b;

.field private synthetic b:I


# direct methods
.method constructor <init>(Lcom/tencent/beacon/a/b/c;Lcom/tencent/beacon/a/b/b;I)V
    .registers 4

    .prologue
    .line 259
    iput-object p2, p0, Lcom/tencent/beacon/a/b/c$2;->a:Lcom/tencent/beacon/a/b/b;

    iput p3, p0, Lcom/tencent/beacon/a/b/c$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 263
    iget-object v0, p0, Lcom/tencent/beacon/a/b/c$2;->a:Lcom/tencent/beacon/a/b/b;

    invoke-interface {v0}, Lcom/tencent/beacon/a/b/b;->a()V

    .line 264
    iget v0, p0, Lcom/tencent/beacon/a/b/c$2;->b:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_17

    .line 265
    const-string v0, "query finished should notify"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/beacon/e/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    iget-object v0, p0, Lcom/tencent/beacon/a/b/c$2;->a:Lcom/tencent/beacon/a/b/b;

    invoke-interface {v0}, Lcom/tencent/beacon/a/b/b;->b()V

    .line 268
    :cond_17
    return-void
.end method
