.class final Lcom/baidu/bdgame/sdk/obf/eb$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/eb;->k()V
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
        "Lcom/baidu/bdgame/sdk/obf/ib;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/eb;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/eb;)V
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/eb$1;->a:Lcom/baidu/bdgame/sdk/obf/eb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/ib;)V
    .registers 6

    .prologue
    .line 71
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eb$1;->a:Lcom/baidu/bdgame/sdk/obf/eb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/eb;->a(Lcom/baidu/bdgame/sdk/obf/eb;)Lcom/baidu/bdgame/sdk/obf/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eg;->O()V

    .line 72
    if-nez p1, :cond_26

    if-eqz p3, :cond_26

    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/ib;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 75
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eb$1;->a:Lcom/baidu/bdgame/sdk/obf/eb;

    invoke-static {v0, p3}, Lcom/baidu/bdgame/sdk/obf/eb;->a(Lcom/baidu/bdgame/sdk/obf/eb;Lcom/baidu/bdgame/sdk/obf/ib;)Lcom/baidu/bdgame/sdk/obf/ib;

    .line 76
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eb$1;->a:Lcom/baidu/bdgame/sdk/obf/eb;

    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/ib;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/eb;->a(Lcom/baidu/bdgame/sdk/obf/eb;Ljava/lang/String;)V

    .line 87
    :goto_25
    return-void

    .line 78
    :cond_26
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/jh;->a(I)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 79
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/eb$1;->a:Lcom/baidu/bdgame/sdk/obf/eb;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eb$1;->a:Lcom/baidu/bdgame/sdk/obf/eb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/eb;->b(Lcom/baidu/bdgame/sdk/obf/eb;)Lcom/baidu/bdgame/sdk/obf/ib;

    move-result-object v0

    if-nez v0, :cond_3c

    const-string v0, ""

    :goto_38
    invoke-static {v1, p1, p2, v0}, Lcom/baidu/bdgame/sdk/obf/eb;->a(Lcom/baidu/bdgame/sdk/obf/eb;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    :cond_3c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eb$1;->a:Lcom/baidu/bdgame/sdk/obf/eb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/eb;->b(Lcom/baidu/bdgame/sdk/obf/eb;)Lcom/baidu/bdgame/sdk/obf/ib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ib;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    .line 82
    :cond_47
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/eb$1;->a:Lcom/baidu/bdgame/sdk/obf/eb;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/eb;->a(Lcom/baidu/bdgame/sdk/obf/eb;)Lcom/baidu/bdgame/sdk/obf/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/eg;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->c(Landroid/content/Context;)V

    goto :goto_25
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 66
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/ib;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/eb$1;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/ib;)V

    return-void
.end method
