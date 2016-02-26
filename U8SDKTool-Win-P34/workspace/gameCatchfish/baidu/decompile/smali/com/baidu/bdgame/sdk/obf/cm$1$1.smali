.class final Lcom/baidu/bdgame/sdk/obf/cm$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/dj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/cm$1;->b(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/cm$1;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/cm$1;)V
    .registers 2

    .prologue
    .line 259
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cm$1$1;->a:Lcom/baidu/bdgame/sdk/obf/cm$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 4

    .prologue
    .line 263
    if-eqz p1, :cond_6b

    .line 265
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm$1$1;->a:Lcom/baidu/bdgame/sdk/obf/cm$1;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/cm$1;->a:Lcom/baidu/bdgame/sdk/obf/cm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cm;->a(Lcom/baidu/bdgame/sdk/obf/cm;)Lcom/baidu/bdgame/sdk/obf/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->s()Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->e()Lcom/baidu/bdgame/sdk/obf/cr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->o()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    .line 267
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm$1$1;->a:Lcom/baidu/bdgame/sdk/obf/cm$1;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/cm$1;->a:Lcom/baidu/bdgame/sdk/obf/cm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cm;->d(Lcom/baidu/bdgame/sdk/obf/cm;)Lcom/baidu/bdgame/sdk/obf/cq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cq;->a()V

    .line 284
    :cond_24
    :goto_24
    return-void

    .line 268
    :cond_25
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm$1$1;->a:Lcom/baidu/bdgame/sdk/obf/cm$1;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/cm$1;->a:Lcom/baidu/bdgame/sdk/obf/cm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cm;->a(Lcom/baidu/bdgame/sdk/obf/cm;)Lcom/baidu/bdgame/sdk/obf/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->s()Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->e()Lcom/baidu/bdgame/sdk/obf/cr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->o()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_48

    .line 270
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm$1$1;->a:Lcom/baidu/bdgame/sdk/obf/cm$1;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/cm$1;->a:Lcom/baidu/bdgame/sdk/obf/cm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cm;->d(Lcom/baidu/bdgame/sdk/obf/cm;)Lcom/baidu/bdgame/sdk/obf/cq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cq;->b()V

    goto :goto_24

    .line 271
    :cond_48
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm$1$1;->a:Lcom/baidu/bdgame/sdk/obf/cm$1;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/cm$1;->a:Lcom/baidu/bdgame/sdk/obf/cm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cm;->a(Lcom/baidu/bdgame/sdk/obf/cm;)Lcom/baidu/bdgame/sdk/obf/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->s()Lcom/baidu/bdgame/sdk/obf/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->e()Lcom/baidu/bdgame/sdk/obf/cr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->o()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_24

    .line 273
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm$1$1;->a:Lcom/baidu/bdgame/sdk/obf/cm$1;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/cm$1;->a:Lcom/baidu/bdgame/sdk/obf/cm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cm;->d(Lcom/baidu/bdgame/sdk/obf/cm;)Lcom/baidu/bdgame/sdk/obf/cq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cq;->c()V

    goto :goto_24

    .line 276
    :cond_6b
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm$1$1;->a:Lcom/baidu/bdgame/sdk/obf/cm$1;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/cm$1;->a:Lcom/baidu/bdgame/sdk/obf/cm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cm;->a(Lcom/baidu/bdgame/sdk/obf/cm;)Lcom/baidu/bdgame/sdk/obf/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->H()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 277
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cm$1$1;->a:Lcom/baidu/bdgame/sdk/obf/cm$1;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/cm$1;->a:Lcom/baidu/bdgame/sdk/obf/cm;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cm;->d(Lcom/baidu/bdgame/sdk/obf/cm;)Lcom/baidu/bdgame/sdk/obf/cq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cq;->d()V

    goto :goto_24
.end method
