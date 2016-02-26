.class final Lcom/baidu/bdgame/sdk/obf/fe$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/fe;->a(Lcom/baidu/bdgame/sdk/obf/dm;Ljava/lang/String;Ljava/lang/String;J)V
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
        "Lcom/baidu/bdgame/sdk/obf/il;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/fe;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/fe;)V
    .registers 2

    .prologue
    .line 87
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fe$2;->a:Lcom/baidu/bdgame/sdk/obf/fe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/il;)V
    .registers 6

    .prologue
    .line 92
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fe$2;->a:Lcom/baidu/bdgame/sdk/obf/fe;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fe;->a(Lcom/baidu/bdgame/sdk/obf/fe;)Lcom/baidu/bdgame/sdk/obf/fg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fg;->O()V

    .line 93
    if-nez p1, :cond_2b

    .line 94
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fe$2;->a:Lcom/baidu/bdgame/sdk/obf/fe;

    invoke-static {v0, p3}, Lcom/baidu/bdgame/sdk/obf/fe;->a(Lcom/baidu/bdgame/sdk/obf/fe;Lcom/baidu/bdgame/sdk/obf/il;)Lcom/baidu/bdgame/sdk/obf/il;

    .line 95
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fe$2;->a:Lcom/baidu/bdgame/sdk/obf/fe;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fe$2;->a:Lcom/baidu/bdgame/sdk/obf/fe;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fe;->b(Lcom/baidu/bdgame/sdk/obf/fe;)Lcom/baidu/bdgame/sdk/obf/il;

    move-result-object v0

    if-nez v0, :cond_20

    const-string v0, ""

    :goto_1c
    invoke-static {v1, p1, p2, v0}, Lcom/baidu/bdgame/sdk/obf/fe;->a(Lcom/baidu/bdgame/sdk/obf/fe;ILjava/lang/String;Ljava/lang/String;)V

    .line 105
    :goto_1f
    return-void

    .line 95
    :cond_20
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fe$2;->a:Lcom/baidu/bdgame/sdk/obf/fe;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fe;->b(Lcom/baidu/bdgame/sdk/obf/fe;)Lcom/baidu/bdgame/sdk/obf/il;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/il;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 97
    :cond_2b
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/jh;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 98
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fe$2;->a:Lcom/baidu/bdgame/sdk/obf/fe;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fe$2;->a:Lcom/baidu/bdgame/sdk/obf/fe;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fe;->b(Lcom/baidu/bdgame/sdk/obf/fe;)Lcom/baidu/bdgame/sdk/obf/il;

    move-result-object v0

    if-nez v0, :cond_41

    const-string v0, ""

    :goto_3d
    invoke-static {v1, p1, p2, v0}, Lcom/baidu/bdgame/sdk/obf/fe;->b(Lcom/baidu/bdgame/sdk/obf/fe;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    :cond_41
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fe$2;->a:Lcom/baidu/bdgame/sdk/obf/fe;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fe;->b(Lcom/baidu/bdgame/sdk/obf/fe;)Lcom/baidu/bdgame/sdk/obf/il;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/il;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_3d

    .line 100
    :cond_4c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fe$2;->a:Lcom/baidu/bdgame/sdk/obf/fe;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fe;->a(Lcom/baidu/bdgame/sdk/obf/fe;)Lcom/baidu/bdgame/sdk/obf/fg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/fg;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->c(Landroid/content/Context;)V

    goto :goto_1f
.end method

.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 87
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/il;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/fe$2;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/il;)V

    return-void
.end method
