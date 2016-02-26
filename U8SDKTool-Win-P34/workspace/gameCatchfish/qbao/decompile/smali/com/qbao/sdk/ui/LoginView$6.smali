.class Lcom/qbao/sdk/ui/LoginView$6;
.super Ljava/lang/Object;
.source "LoginView.java"

# interfaces
.implements Lcom/qbao/core/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/LoginView;->b(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic cZ:Ljava/lang/String;

.field private final synthetic da:Ljava/lang/String;

.field final synthetic eS:Lcom/qbao/sdk/ui/LoginView;

.field private final synthetic eU:Z


# direct methods
.method constructor <init>(Lcom/qbao/sdk/ui/LoginView;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/ui/LoginView$6;->eS:Lcom/qbao/sdk/ui/LoginView;

    iput-object p2, p0, Lcom/qbao/sdk/ui/LoginView$6;->cZ:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/qbao/sdk/ui/LoginView$6;->eU:Z

    iput-object p4, p0, Lcom/qbao/sdk/ui/LoginView$6;->da:Ljava/lang/String;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 208
    iget-object v0, p0, Lcom/qbao/sdk/ui/LoginView$6;->eS:Lcom/qbao/sdk/ui/LoginView;

    invoke-virtual {v0}, Lcom/qbao/sdk/ui/LoginView;->am()V

    .line 209
    iget-object v0, p0, Lcom/qbao/sdk/ui/LoginView$6;->eS:Lcom/qbao/sdk/ui/LoginView;

    iget-object v0, v0, Lcom/qbao/sdk/ui/LoginView;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/qbao/core/util/o;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 6

    .prologue
    .line 192
    iget-object v0, p0, Lcom/qbao/sdk/ui/LoginView$6;->eS:Lcom/qbao/sdk/ui/LoginView;

    invoke-virtual {v0}, Lcom/qbao/sdk/ui/LoginView;->am()V

    .line 193
    invoke-static {}, Lcom/qbao/sdk/a/a;->Y()Lcom/qbao/sdk/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/qbao/sdk/ui/LoginView$6;->cZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qbao/sdk/a/a;->P(Ljava/lang/String;)V

    .line 194
    iget-boolean v0, p0, Lcom/qbao/sdk/ui/LoginView$6;->eU:Z

    if-eqz v0, :cond_39

    .line 195
    invoke-static {}, Lcom/qbao/sdk/a/a;->Y()Lcom/qbao/sdk/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/qbao/sdk/ui/LoginView$6;->da:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qbao/sdk/a/a;->Q(Ljava/lang/String;)V

    .line 199
    :goto_1b
    iget-object v0, p0, Lcom/qbao/sdk/ui/LoginView$6;->eS:Lcom/qbao/sdk/ui/LoginView;

    invoke-static {v0}, Lcom/qbao/sdk/ui/LoginView;->c(Lcom/qbao/sdk/ui/LoginView;)Lcom/qbao/sdk/api/QbaoSdk$ILoginCallback;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 200
    iget-object v0, p0, Lcom/qbao/sdk/ui/LoginView$6;->eS:Lcom/qbao/sdk/ui/LoginView;

    invoke-static {v0}, Lcom/qbao/sdk/ui/LoginView;->c(Lcom/qbao/sdk/ui/LoginView;)Lcom/qbao/sdk/api/QbaoSdk$ILoginCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lcom/qbao/sdk/api/QbaoSdk$ILoginCallback;->onResult(ILjava/lang/String;Ljava/lang/Object;)V

    .line 202
    :cond_33
    iget-object v0, p0, Lcom/qbao/sdk/ui/LoginView$6;->eS:Lcom/qbao/sdk/ui/LoginView;

    invoke-virtual {v0}, Lcom/qbao/sdk/ui/LoginView;->finish()V

    .line 204
    return-void

    .line 197
    :cond_39
    invoke-static {}, Lcom/qbao/sdk/a/a;->Y()Lcom/qbao/sdk/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qbao/sdk/a/a;->ab()V

    goto :goto_1b
.end method
