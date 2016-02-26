.class final Lcom/baidu/bdgame/sdk/obf/ay$27$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ay$27$1;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/bdgame/sdk/obf/n",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ay$27$1;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ay$27$1;)V
    .registers 2

    .prologue
    .line 358
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ay$27$1$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$27$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 8

    .prologue
    .line 362
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$27$1$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$27$1;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$27$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$27;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$27;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->m()V

    .line 363
    if-nez p1, :cond_37

    .line 364
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$27$1$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$27$1;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$27$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$27;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$27;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ay$27$1$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$27$1;

    iget-object v1, v1, Lcom/baidu/bdgame/sdk/obf/ay$27$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$27;

    iget-object v1, v1, Lcom/baidu/bdgame/sdk/obf/ay$27;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "bdp_passport_login"

    invoke-static {v0, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/baidu/bdgame/sdk/obf/cd;->b(ILjava/lang/String;Landroid/os/Parcelable;)V

    .line 373
    :goto_36
    return-void

    .line 367
    :cond_37
    const v0, 0x8ca5

    if-ne p1, v0, :cond_5e

    .line 368
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$27$1$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$27$1;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$27$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$27;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$27;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->d(Lcom/baidu/bdgame/sdk/obf/ay;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$27$1$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$27$1;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$27$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$27;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$27;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->m(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/r;->a()Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/s;->b(Ljava/lang/String;)V

    .line 371
    :cond_5e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ay$27$1$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$27$1;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$27$1;->a:Lcom/baidu/bdgame/sdk/obf/ay$27;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ay$27;->a:Lcom/baidu/bdgame/sdk/obf/ay;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ay;->e(Lcom/baidu/bdgame/sdk/obf/ay;)Lcom/baidu/bdgame/sdk/obf/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cd;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_36
.end method
