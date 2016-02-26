.class final Lcom/baidu/bdgame/sdk/obf/es$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/es;->n()V
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
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/es;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/es;)V
    .registers 2

    .prologue
    .line 187
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/es$3;->a:Lcom/baidu/bdgame/sdk/obf/es;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/hf;)V
    .registers 6

    .prologue
    .line 192
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es$3;->a:Lcom/baidu/bdgame/sdk/obf/es;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/es;->a(Lcom/baidu/bdgame/sdk/obf/es;)Lcom/baidu/bdgame/sdk/obf/ey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ey;->O()V

    .line 193
    if-nez p1, :cond_2b

    .line 194
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es$3;->a:Lcom/baidu/bdgame/sdk/obf/es;

    invoke-static {v0, p3}, Lcom/baidu/bdgame/sdk/obf/es;->a(Lcom/baidu/bdgame/sdk/obf/es;Lcom/baidu/bdgame/sdk/obf/hf;)Lcom/baidu/bdgame/sdk/obf/hf;

    .line 195
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/es$3;->a:Lcom/baidu/bdgame/sdk/obf/es;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es$3;->a:Lcom/baidu/bdgame/sdk/obf/es;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/es;->i(Lcom/baidu/bdgame/sdk/obf/es;)Lcom/baidu/bdgame/sdk/obf/hf;

    move-result-object v0

    if-nez v0, :cond_20

    const-string v0, ""

    :goto_1c
    invoke-static {v1, p1, p2, v0}, Lcom/baidu/bdgame/sdk/obf/es;->a(Lcom/baidu/bdgame/sdk/obf/es;ILjava/lang/String;Ljava/lang/String;)V

    .line 206
    :goto_1f
    return-void

    .line 195
    :cond_20
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es$3;->a:Lcom/baidu/bdgame/sdk/obf/es;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/es;->i(Lcom/baidu/bdgame/sdk/obf/es;)Lcom/baidu/bdgame/sdk/obf/hf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/hf;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 198
    :cond_2b
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/jh;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 199
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/es$3;->a:Lcom/baidu/bdgame/sdk/obf/es;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es$3;->a:Lcom/baidu/bdgame/sdk/obf/es;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/es;->i(Lcom/baidu/bdgame/sdk/obf/es;)Lcom/baidu/bdgame/sdk/obf/hf;

    move-result-object v0

    if-nez v0, :cond_41

    const-string v0, ""

    :goto_3d
    invoke-static {v1, p1, p2, v0}, Lcom/baidu/bdgame/sdk/obf/es;->b(Lcom/baidu/bdgame/sdk/obf/es;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    :cond_41
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es$3;->a:Lcom/baidu/bdgame/sdk/obf/es;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/es;->i(Lcom/baidu/bdgame/sdk/obf/es;)Lcom/baidu/bdgame/sdk/obf/hf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/hf;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_3d

    .line 202
    :cond_4c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/es$3;->a:Lcom/baidu/bdgame/sdk/obf/es;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/es;->a(Lcom/baidu/bdgame/sdk/obf/es;)Lcom/baidu/bdgame/sdk/obf/ey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ey;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->c(Landroid/content/Context;)V

    goto :goto_1f
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 187
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/hf;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/es$3;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/hf;)V

    return-void
.end method
