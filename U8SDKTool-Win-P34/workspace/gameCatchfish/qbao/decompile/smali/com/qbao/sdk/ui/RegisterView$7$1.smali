.class Lcom/qbao/sdk/ui/RegisterView$7$1;
.super Ljava/lang/Object;
.source "RegisterView.java"

# interfaces
.implements Lcom/qbao/core/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/RegisterView$7;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic eI:Ljava/lang/String;

.field final synthetic fg:Lcom/qbao/sdk/ui/RegisterView$7;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/ui/RegisterView$7;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/ui/RegisterView$7$1;->fg:Lcom/qbao/sdk/ui/RegisterView$7;

    iput-object p2, p0, Lcom/qbao/sdk/ui/RegisterView$7$1;->eI:Ljava/lang/String;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 226
    iget-object v0, p0, Lcom/qbao/sdk/ui/RegisterView$7$1;->fg:Lcom/qbao/sdk/ui/RegisterView$7;

    invoke-static {v0}, Lcom/qbao/sdk/ui/RegisterView$7;->a(Lcom/qbao/sdk/ui/RegisterView$7;)Lcom/qbao/sdk/ui/RegisterView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qbao/sdk/ui/RegisterView;->am()V

    .line 227
    iget-object v0, p0, Lcom/qbao/sdk/ui/RegisterView$7$1;->fg:Lcom/qbao/sdk/ui/RegisterView$7;

    invoke-static {v0}, Lcom/qbao/sdk/ui/RegisterView$7;->a(Lcom/qbao/sdk/ui/RegisterView$7;)Lcom/qbao/sdk/ui/RegisterView;

    move-result-object v0

    iget-object v0, v0, Lcom/qbao/sdk/ui/RegisterView;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/qbao/core/util/o;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 6

    .prologue
    .line 215
    iget-object v0, p0, Lcom/qbao/sdk/ui/RegisterView$7$1;->fg:Lcom/qbao/sdk/ui/RegisterView$7;

    invoke-static {v0}, Lcom/qbao/sdk/ui/RegisterView$7;->a(Lcom/qbao/sdk/ui/RegisterView$7;)Lcom/qbao/sdk/ui/RegisterView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qbao/sdk/ui/RegisterView;->am()V

    .line 216
    invoke-static {}, Lcom/qbao/sdk/a/a;->Y()Lcom/qbao/sdk/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/qbao/sdk/ui/RegisterView$7$1;->eI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qbao/sdk/a/a;->P(Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lcom/qbao/sdk/a/a;->Y()Lcom/qbao/sdk/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qbao/sdk/a/a;->ab()V

    .line 218
    iget-object v0, p0, Lcom/qbao/sdk/ui/RegisterView$7$1;->fg:Lcom/qbao/sdk/ui/RegisterView$7;

    invoke-static {v0}, Lcom/qbao/sdk/ui/RegisterView$7;->a(Lcom/qbao/sdk/ui/RegisterView$7;)Lcom/qbao/sdk/ui/RegisterView;

    move-result-object v0

    invoke-static {v0}, Lcom/qbao/sdk/ui/RegisterView;->g(Lcom/qbao/sdk/ui/RegisterView;)Lcom/qbao/sdk/api/QbaoSdk$ILoginCallback;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 219
    iget-object v0, p0, Lcom/qbao/sdk/ui/RegisterView$7$1;->fg:Lcom/qbao/sdk/ui/RegisterView$7;

    invoke-static {v0}, Lcom/qbao/sdk/ui/RegisterView$7;->a(Lcom/qbao/sdk/ui/RegisterView$7;)Lcom/qbao/sdk/ui/RegisterView;

    move-result-object v0

    invoke-static {v0}, Lcom/qbao/sdk/ui/RegisterView;->g(Lcom/qbao/sdk/ui/RegisterView;)Lcom/qbao/sdk/api/QbaoSdk$ILoginCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lcom/qbao/sdk/api/QbaoSdk$ILoginCallback;->onResult(ILjava/lang/String;Ljava/lang/Object;)V

    .line 221
    :cond_39
    iget-object v0, p0, Lcom/qbao/sdk/ui/RegisterView$7$1;->fg:Lcom/qbao/sdk/ui/RegisterView$7;

    invoke-static {v0}, Lcom/qbao/sdk/ui/RegisterView$7;->a(Lcom/qbao/sdk/ui/RegisterView$7;)Lcom/qbao/sdk/ui/RegisterView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qbao/sdk/ui/RegisterView;->finish()V

    .line 222
    return-void
.end method
