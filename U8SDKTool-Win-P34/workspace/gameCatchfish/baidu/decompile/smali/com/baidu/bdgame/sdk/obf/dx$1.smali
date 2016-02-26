.class final Lcom/baidu/bdgame/sdk/obf/dx$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/dx;->a()V
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
        "Lcom/baidu/bdgame/sdk/obf/hf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/dx;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/dx;)V
    .registers 2

    .prologue
    .line 39
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dx$1;->a:Lcom/baidu/bdgame/sdk/obf/dx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/hf;)V
    .registers 6

    .prologue
    .line 44
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dx$1;->a:Lcom/baidu/bdgame/sdk/obf/dx;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dx;->a(Lcom/baidu/bdgame/sdk/obf/dx;)Lcom/baidu/bdgame/sdk/obf/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->O()V

    .line 45
    if-nez p1, :cond_2b

    .line 46
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dx$1;->a:Lcom/baidu/bdgame/sdk/obf/dx;

    invoke-static {v0, p3}, Lcom/baidu/bdgame/sdk/obf/dx;->a(Lcom/baidu/bdgame/sdk/obf/dx;Lcom/baidu/bdgame/sdk/obf/hf;)Lcom/baidu/bdgame/sdk/obf/hf;

    .line 47
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dx$1;->a:Lcom/baidu/bdgame/sdk/obf/dx;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dx$1;->a:Lcom/baidu/bdgame/sdk/obf/dx;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dx;->b(Lcom/baidu/bdgame/sdk/obf/dx;)Lcom/baidu/bdgame/sdk/obf/hf;

    move-result-object v0

    if-nez v0, :cond_20

    const-string v0, ""

    :goto_1c
    invoke-static {v1, p1, p2, v0}, Lcom/baidu/bdgame/sdk/obf/dx;->a(Lcom/baidu/bdgame/sdk/obf/dx;ILjava/lang/String;Ljava/lang/String;)V

    .line 58
    :goto_1f
    return-void

    .line 47
    :cond_20
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dx$1;->a:Lcom/baidu/bdgame/sdk/obf/dx;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dx;->b(Lcom/baidu/bdgame/sdk/obf/dx;)Lcom/baidu/bdgame/sdk/obf/hf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/hf;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 50
    :cond_2b
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/jh;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 51
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dx$1;->a:Lcom/baidu/bdgame/sdk/obf/dx;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dx$1;->a:Lcom/baidu/bdgame/sdk/obf/dx;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dx;->b(Lcom/baidu/bdgame/sdk/obf/dx;)Lcom/baidu/bdgame/sdk/obf/hf;

    move-result-object v0

    if-nez v0, :cond_41

    const-string v0, ""

    :goto_3d
    invoke-static {v1, p1, p2, v0}, Lcom/baidu/bdgame/sdk/obf/dx;->b(Lcom/baidu/bdgame/sdk/obf/dx;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    :cond_41
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dx$1;->a:Lcom/baidu/bdgame/sdk/obf/dx;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dx;->b(Lcom/baidu/bdgame/sdk/obf/dx;)Lcom/baidu/bdgame/sdk/obf/hf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/hf;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_3d

    .line 54
    :cond_4c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dx$1;->a:Lcom/baidu/bdgame/sdk/obf/dx;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dx;->a(Lcom/baidu/bdgame/sdk/obf/dx;)Lcom/baidu/bdgame/sdk/obf/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->c(Landroid/content/Context;)V

    goto :goto_1f
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 39
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/hf;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/dx$1;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/hf;)V

    return-void
.end method
