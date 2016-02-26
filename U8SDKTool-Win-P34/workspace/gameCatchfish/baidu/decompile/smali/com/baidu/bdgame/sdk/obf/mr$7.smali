.class final Lcom/baidu/bdgame/sdk/obf/mr$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/mr;->c(I)V
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
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/mr;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/mr;)V
    .registers 2

    .prologue
    .line 246
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/mr$7;->a:Lcom/baidu/bdgame/sdk/obf/mr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 250
    if-nez p1, :cond_46

    instance-of v0, p3, Lcom/baidu/bdgame/sdk/obf/ag;

    if-eqz v0, :cond_46

    .line 251
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/ag;

    .line 254
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mr$7;->a:Lcom/baidu/bdgame/sdk/obf/mr;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mr;->c(Lcom/baidu/bdgame/sdk/obf/mr;)Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bs;->a(I)Lcom/baidu/bdgame/sdk/obf/bs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bs;)V

    .line 256
    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/ag;->d()Lcom/baidu/bdgame/sdk/obf/ah;

    move-result-object v0

    if-nez v0, :cond_30

    .line 257
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mr$7;->a:Lcom/baidu/bdgame/sdk/obf/mr;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mr;->a(Lcom/baidu/bdgame/sdk/obf/mr;)V

    .line 268
    :goto_26
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mr$7;->a:Lcom/baidu/bdgame/sdk/obf/mr;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mr;->b(Lcom/baidu/bdgame/sdk/obf/mr;)Lcom/baidu/bdgame/sdk/obf/ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ms;->m()V

    .line 269
    return-void

    .line 259
    :cond_30
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mr$7;->a:Lcom/baidu/bdgame/sdk/obf/mr;

    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/ag;->d()Lcom/baidu/bdgame/sdk/obf/ah;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ah;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/ag;->d()Lcom/baidu/bdgame/sdk/obf/ah;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/ah;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/mr;->a(Lcom/baidu/bdgame/sdk/obf/mr;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 262
    :cond_46
    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_5d

    .line 264
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mr$7;->a:Lcom/baidu/bdgame/sdk/obf/mr;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mr;->c(Lcom/baidu/bdgame/sdk/obf/mr;)Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bs;->a(I)Lcom/baidu/bdgame/sdk/obf/bs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bs;)V

    .line 266
    :cond_5d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mr$7;->a:Lcom/baidu/bdgame/sdk/obf/mr;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mr;->c(Lcom/baidu/bdgame/sdk/obf/mr;)Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_26
.end method
