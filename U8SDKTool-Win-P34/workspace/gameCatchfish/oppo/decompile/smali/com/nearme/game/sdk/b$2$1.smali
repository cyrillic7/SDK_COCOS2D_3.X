.class final Lcom/nearme/game/sdk/b$2$1;
.super Ljava/lang/Object;
.source "GCInternalImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nearme/game/sdk/b$2;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nearme/game/sdk/b$2;


# direct methods
.method constructor <init>(Lcom/nearme/game/sdk/b$2;)V
    .registers 2

    .prologue
    .line 85
    iput-object p1, p0, Lcom/nearme/game/sdk/b$2$1;->a:Lcom/nearme/game/sdk/b$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nearme/game/sdk/b$2$1;->a:Lcom/nearme/game/sdk/b$2;

    iget-object v0, v0, Lcom/nearme/game/sdk/b$2;->a:Lcom/nearme/game/sdk/b;

    invoke-static {v0}, Lcom/nearme/game/sdk/b;->a(Lcom/nearme/game/sdk/b;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 90
    iget-object v0, p0, Lcom/nearme/game/sdk/b$2$1;->a:Lcom/nearme/game/sdk/b$2;

    iget-object v0, v0, Lcom/nearme/game/sdk/b$2;->a:Lcom/nearme/game/sdk/b;

    invoke-static {v0}, Lcom/nearme/game/sdk/b;->a(Lcom/nearme/game/sdk/b;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 91
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_32

    .line 92
    iget-object v0, p0, Lcom/nearme/game/sdk/b$2$1;->a:Lcom/nearme/game/sdk/b$2;

    iget-object v0, v0, Lcom/nearme/game/sdk/b$2;->a:Lcom/nearme/game/sdk/b;

    const/16 v1, 0x1b61

    invoke-virtual {v0, v1}, Lcom/nearme/game/sdk/b;->a(I)V

    .line 93
    iget-object v0, p0, Lcom/nearme/game/sdk/b$2$1;->a:Lcom/nearme/game/sdk/b$2;

    iget-object v0, v0, Lcom/nearme/game/sdk/b$2;->a:Lcom/nearme/game/sdk/b;

    const/16 v1, 0x1b62

    invoke-virtual {v0, v1}, Lcom/nearme/game/sdk/b;->a(I)V

    .line 96
    :cond_32
    return-void
.end method
