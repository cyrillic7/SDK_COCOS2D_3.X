.class final Lcom/baidu/bdgame/sdk/obf/ga$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ga;->d(Lcom/baidu/bdgame/sdk/obf/ij;)V
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
        "Lcom/baidu/bdgame/sdk/obf/ig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ij;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/ga;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ga;Lcom/baidu/bdgame/sdk/obf/ij;)V
    .registers 3

    .prologue
    .line 473
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ga$9;->b:Lcom/baidu/bdgame/sdk/obf/ga;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ga$9;->a:Lcom/baidu/bdgame/sdk/obf/ij;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/ig;)V
    .registers 7

    .prologue
    .line 478
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ga$9;->b:Lcom/baidu/bdgame/sdk/obf/ga;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ga;->g(Lcom/baidu/bdgame/sdk/obf/ga;)Lcom/baidu/bdgame/sdk/obf/gh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gh;->O()V

    .line 479
    if-nez p1, :cond_54

    .line 480
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ga$9;->b:Lcom/baidu/bdgame/sdk/obf/ga;

    invoke-static {v0, p3}, Lcom/baidu/bdgame/sdk/obf/ga;->a(Lcom/baidu/bdgame/sdk/obf/ga;Lcom/baidu/bdgame/sdk/obf/ig;)Lcom/baidu/bdgame/sdk/obf/ig;

    .line 481
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ga$b;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ga$9;->b:Lcom/baidu/bdgame/sdk/obf/ga;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ga$b;-><init>(Lcom/baidu/bdgame/sdk/obf/ga;Lcom/baidu/bdgame/sdk/obf/ga$1;)V

    .line 482
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ga$9;->a:Lcom/baidu/bdgame/sdk/obf/ij;

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ga$b;->a:Lcom/baidu/bdgame/sdk/obf/ij;

    .line 483
    iput-object p3, v0, Lcom/baidu/bdgame/sdk/obf/ga$b;->b:Lcom/baidu/bdgame/sdk/obf/ig;

    .line 484
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ga$9;->b:Lcom/baidu/bdgame/sdk/obf/ga;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ga;->n(Lcom/baidu/bdgame/sdk/obf/ga;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/ig;->a()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 488
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ga$9;->b:Lcom/baidu/bdgame/sdk/obf/ga;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ga;->o(Lcom/baidu/bdgame/sdk/obf/ga;)Lcom/baidu/bdgame/sdk/obf/gb;

    move-result-object v1

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ga$b;->b:Lcom/baidu/bdgame/sdk/obf/ig;

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/gb;->a(Lcom/baidu/bdgame/sdk/obf/ig;)V

    .line 502
    :goto_38
    return-void

    .line 490
    :cond_39
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ga$9;->b:Lcom/baidu/bdgame/sdk/obf/ga;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ga$9;->b:Lcom/baidu/bdgame/sdk/obf/ga;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ga;->m(Lcom/baidu/bdgame/sdk/obf/ga;)Lcom/baidu/bdgame/sdk/obf/ig;

    move-result-object v0

    if-nez v0, :cond_49

    const-string v0, ""

    :goto_45
    invoke-static {v1, p1, p2, v0}, Lcom/baidu/bdgame/sdk/obf/ga;->c(Lcom/baidu/bdgame/sdk/obf/ga;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    :cond_49
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ga$9;->b:Lcom/baidu/bdgame/sdk/obf/ga;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ga;->m(Lcom/baidu/bdgame/sdk/obf/ga;)Lcom/baidu/bdgame/sdk/obf/ig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ig;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_45

    .line 494
    :cond_54
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/jh;->a(I)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 495
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ga$9;->b:Lcom/baidu/bdgame/sdk/obf/ga;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ga$9;->b:Lcom/baidu/bdgame/sdk/obf/ga;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ga;->m(Lcom/baidu/bdgame/sdk/obf/ga;)Lcom/baidu/bdgame/sdk/obf/ig;

    move-result-object v0

    if-nez v0, :cond_6a

    const-string v0, ""

    :goto_66
    invoke-static {v1, p1, p2, v0}, Lcom/baidu/bdgame/sdk/obf/ga;->d(Lcom/baidu/bdgame/sdk/obf/ga;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    :cond_6a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ga$9;->b:Lcom/baidu/bdgame/sdk/obf/ga;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ga;->m(Lcom/baidu/bdgame/sdk/obf/ga;)Lcom/baidu/bdgame/sdk/obf/ig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ig;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_66

    .line 498
    :cond_75
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ga$9;->b:Lcom/baidu/bdgame/sdk/obf/ga;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ga;->g(Lcom/baidu/bdgame/sdk/obf/ga;)Lcom/baidu/bdgame/sdk/obf/gh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gh;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->c(Landroid/content/Context;)V

    goto :goto_38
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 473
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/ig;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ga$9;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/ig;)V

    return-void
.end method
