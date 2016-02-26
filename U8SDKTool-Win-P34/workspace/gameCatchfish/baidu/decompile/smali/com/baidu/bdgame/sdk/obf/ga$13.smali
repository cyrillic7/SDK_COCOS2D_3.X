.class final Lcom/baidu/bdgame/sdk/obf/ga$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ga;->m()V
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
        "Ljava/util/List",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/ij;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ga;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ga;)V
    .registers 2

    .prologue
    .line 183
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ga$13;->a:Lcom/baidu/bdgame/sdk/obf/ga;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 183
    check-cast p3, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ga$13;->a(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ij;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ga$13;->a:Lcom/baidu/bdgame/sdk/obf/ga;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ga;->g(Lcom/baidu/bdgame/sdk/obf/ga;)Lcom/baidu/bdgame/sdk/obf/gh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gh;->O()V

    .line 189
    if-nez p1, :cond_24

    .line 190
    if-eqz p3, :cond_1e

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1e

    .line 192
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ga$13;->a:Lcom/baidu/bdgame/sdk/obf/ga;

    invoke-static {v0, p3}, Lcom/baidu/bdgame/sdk/obf/ga;->a(Lcom/baidu/bdgame/sdk/obf/ga;Ljava/util/List;)Ljava/util/List;

    .line 193
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ga$13;->a:Lcom/baidu/bdgame/sdk/obf/ga;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ga;->h(Lcom/baidu/bdgame/sdk/obf/ga;)V

    .line 202
    :goto_1d
    return-void

    .line 196
    :cond_1e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ga$13;->a:Lcom/baidu/bdgame/sdk/obf/ga;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ga;->e(Lcom/baidu/bdgame/sdk/obf/ga;)V

    goto :goto_1d

    .line 199
    :cond_24
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ga$13;->a:Lcom/baidu/bdgame/sdk/obf/ga;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ga;->g(Lcom/baidu/bdgame/sdk/obf/ga;)Lcom/baidu/bdgame/sdk/obf/gh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gh;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->c(Landroid/content/Context;)V

    goto :goto_1d
.end method
